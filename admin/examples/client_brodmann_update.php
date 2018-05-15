<?php
$servername = "localhost";
$username="root";
$password="";
$dbname="fmri_db";

$pre_brod = "";
$new_brod ="";
$new_fun = "";
$new_gy = "";
$message = "";
$media = "";

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
 
//connect to mysql database
try{
$conn =mysqli_connect($servername,$username,$password,$dbname);
}catch(MySQLi_Sql_Exception $ex){
echo("error in connecting");
}

//get data from the form
function getData()
{
$data = array();
$data[0]=$_POST['pre_brod'];
$data[1]=$_POST['new_brod'];
$data[2]=$_POST['new_fun'];
$data[3]=$_POST['new_gy'];
$data[4]=$_POST['message'];
$data[5]=$_POST['media'];
return $data;
}




if(isset($_POST['update']))
{
$info = getData();
$update_query="UPDATE `broadman_area` SET  `br_area_id`='$info[1]',area_nme='$info[2]',gyral_land='$info[3]',message='$info[4]',media='$info[5]' WHERE br_area_id = '$info[0]'";

$update_result=mysqli_query($conn, $update_query);
  if($update_result)
  {
     if(mysqli_affected_rows($conn)>0)
     {
        echo("data updated");
     }
     else
     {
        echo("data not updated");
     }

  }
}

else
{
  echo("There's an error in updating.");
}

?>