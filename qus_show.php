<?php
include("class/user.php");
$qus=new user;
$cat=$_POST['cat'];
$qus->qus_show($cat);
$_SESSION['cat']=$cat;
// echo"<pre>";
// print_r($qus->qus);
?>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  	function timeout()
  	{
  		var minute=Math.floor(timeLeft/60);
  		var second=timeLeft%60; 
      var sec=checktime(second);
      var mint=checktime(minute);
      if(timeLeft<=0)
      {
        clearTimeout(tm);
          document.getElementById("form1").submit();
      }
      else
      {
        
        document.getElementById("time").innerHTML=mint+":"+sec;
      }
      timeLeft--;
      var tm= setTimeout(function(){timeout()},1000);
  	}
      function checktime(msg)
      {
          if(msg<10)
          {
            msg="0"+msg;
          }
          return msg;
      }

  </script>
</head>
<body onload="timeout()" >

<div class="container">
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
  <h2>Online Quiz in php 

<script type="text/javascript">
	
	var timeLeft=2*60;
</script>

   <div id="time" style="float: right;">Timeout</div></h2>
   <?php 
    $i=1;
   foreach($qus->qus as $quet) {?>
  <form action="answer.php" id="form1" method="post">
                       
  <table class="table table-bordered">
    <thead>
      <tr class="danger">
        <th><?php echo $i; ?> <?php echo $quet['Question']; ?></th>
        
      </tr>
    </thead>
    <tbody>
    	<?php if(isset($quet['ans1'])) { ?>
      <tr class="info">
        <td>&nbsp;1&emsp;<input type="radio" value="0" name="<?php echo $quet['id']; ?>" />&nbsp;<?php echo $quet['ans1']; ?></td>
      </tr>
  <?php } ?>

      <?php if(isset($quet['ans2'])) { ?>
       <tr class="info">
        <td>&nbsp;2&emsp;<input type="radio" value="1" name="<?php echo $quet['id']; ?>" />&nbsp;<?php echo $quet['ans2']; ?></td>

      </tr>
  <?php } ?>

      <?php if(isset($quet['ans3'])) { ?>
       <tr class="info">
        <td>&nbsp;3&emsp;<input type="radio" value="2" name="<?php echo $quet['id']; ?>" />&nbsp;<?php echo $quet['ans3']; ?></td>
      </tr>
  <?php } ?>

      <?php if(isset($quet['ans4'])) { ?>
       <tr class="info">
        <td>&nbsp;4&emsp;<input type="radio" value="3" name="<?php echo $quet['id']; ?>" />&nbsp;<?php echo $quet['ans4']; ?></td>
      </tr>
  <?php } ?>
       <tr class="info">
        <td><input type="radio" checked="checked" style="display: none"value="no_attempt" name="<?php echo $quet['id']; ?>" /></td>
      </tr>
      
    </tbody>
  </table>
<?php $i++; } ?>

		<center><input type="submit" value="Submit Quiz" class="btn btn-success"></center>
	</form>
</div>
<div class="col-sm-2"></div>
</div>

</body>
</html>
