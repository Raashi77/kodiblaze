<?php
session_start();
require_once 'config.php';



 function closetags($html) {
    preg_match_all('#<(?!meta|img|br|hr|input\b)\b([a-z]+)(?: .*)?(?<![/|/ ])>#iU', $html, $result);
    $openedtags = $result[1];
    preg_match_all('#</([a-z]+)>#iU', $html, $result);
    $closedtags = $result[1];
    $len_opened = count($openedtags);
    if (count($closedtags) == $len_opened) {
        return $html;
    }
    $openedtags = array_reverse($openedtags);
    for ($i=0; $i < $len_opened; $i++) {
        if (!in_array($openedtags[$i], $closedtags)) {
            $html .= '</'.$openedtags[$i].'>';
        } else {
            unset($closedtags[array_search($openedtags[$i], $closedtags)]);
        }
    }
    return $html;
} 


function imageProvider($imageMode,$endPoint,$baseUrl,$IMAGE_MODE_SERVER,$IMAGE_MODE_CDN)
{
    switch($imageMode)
    {
        case $IMAGE_MODE_CDN:
            return $endPoint;
        case $IMAGE_MODE_SERVER:
            return $baseUrl.$endPoint;
    }
}



//login admin
function login($email,$password,$conn)
{
    $sql="select id from staff where email='$email' and password='$password'";
    $res=$conn->query($sql);
    if($res->num_rows>0)
    {
        // echo "admin done";
        $row=$res->fetch_assoc();
        $id=$row['id'];
        header("location: dashboard.php");
        $_SESSION['admin_signed_in']=$email;
        $_SESSION['id']=$id;
    }
    else
    {
        // echo "admin not done";
        return false;
    }
}

//login employee
function login_employee($email,$password,$conn)
{
    $sql="select id from admin where email='$email' and password='$password' and status= 1";
    $res=$conn->query($sql);
    if($res->num_rows>0)
    {
        $row=$res->fetch_assoc();
        $id=$row['id'];
        $eid=$row['e_id'];
        header("location: ../employee/projects.php");
        $_SESSION['employee_signed_in']=$email;
        $_SESSION['id']=$id;
        $_SESSION['e_id']=$eid;
    }
    else
    {
        return false;
    }
}

//admin_auth
function admin_auth()
{
    if(isset($_SESSION['admin_signed_in']))
    {
        return true;
    }
    else
    {
        return false;
    }
}

//employee_auth
function employee_auth()
{
    if(isset($_SESSION['employee_signed_in']))
    {
        return true;
    }
    else
    {
        return false;
    }
}

