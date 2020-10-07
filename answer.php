<?php   

include("class/user.php");
$ans=new user;
$answer=$ans->answer($_POST);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Answer</title>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  
</head>
<body>
	<center>
		
	<?Php 
	$total_qus=$answer['right']+$answer['wrong']+$answer['no_answer'];
	$Attempt_question=$answer['right']+$answer['wrong'];

	?>

<div class="container">
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
  <h2>Your Quiz results</h2>
                                
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Total number of Quetions</th>
        <th><?php    echo $total_qus; ?></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Attempted questions</td>
        <td><?php    echo $Attempt_question; ?></td>
      </tr>
      <tr>
        <td>Right answer</td>
        <td> <?php  echo $answer['right']; ?></td>
      </tr>
      <tr>
        <td>Wrong answer</td>
        <td><?php  echo $answer['wrong']; ?></td>
      </tr>
      <tr>
        <td>No answer</td>
        <td><?php  echo $answer['no_answer']; ?></td>
      </tr>
      <tr>
        <td>Your result </td>
        <td><?php  
        $per=($answer['right']*100)/($total_qus);
        	echo $per."%";
         ?></td>
      </tr>
    </tbody>
  </table></div>
  <div class="col-sm-2"></div>
</div>
</center>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</body>
</html>