<?php
include("class/user.php");
$email= $_SESSION['email'];
if( empty($email) )
  header("location:index.php");

$profile=new user;
$profile-> user_profile($email);
$profile->cat_shows();
//print_r($profile->data);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Online quiz in php</h2>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
    <li><a data-toggle="tab" href="#menu1">Profile</a></li>
    <li><a data-toggle="tab" href="#menu2">Maker Info</a></li>
    <li style="float: right">
      <a  href="Logout.php">Logout</a>
    </li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <center><button type="button" class="btn btn-primary" data-toggle="tab" href="#select">Start Quiz</button></center>
      <div class="col-sm-4"></div>
      <div class="col-sm-4"><br>
         <div id="select" class="tab-pane fade">
            
           <form method="post" action="qus_show.php">
            <select class="form-control"  name="cat">
              <option >Select Category</option>
               <?php
              
              foreach($profile->cat as $category){  ?>
        
              <option value="<?php echo $category['id']; ?>"><?php echo $category['cat_name']; ?></option>
            
               <?php   } ?> 
            </select><br>
            <center><input type="submit" value="submit" class="btn btn-primary"></center>
            </form>
        </div>
      </div>
    
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Showing Profile</h3>

      <table class="table">
    <thead>
      <tr>
        <th>id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Image</th>
      </tr>
    </thead>
    <tbody>
      <?php
        foreach($profile->data as $prof)
        {?>


      <tr>
        <td><?php   echo $prof['id']; ?></td>
        <td><?php   echo $prof['name']; ?></td>
        <td><?php   echo $prof['email']; ?></td>
        <td><img src="img/<?php  echo $prof['img']; ?>" alt="" width="50px" height="40px" /></td>

      </tr>

    </tbody>
    <?php      }?>

  </table>
</div>
    <div id="menu2" class="tab-pane fade">
      <h3>Maker Information</h3>
       <table class="table table-bordered">
    <thead>
      <tr>
        <th>Project_Name:</th>
        <th>Online Quiz system</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Name:</td>
        <td>Ravi Shankar</td>
      </tr>
      <tr>
        <td>Email:</td>
        <td>ravishankar.malhi1@gmail.com</td>
      </tr>
      <tr>
        <td>Student:</td>
        <td>Iqra University Final year </td>
      </tr>
    </tbody>
  </table>



    </div>
   
  </div>
</div>

</body>
</html>
