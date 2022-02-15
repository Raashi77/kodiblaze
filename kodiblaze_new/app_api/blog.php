<?php

    require_once 'lib/core.php';

    $request  = json_decode(file_get_contents('php://input'),true);
    if(isset($request['fetchBlogs']))
    {
        $response=[];
        $offset=$conn->real_escape_string($request["offset"]);
        $limit=$conn->real_escape_string($request["limit"]);
        $isAuthorUser=$conn->real_escape_string($request["isAuthorUser"]);
         
        $response['msg']="failed";
        $sql="SELECT * FROM blogs_new,users where isAuthorUser=$isAuthorUser and users.id=blogs_new.userId limit $offset,$limit";

        if($result = $conn->query($sql))
        {
            if($result->num_rows)
            {
                while($row = $result->fetch_assoc())
                {
                    $response['data']['results'][]=$row;
                }
                $sql = "Select count(id) as blogCount from blogs_new where isAuthorUser=$isAuthorUser";
                if($res = $conn->query($sql))
                {
                        if($res->num_rows)
                        {
                            $row = $res->fetch_assoc();
                            $response['data']['maxLength']=$row['blogCount']; 
                        }
                        $response['message']="ok";
                }else
                {
                    $response['message']=$conn->error;
                }
                $response['status'] = true;
                
            }
            else{
                $response['status'] = false;
                $response['message']="No Blog Available";
                $response['sql'] =$sql;
            }
        }
        else
        {
            $response['status'] = false;
            $response['message']=$conn->error;
        }
    }
    
    if(isset($request['fetchBlog'])&&isset($request['blogSlug']))
    {
        $response=[];
        $blogSlug=$conn->real_escape_string($request["blogSlug"]);
         
         
        $response['msg']="failed";
        $sql="SELECT * FROM blogs_new,users where blog_slug='$blogSlug'  and users.id=blogs_new.userId ";

        if($result = $conn->query($sql))
        {
            if($result->num_rows)
            {
                 $row = $result->fetch_assoc() ;
                $response['data']['post']=$row;
                
                $response['message']="ok"; 
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
   
    if(isset($_POST['addBlog']))
    {
        
        $response = [];
        $title = $_POST['title'];
        $description = $_POST['description'];
        $content = $_POST['content'];
        $publish = $_POST['publish'];
        $metaTitle = $_POST['metaTitle'];
        $metaDescription = $_POST['metaDescription'];
        $tags = $_POST['tags'];
        $image =  uploadImage($_FILES,"cover");
        $isAuthorUser = $_POST['isAuthorUser'];
        $categoryId = $_POST['categoryId'];
        $userId = $_POST['userId'];
        
        if($image!='err')
        {
            $sql = "INSERT INTO blogs_new(title,description,content,image, publish, metaTitle, metaDescription, tags,isAuthorUser,categoryId,userId) values('$title','$description','$content','$image','$publish', '$metaTitle', '$metaDescription', '$tags',$isAuthorUser,'$categoryId','$userId')";
            if($conn->query($sql))
            {
                $insertId = $conn->insert_id;
                $sapce_removed_title =  str_replace(' ', '-', $title);
                $special_char_removed_title =  preg_replace('/[^A-Za-z0-9\-]/', '', $sapce_removed_title);
                $blog_slug = $insertId.$special_char_removed_title;
                $sql = "update blogs_new set blog_slug = '$blog_slug' where id = $insertId";
                
                if($conn->query($sql))
                {
                    $response['message'] = "ok";
                }else
                {
                    $response['message'] ="blog slug not updated reason: ".$conn->error;
                }
                
                $response['status'] = true;
            }
            else
            {
                $response['status'] = false;
                $response['message'] = $conn->error;
            }
        }
        else
        {
            $response['status'] = false;
            $response['message'] = "Error while uploading cover Image";
          
        }
    }

    if(isset($request['editBlog']))
    {
        $response = [];
        $title = $request['title'];
        $description = $request['description'];
        $content = $request['content'];
        $publish = $request['publish'];
        $metaTitle = $request['metaTitle'];
        $metaDescription = $request['metaDescription'];
        $tags = $request['tags'];
        $id = $request['id'];
        
        
        if(isset($request['editImageMode']))
        {
            $image =  uploadImage($_FILES,"cover");
            if($image!='err')
            {
                $sql = "UPDATE blogs set title='$title',description='$description',content='$content', publish='$publish', metaTitle=$metaTitle', image = 'uploads/$image', metaDescription='$metaDescription', tags='$tags' where id=$id";
            }
            else
            {
                $response['imageErr'] = "yes";
            }
        }
        else
        {
            $sql = "UPDATE blogs set title='$title',description='$description',content='$content', publish='$publish', metaTitle=$metaTitle', metaDescription='$metaDescription', tags='$tags' where id=$id";
        }
        
    }

    if(isset($request['delete']))
    {
        $id = $request['delete'];
         $sql = "DELETE FROM `blog` WHERE id = '$id'";
         if($conn->query($sql))
         { 
            $response["success"] = true;
            $response["message"] = "Blog has been deleted for user"; 

         }
         else
         {
            $response["success"] = false;
            $response["message"] = "Unable to delete"; 
                   
         }
             
    }

    echo json_encode($response);
?>