<?php
include("class/user.php");
$singin= new user;
extract($_POST);
if($singin->signin($e,$p))
{
	$singin->url("home.php");
}
else
{
	$singin->url("index.php?run=failed");
}
?>