//admin_in password change
function password_change($newPass,$curPass,$conn)
{
    $email=$_SESSION['admin_signed_in'];
    $sql="select password from users where email='$email' and password='$curPass'";
    $res=$conn->query($sql);
    if($res->num_rows>0)
    {
        $sql="update users set password='$newPass' where email='$email'";
        if($conn->query($sql))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    else
    {
        return false;
    }
}


//single image upload
function uploadImage($files,$image)

{

     $uploadedFile = 'err';
     
    if(!empty($_FILES[$image]["type"]))

    {
        
    
        $fileName = time().'_'.$_FILES[$image]['name'];
        
        $valid_extensions = array("jpeg", "jpg", "png","pdf","bmp","JPG");

        $temporary = explode(".", $_FILES[$image]["name"]);

        $file_extension = end($temporary);
         
        if((($_FILES[$image]["type"] == "image/png") || ($_FILES[$image]["type"] == "application/pdf") || ($_FILES[$image]["type"] == "image/bmp") || ($_FILES[$image]["type"] == "image/jpg") || ($_FILES[$image]["type"] == "image/JPG") || ($_FILES[$image]["type"] == "image/jpeg")) && in_array($file_extension, $valid_extensions))

        {
            
            $sourcePath = $_FILES[$image]['tmp_name'];

            $targetPath = "./uploads/images/".$fileName;
                 
            if(move_uploaded_file($sourcePath,$targetPath))

            {

                
                $uploadedFile = $fileName;

                 return "uploads/images/".$fileName;

            }

            else

            {

                $uploadedFile="err";

               

                 return $uploadedFile;

            }

        }

        else

        {

            $uploadedFile="err";

            return $uploadedFile;

        }

       

    }

    else

    {

            $uploadedFile="err";

            return $uploadedFile;

    }

}

function upload_imageUpdate($conn,$table,$column,$id_columnka_naam,$id,$image)
{
    $uploadedFile = 'err';
    // print_r($_FILES);
    if(!empty($_FILES[$image]["type"]))
    {
        $fileName = time().'_'.str_replace(' ', '',$_FILES[$image]['name']);
        $valid_extensions = array("jpeg", "jpg", "png","bmp","JPG");
        $temporary = explode(".", $_FILES[$image]["name"]);
         $file_extension = end($temporary);
        
        if((($_FILES[$image]["type"] == "image/png") || ($_FILES[$image]["type"] == "image/bmp") || ($_FILES[$image]["type"] == "image/jpg") || ($_FILES[$image]["type"] == "image/JPG") || ($_FILES[$image]["type"] == "image/jpeg")) && in_array($file_extension, $valid_extensions))
        {
            $sourcePath = $_FILES[$image]['tmp_name'];
            $targetPath = "uploads/".$fileName;
            if(move_uploaded_file($sourcePath,$targetPath))
            {
                $uploadedFile = $fileName;   
                if(isset($table))
                {
                    print_r($_SERVER);
                    $_SERVER['PHP_SELF'];
                   $sql="update $table set $column='$targetPath' where $id_columnka_naam=$id";
                    if($conn->query($sql)==true)
                    {
                        return $uploadedFile;
                    }
                    else
                    {
                        echo $fileName;
                        unlink("uploads/".$fileName);
                        return 'err';
                    }
                }
                return $uploadedFile;
            }
            else
            {
                $uploadedFile="err";
                 return $uploadedFile;
            }
        }
        else
        { 
            $uploadedFile="err";
            return $uploadedFile;
        }
       
    }
    else
    {
            $uploadedFile="err";
            return $uploadedFile;
    }
}

//upload pdf
function uploadPdf($files,$id)
{
    $uploadedFile = 'err';

    if(!empty($_FILES['file']["type"]))

    {
        
        $fileName = time()."_"."syllabus".$id.".pdf";
        
        $valid_extensions = array("pdf");

        $temporary = explode(".", $_FILES['file']["name"]);

        $file_extension = end($temporary);

        if((($_FILES['file']["type"] == "image/png") || ($_FILES['file']["type"] == "application/pdf") || ($_FILES['file']["type"] == "image/bmp") || ($_FILES['file']["type"] == "image/jpg") || ($_FILES['file']["type"] == "image/JPG") || ($_FILES['file']["type"] == "image/jpeg")) && in_array($file_extension, $valid_extensions))

        {
            
            $sourcePath = $_FILES['file']['tmp_name'];

            $targetPath = "./uploads/syllabus/".$fileName;
            if(move_uploaded_file($sourcePath,$targetPath))

            {

                $uploadedFile = $fileName;

                 return $uploadedFile;

            }

            else

            { 
                 return $uploadedFile; 
            }

        }

        else
        {

            return $uploadedFile;

        }

       

    }
    else

    {  
            return $uploadedFile; 
    }

}

// //upload
// function upload_imagesInsert($conn,$table,$column,$images)
// {
//     // print_r($_FILES);
// 	if(isset($_FILES[$images]))
//     {
//         // print_r("inside");
//         $extension=array("jpeg","jpg","png","gif","pdf","PDF","JPG");
//         // print_r($_FILES[$images]);
//         foreach($_FILES[$images]["tmp_name"] as $key=>$tmp_name) 
//         {
//             // print_r("inside");
//             $file_name=$_FILES[$images]["name"][$key];
//             $file_tmp=$_FILES[$images]["tmp_name"][$key];
//             $ext=pathinfo($file_name,PATHINFO_EXTENSION); 
//             if(in_array(strtolower($ext),$extension)) 
//              {   
//                 $filename=basename($file_name,$ext);
//                 $fileWithoutSpace = str_replace(' ', '', $filename);
//                 $newFileName=$fileWithoutSpace.time().".".$ext;
//                 $targetPath = "uploads/".$newFileName;
//                 if(move_uploaded_file($_FILES[$images]["tmp_name"][$key],$targetPath))
//                 {
//                     // print_r("moved");
//                     $sql="insert into $table($column) values('$targetPath')";
//                     if($conn->query($sql)==true)
//                     {
//                         $status=true;
//                     }
//                     else
//                     {
//                         $status=false;
//                         break;
//                     }
//                 }
//                 else
        
//                 {
//                     $status=false;
//                     break;
//                 }
//             }
//             else 
//             {
//                 array_push($error,"$file_name, ");
//             }
//         }
//         if($status){
//             return $targetPath;
//         }
//         return $status;
//     }
// }

//app notification
function sendAppNotification($expoId, $cName, $message, $title="DUBUDDY",$data)
{
    // try{
    //     $channelName = $cName;
    //     $recipient= $expoId;
            
    //     // You can quickly bootup an expo instance
    //     $expo = \ExponentPhpSDK\Expo::normalSetup();
            
    //     // Subscribe the recipient to the server
    //     $expo->subscribe($channelName, $recipient);
            
    //     // Build the notification data
    //     $notification = ['title' => $title,'body' => $message];
            
    //     // Notify an interest with a notification
    //     $expo->notify([$channelName], $notification);
    //     $response="Success";
    // }catch(Exception $e){
    //     $response=$e->getTrace();
    // }

   

    $payload = array(
        'to' => $expoId,
        'sound' => 'default', 
        'body' => $message,
        'title'=>$title,
        'data' => $data,
    );

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://exp.host/--/api/v2/push/send",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => json_encode($payload),
  CURLOPT_HTTPHEADER => array(
    "Accept: application/json",
    "Accept-Encoding: gzip, deflate",
    "Content-Type: application/json",
    "cache-control: no-cache",
    "host: exp.host"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

// if ($err) {
// //   echo "cURL Error #:" . $err;
//   return($err);
// } else {
//     return($response);
// }

    return "Success";
}




//upload
function upload_imagesInsert($conn,$table,$columnNames,$id,$images)
{
     
	if(isset($_FILES[$images]))
    {
      
        $extension=array("jpeg","jpg","png","gif","pdf","PDF","JPG");
      
        foreach($_FILES[$images]["tmp_name"] as $key=>$tmp_name) 
        {
             
            $file_name=$_FILES[$images]["name"][$key];
            $file_tmp=$_FILES[$images]["tmp_name"][$key];
            $ext=pathinfo($file_name,PATHINFO_EXTENSION); 
            if(in_array(strtolower($ext),$extension)) 
             {   
                $filename=basename($file_name,$ext);
                $fileWithoutSpace = str_replace(' ', '', $filename);
                $newFileName=$fileWithoutSpace.time().".".$ext;
                $targetPath = "./uploads/images/".$newFileName;
                if(move_uploaded_file($_FILES[$images]["tmp_name"][$key],$targetPath))
                {
                    
                    $sql="insert into $table($columnNames) values('uploads/images/$newFileName',$id)";
                    if($conn->query($sql)==true)
                    {
                        $status=true;
                    }
                    else
                    {
                        $status=false;
                        break;
                    }
                }
                else
        
                {
                    $status=false;
                    break;
                }
            }
            else 
            {
                array_push($error,"$file_name, ");
            }
        }
        if($status){
            return $targetPath;
        }
        return $status;
    }
}
function upload_documentInsert($conn,$table,$column,$images)
{
    // print_r($_FILES);
	if(isset($_FILES[$images]))
    {
        $status = array(
            "success" => false,
            "message" => "",
            "path" => ""
            );
        // print_r("inside");
        $extension=array("pdf","word","doc","docx","txt","PDF");
        // print_r($_FILES[$images]);
        foreach($_FILES[$images]["tmp_name"] as $key=>$tmp_name) 
        {
            // print_r("inside");
            $file_name=$_FILES[$images]["name"][$key];
            $file_tmp=$_FILES[$images]["tmp_name"][$key];
            $ext=pathinfo($file_name,PATHINFO_EXTENSION); 
            if(in_array(strtolower($ext),$extension)) 
             {   
                $filename=basename($file_name,$ext);
                $fileWithoutSpace = $conn->real_escape_string($filename);
                $fileWithoutSpace = str_replace(' ', '', $fileWithoutSpace);
                $fileWithoutSpace = str_replace("'", '', $fileWithoutSpace);
               
                $newFileName=$fileWithoutSpace.time().".".$ext;
                $targetPath = "documents/".$newFileName;
                if(move_uploaded_file($_FILES[$images]["tmp_name"][$key],$targetPath))
                {
                    // print_r("moved");
                  $sql="insert into $table($column) values('$targetPath')";
                    if($conn->query($sql)==true)
                    {
                        $status['success']=true;
                        $status['path'] = $targetPath;
                        $status['message'] = $conn->insert_id;
                    }
                    else
                    {
                        $status['success']=false;
                        break;
                    }
                }
                else
        
                {
                    $status['success']=false;
                    break;
                }
            }
            else 
            {
                array_push($error,"$file_name, ");
            }
        }
        return $status;
    }
}

//velidation for input type
function test_input($data) 
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>