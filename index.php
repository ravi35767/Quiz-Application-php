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
<br>
<br>
  
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <div class="panel panel-danger">
          <div class="panel-heading">Online Quiz system in php</div>
          <div class="panel-body">Quiz</div>
        </div>
      </div>
    </div>
</div>


  <div class="container">
      <div class="row">
       <div class="col-sm-6">
            <div class="panel panel-info">
               <div class="panel-heading">Login Form</div>
                <div class="panel-body">
                   <?php
                        if(isset($_GET['run']) && $_GET['run']=="failed")
                        {
                          echo "<mark>Your Email or password does not correct </mark>";
                        }

                        ?>
                  <form role="form" method="POST" action="signin_sub.php" >
                    <div class="form-group">
                      <label for="email">Email:</label>
                      <input type="email" class="form-control" id="email" name="e"placeholder="Enter email">
                    </div>
                    <div class="form-group">
                      <label for="pwd">Password:</label>
                      <input type="password" class="form-control" id="pwd" name="p" placeholder="Enter password">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                  </form>
              </div>
            </div>
            </div>
            <div class="col-sm-6">
                  <div class="panel panel-info">
                     <div class="panel-heading">Signup Form</div>
                      <div class="panel-body">
                        <?php
                        if(isset($_GET['run']) && $_GET['run']=="success")
                        {
                          echo "<mark>Your registretion succcessfully done</mark>";
                        }

                        ?>
                          <form role="form" method="POST" action="signup_sub.php" enctype="multipart/form-data">
                            <div class="form-group">
                              <label for="name">Name:</label>
                              <input type="text" class="form-control" id="name"
                              name="n" placeholder="Enter Name">
                            </div>
                            <div class="form-group">
                              <label for="email">Email:</label>
                              <input type="email" class="form-control" id="Email"
                                  name="e" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                              <label for="pwd">Password:</label>
                              <input type="password" class="form-control" id="pwd"
                                  name="p" 
                              placeholder="Enter password">
                            </div>
                            <div class="form-group">
                              <label for="pwd">Upload your image:</label>
                              <input type="File" class="form-control" id="File"     name="img">
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                          </form>
                      </div>
                  </div>
              </div>
            </div>
          </div>
</body>
</html>
