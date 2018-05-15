<?php
$function_id = $_POST['function_id'];
$function = $_POST['function'];
$media = $_POST['media'];
$message = $_POST['message'];

if (!empty($function_id) || !empty($function) || !empty($media) || !empty($message) )
{
	  $host = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbname="fmri_db";



$conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
     die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else {
     $SELECT = "SELECT function_id From function_detail Where function_id = ? limit 1";
     $INSERT = "INSERT Into function_detail (function_id, function, media, message) values(?, ?, ?, ?)";
     //Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $function_id);
     $stmt->execute();
     $stmt->bind_result($function_id);
     $stmt->store_result();
     $rnum = $stmt->num_rows;
     if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("ssss", $function_id, $function, $media, $message);
      $stmt->execute();
      echo "New Data was inserted successfully.";
       
     } else {
      echo "The function ID already exists!";
     }
     $stmt->close();
     $conn->close();
    }
} 
else
{
echo "Please double check and enter the data correctly! Thank you!";
die();
}

?>