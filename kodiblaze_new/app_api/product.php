<?php

    require_once 'lib/core.php';
    $request  = json_decode(file_get_contents('php://input'),true);
    if(isset($request['fetchProducts']))
    {
        $offset=$conn->real_escape_string($request["offset"]);
        $limit=$conn->real_escape_string($request["limit"]);
        $response=[];
        $response['msg']="failed";
        $sql="SELECT p.*,pi.image as image FROM product p , productimages pi where pi.p_id=p.id group By pi.p_id  limit $offset,$limit";
        if($result = $conn->query($sql))
        {
            if($result->num_rows)
            {
                while($row = $result->fetch_assoc())
                {
                    $response['data']['products'][]=$row;
                }
                $response['status']=true;
                $response['message']="ok";
            }
            else{
                $response['status']=false; 
                $response['message']="No Product Available";
            }
        }
        else
        {
            $error =  $conn->error;
            $response['status']=false; 
            $response['message']=$error;
        }
    }    


    if(isset($request['fetchProduct'])&&isset($request['productSlug']))
    {
        $response=[];
        $productSlug=$conn->real_escape_string($request["productSlug"]);
         
         
        $response['msg']="failed";
        $sql="SELECT p.*,u.name,u.profilePic FROM product p,users u where productSlug='$productSlug'  and u.id=p.userId ";

        if($result = $conn->query($sql))
        {
            if($result->num_rows)
            {
                $row = $result->fetch_assoc() ;
                $pId = $row['id'];
                $response['data']['product']=$row;
                $sql = "SELECT * FROM productimages pi where p_id=$pId";
                if($imageResult = $conn->query($sql))
                {
                    
                    if($imageResult->num_rows)
                    {
                        
                        while($rowImage = $imageResult->fetch_assoc())
                        {
                            
                            $response['data']['product']['images'][]=$rowImage;
                        }
                    }else
                    {
                        $response['message']="no image";
                        $response['message']=$sql;
                    }
                }else
                {
                    $response['message']=$sql;
                }
                 
                // $response['message']="ok"; 
                $response['status'] = true; 
            }
            else{
                $response['status'] = false;
                $response['message']="No Blog Available";
            }
        }
        else
        {
            $response['status'] = false;
            $response['message']=$conn->error;
        }
    }

    if(isset($_POST['addProduct']))
    {
       
        $response = [];
        $title = $_POST['title'];
        $description = $_POST['description'];
        $code = $_POST['code'];
        $inStock = $_POST['inStock'];
        $productSKU = $_POST['productSKU'];
        $gender = $_POST['gender'];
        $category = $_POST['category'];
        $regularPrice = $_POST['regularPrice'];
        $salePrice = $_POST['salePrice'];
        $tags = $_POST['tags'];
        $includeTaxes = $_POST['includeTaxes'];
        $userId = $_POST['userId'];
         
            $sql = "INSERT INTO product(title,description,code, inStock, productSKU, gender, category, regularPrice, salePrice, tags, includeTaxes,userId) values('$title','$description','$code','$inStock', '$productSKU', '$gender', '$category', '$regularPrice', '$salePrice','$tags', '$includeTaxes','$userId')";
            if($conn->query($sql))
            {
                $insertId = $conn->insert_id;
               $status = upload_imagesInsert($conn,"productImages","image,p_id",$insertId,"images");
               if($status)
               {
                $response['message']="ok"; 
               }else
               {
                $response['message']="Failed To Add Images"; 
               }

             
               $sapce_removed_title =  str_replace(' ', '-', $title);
               $special_char_removed_title =  preg_replace('/[^A-Za-z0-9\-]/', '', $sapce_removed_title);
               $productSlug = $insertId.$special_char_removed_title;
               $sql = "update product set productSlug = '$productSlug' where id = $insertId";
               
               if($conn->query($sql))
               {
                   $response['message'] = "ok";
               }else
               {
                   $response['message'] ="product slug not updated reason: ".$conn->error;
               }
                
                $response['status'] = true; 
            }
            else
            {
                $response['message']=$conn->error;
                $response['status'] = false;  
            }
         
    }

    if(isset($_POST['editBlog']))
    {
        $response = [];
        $title = $_POST['title'];
        $description = $_POST['description'];
        $code = $_POST['code'];
        $inStock = $_POST['inStock'];
        $productSKU = $_POST['productSKU'];
        $gender = $_POST['gender'];
        $category = $_POST['category'];
        $id = $_POST['id'];
        $regularPrice = $_POST['regularPrice'];
        $salePrice = $_POST['salePrice'];
        $tags = $_POST['tags'];
        $includeTaxes = $_POST['includeTaxes'];
        $image =  uploadImage($_FILES,"cover");
        
        if(isset($_POST['editImageMode']))
        {
            $image =  uploadImage($_FILES,"cover");
            if($image!='err')
            {
                $sql = "UPDATE product set title='$title',description='$description',code='$code', inStock='$inStock', productSKU=$productSKU', image = 'uploads/$image', gender='$gender', category='$category', regularPrice='$regularPrice', salePrice='$salePrice', tags='$tags', includeTaxes='$includeTaxes' where id=$id";
            }
            else
            {
                $response['imageErr'] = "yes";
            }
        }
        else
        {
            $sql = "UPDATE product set title='$title',description='$description',code='$code', inStock='$inStock', productSKU=$productSKU', gender='$gender', category='$category', regularPrice='$regularPrice', salePrice='$salePrice', tags='$tags', includeTaxes='$includeTaxes' where id=$id";
        }
    }

    
    echo json_encode($response);
?>