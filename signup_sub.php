<?php
	include("class/user.php");
	$register=new user;
	extract($_POST);
	$img_name=$_FILES['img']['name'];
	$tmp_name=$_FILES['img']['tmp_name'];
	move_uploaded_file($tmp_name, "img/".$img_name);
	$query="insert into quiz_system1 values('','$n','$e','$p','$img_name')";
	if($register->quiz_system1($query)){

		$register->url("index.php?run=success");
	}



?>