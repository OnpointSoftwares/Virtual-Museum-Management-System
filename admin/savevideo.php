<?php

if(isset($_FILES['fileToUpload']))
{
$img = $_FILES["fileToUpload"]["name"];
$tmp = $_FILES["fileToUpload"]["tmp_name"];
$errorimg = $_FILES["fileToUpload"]["error"];
$valid_extensions = array('jpeg', 'jpg', 'png', 'gif', 'bmp' , 'pdf' , 'doc' , 'ppt'); // valid extensions
$path = 'images/'; // upload directory
if(!empty($_POST['id'])|| !empty($_FILES['fileToUpload']))
{
$img = $_FILES['fileToUpload']['name'];
$tmp = $_FILES['fileToUpload']['tmp_name'];
// get uploaded file's extension
$ext = strtolower(pathinfo($img, PATHINFO_EXTENSION));
// can upload same image using rand function
$final_image = rand(1000,1000000).$img;
// check's valid format
if(in_array($ext, $valid_extensions)) 
{ 
$path = $path.strtolower($final_image); 
if(move_uploaded_file($tmp,$path)) 
{
    $id=$_POST['id'];
    $fileTobeUploaded=$_FILES['fileToUpload']['name'];
$connect=mysqli_connect("localhost","root","","virtualmuseum");
if($connect)
{
$sql="insert into artefacts(Name,Age,Location,History,Image) values('$name','$age','$location','$history','$path')";

if(mysqli_query($connect,$sql))
{
    echo "Artifact successfully saved";
}
else{
    echo "failed";
}
}
else{
    echo "There was an error in connecting to the database";
}
}
}
}
}
else{
    echo "Choose the file to upload";
}
?>