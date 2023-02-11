<?php
include 'connection.php';

if(isset($_POST["submit"]))
{
	$a=$_POST['parent_id'];
	$b=$_POST['n'];

	$sql="insert into menu_table(name, parent_id) values ('$b','$a')";
	$result=mysqli_query($con,$sql);

	if($result)
	{
		echo"<script>alert('Successfull.')</script>";
		
	}
	else
	{
		echo"<script>alert('Connection Failed.')</script>";
	}
}
?>