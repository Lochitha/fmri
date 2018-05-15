<?php
$article_title = $_POST['article_title'];
$article_id = $_POST['article_id'];
$article_author = $_POST['article_author'];
$ref_date = $_POST['ref_date'];
$reference = $_POST['reference'];
$link = $_POST['link'];
$brodmann_id = $_POST['brodmann_id'];
$function_id = $_POST['function_id'];
$message_art = $_POST['message_art'];
$message_web = $_POST['message_web'];
$media = $_POST['media'];

if (!empty($article_title) || !empty($article_id) || !empty($article_author) || !empty($ref_date) || !empty($reference) || !empty($link) || !empty($brodmann_id) || !empty($function_id) || !empty($message_art) || !empty($message_web) || !empty($media) )
{
	$host = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbname="fmri_db";



$conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
    if (mysqli_connect_error()) {
     die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else {
     $SELECT = "SELECT article_id From client_data Where article_id = ? Limit 1";
     $INSERT = "INSERT Into client_data (article_title, article_id, article_author, ref_date, reference, link, brodmann_id , function_id , message_art , message_web , media) values(?, ?, ?, ?, ?, ? ,?, ?, ?, ?, ?)";

     //Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $article_id);
     $stmt->execute();
     $stmt->bind_result($article_id);
     $stmt->store_result();
     $rnum = $stmt->num_rows;
     if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("sisississss", $article_title, $article_id, $article_author, $ref_date, $reference, $link, $brodmann_id , $function_id , $message_art , $message_web , $media);
      $stmt->execute();
      echo "New Data was inserted successfully.";
       
     } else {
      echo "The article ID already exists!";
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