<?php
$servername = "localhost";
$username="root";
$password="";
$dbname="fmri_db";

$pre_fun_id = "";
$new_fun_id ="";
$new_fun = "";
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
$data[0]=$_POST['pre_fun_id'];
$data[1]=$_POST['new_fun_id'];
$data[2]=$_POST['new_fun'];
$data[3]=$_POST['message'];
$data[4]=$_POST['media'];
return $data;
}




if(isset($_POST['update']))
{
$info = getData();
$update_query="UPDATE `function_detail` SET  `function_id`='$info[1]',function='$info[2]',message='$info[3]',media='$info[4]' WHERE function_id = '$info[0]'";

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