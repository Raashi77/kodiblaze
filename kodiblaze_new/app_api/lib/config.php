<?php
//opne server error
error_reporting(E_ALL);
ini_set('display_errors', 1);
error_reporting(1);
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET,POST,PUT,DELETE,OPTIONS");
header("Access-Control-Allow-Headers: *");

//select time zone
date_default_timezone_set('Asia/Kolkata');

//for the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "voting";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);




// Check connection
if($conn->connect_error)
{
    die("Connection failed: " . $conn->connect_error);
}

 
$IMAGE_MODE_CDN = 'IMAGE_MODE_CDN';
$IMAGE_MODE_SERVER = 'IMAGE_MODE_SERVER';
$IMAGE_MODE = $IMAGE_MODE_SERVER;

$FILE_MODE_CDN = $IMAGE_MODE_CDN;
$FILE_MODE_SERVER = $IMAGE_MODE_SERVER;
$FILE_MODE = $FILE_MODE_SERVER;
//website link



$deafult_img = $website_link."assets/image/ErrorDefaultImg.png";
 

//url for push notification

// $webUrl="https://www.dubuddy.in/";
// $webUrl="http://localhost/dubuddy/";
// $website_link=$webUrl;

?>