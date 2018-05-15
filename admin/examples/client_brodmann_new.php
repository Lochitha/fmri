<?php
$br_area_id = $_POST['br_area_id'];
$area_nme = $_POST['area_nme'];
$gyral_land = $_POST['gyral_land'];
$message = $_POST['message'];
$media = $_POST['media'];

if (!empty($br_area_id) || !empty($area_nme) || !empty($gyral_land) || !empty($message) || !empty($media) )
{
	$host = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbname="fmri_db";



$conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
     die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else {
     $SELECT = "SELECT br_area_id From broadman_area Where br_area_id = ? Limit 1";
     $INSERT = "INSERT Into broadman_area (br_area_id, area_nme, gyral_land, message, media) values(?, ?, ?, ?, ?)";
     
     //Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $br_area_id);
     $stmt->execute();
     $stmt->bind_result($br_area_id);
     $stmt->store_result();
     $rnum = $stmt->num_rows;
     if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("issss", $br_area_id, $area_nme, $gyral_land, $message, $media);
      $stmt->execute();
      echo "New Data was inserted successfully.";
       
     } else {
      echo "The Brodmann area ID already exists!";
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