<?php
    
    require_once './lib/core.php';

    $request  = json_decode(file_get_contents('php://input'),true);
    if(isset($request["email"])&&isset($request["password"]))
    {
        
        $email=$conn->real_escape_string($request["email"]);
        $password=md5($conn->real_escape_string($request["password"]));
        $sql="SELECT * FROM users where email='$email' and password='$password'";
        if($result = $conn->query($sql))
        {
            if($result->num_rows)
            {
                $row = $result->fetch_assoc();
                $response['user']=$row;
                $response['accessToken']=$row['id'];
                $response['status']=true;
                $response['message']="ok";
            }
            else{
                $response['status']=false;
                $response['message']="Invalid Credentials";
            }
        }
        else
        {
            $response['status']=false;
            $response['message']=$conn->error;
        }
        echo json_encode($response);
    }
    
    if(isset($request["user_id"])&&isset($request["getByUserId"]))
    {
        
        $id=$conn->real_escape_string($request["id"]);
         
        $sql="SELECT * FROM users where id='$id'";
        if($result = $conn->query($sql))
        {
            if($result->num_rows)
            {
                $row = $result->fetch_assoc();
                $response['user']=$row;
                $response['status']=true;
                $response['message']="ok";
            }
            else{
                $response['status']=false;
                $response['message']="No User";
            }
        }
        else
        {
            $response['status']=false;
            $response['message']=$conn->error;
        }
        echo json_encode($response);
    }
    
    if(isset($request["decryptJWT"])&&isset($request["accessToken"]))
    {
        
        $accesstoken=$conn->real_escape_string($request["accessToken"]);
         
        $sql="SELECT * FROM users where id='$accesstoken'";
        if($result = $conn->query($sql))
        {
            if($result->num_rows)
            {
                $row = $result->fetch_assoc();
                $response['user']=$row;
                $response['status']=true;
                $response['message']="ok";
            }
            else{
                $response['status']=false;
                $response['message']="No User";
                $response['sql']=$sql;
            }
        }
        else
        {
            $response['status']=false;
            $response['message']=$conn->error;
        }
        echo json_encode($response);
    }

?>