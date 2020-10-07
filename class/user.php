<?php
session_start();
class user{

public $host="localhost";
public $username="root";
public $pass="";
public $db_name="quiz_in_php";
public $conn;
public $data;
public $cat;
public $qus;


public function __construct(){

$this->conn=new mysqli($this->host,$this->username,$this->pass,$this->db_name);
	if($this->conn->connect_errno){
		
		die ("database connection field".$this->conn->connect_errno);


		}
	}
public function quiz_system1($data)
{
$this->conn->query($data);
return true;
	}
public function signin($email,$pass)
{
	$query=$this->conn->query("select email, pass from quiz_system1 where email='$email' and pass='$pass'");
	$query->fetch_array(MYSQLI_ASSOC);
	if($query->num_rows>0)
	{
		$_SESSION['email']=$email;
		return true;
	}
	else
	{
		return false;
	}
}


public function user_profile($email)
{
	$query=$this->conn->query("select * from quiz_system1 where email='$email'");
	$row=$query->fetch_array(MYSQLI_ASSOC);
	if($query->num_rows>0)
	{
		$this->data[]=$row;
	}
	return $this->data;
	
}
public function cat_shows()
{
	
	$query=$this->conn->query("select * from catagory ");
	while($row=$query->fetch_array(MYSQLI_ASSOC))
	
	{
		$this->cat[]=$row;
	}
	return $this->cat;
}
public function qus_show($qus)
{

	$query=$this->conn->query("select * from quetion where cat_id='$qus' ");
	while($row=$query->fetch_array(MYSQLI_ASSOC))
	
	{
		$this->qus[]=$row;
	}
	return $this->qus;
}
public function answer($data)
{
	$ans=implode("", $data);
	$right=0;
	$wrong=0;
	$no_answer=0;
	$query=$this->conn->query("select id,ans from quetion where cat_id='".$_SESSION['cat']."'");
	while($quet=$query->fetch_array(MYSQLI_ASSOC))
	
	{
		if($quet['ans']==$_POST[$quet['id']])
		{
			$right++;
		}
		elseif($_POST[$quet['id']]=="no_attempt")
		{
			$no_answer++;
		}
		else
		{
			$wrong++;
		}
	}
	$array=array();
	$array['right']=$right;
	$array['wrong']=$wrong;
	$array['no_answer']=$no_answer;
	return $array; 


}
public function logout()
{
	session_start();
	unset($_SESSION['email']);
	header("location:index.php");
	

}
public function url($url)
{
	header("location:".$url);

}

}	
$obj= new user;
?>