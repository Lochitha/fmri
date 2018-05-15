<?php
$servername = "localhost";
$username="root";
$password="";
$dbname="fmri_db";
$br_area_id="";
$area_nme="";
$gyral_land="";

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
$data[0]=$_POST['br_area_id'];

return $data;
}

//delete
if(isset($_POST['delete'])){
$info = getData();
$delete_query = "DELETE FROM `broadman_area` WHERE br_area_id = '$info[0]'";
try{
$delete_result = mysqli_query($conn, $delete_query);
if($delete_result){
if(mysqli_affected_rows($conn)>0)
{
echo("data deleted");
}else{
echo("data not deleted");
}
}
}catch(Exception $ex){
echo("error in delete".$ex->getMessage());
}
}

?>

