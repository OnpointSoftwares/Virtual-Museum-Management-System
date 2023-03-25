<?php
$conn=mysqli_connect("localhost","root","","virtualmuseum");
if(isset($_GET['name']) && $_GET['name'] > 0){
   $query=mysqli_query($conn,"select * from artefacts where id='".$_GET['name']."'");
    while($row=mysqli_fetch_assoc($query))
    {
        ?>
        <!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Virtual Museum</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <!-- jQuery -->
        <script src="js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </head>

    <body style="padding-top: 50px;margin:20px;border:1px solid black">
        <!-- Header -->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="index.html">Virtual Museum</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--Header end-->

        <div id="content">
            <div id="details" style="font-size:20px;border:3px solid black" >
            <center>Name:<?php echo $row['Name']."</center>";
        echo "<center>Age:".$row['Age']." Years</center>";
        echo "<center>Location:".$row['Location']."</center>";
        echo "<br>";
        $path="admin/".$row['image'];
        ?><hr>
            <!--Main banner image-->
            <img src='<?=$path; ?>' style="borderP3px solid transparent;border-radius:40px;width:1000px">
            <center><h3>History</h3></center>
            <p style="padding:20px"><?php echo $row['History'];?></p>
            </div>
            <hr>
            <!--Main banner image end-->
            <?php
            $query1=mysqli_query($conn,"select * from filesUploads where id='".$_GET['name']."' and Extension='mp4'");
    while($row2=mysqli_fetch_assoc($query1))
    {
        if($row2['Extension']=='mp4')
        ?>
        <video width="320" height="240" controls>
  <?php echo "<source src='".$row2['path']."' type='video/mp4'>
  <source src='admin/".$row2['path']."' type='video/ogg'>"; ?>
  Your browser does not support the video tag.
</video>
        <?php
    }
        ?>
        <img src='<?=$row2['path']; ?>' style="borderP3px solid transparent;border-radius:40px;width:1000px">
        <?
    
    }
         ?>
                </div>
            </div>
    </div>
            
        </div>

        <!--Footer-->
        <footer>
            <div class="container">
            
                <center>
                    <p>Copyright &copy; Virtual Museum All Rights Reserved  |  Contact Us: +254712345678</p>	
                </center>
            </div>
        </footer>
        <!--Footer end-->

    </body> 
</html>
        
        <?php
    }
?>
