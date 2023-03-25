<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Artefacts | Virtual Museum</title>
        <link href="css3/bootstrap.css" rel="stylesheet">
        <link href="css3/style.css" rel="stylesheet">
        <script src="js2/jquery.js"></script>
        <script src="js2/bootstrap.min.js"></script>
    </head>

    <body>
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
                        <li><a href = "Login.html"><span class = "glyphicon glyphicon-user"></span> Login </a></li>
                        <li><a href = "settings.html"><span class = "glyphicon glyphicon-user"></span> Settings</a></li>
                        <li><a href = "logout.php"><span class = "glyphicon glyphicon-log-in"></span> Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container" id="content">

            <hr>
            <?php
            $con=mysqli_connect("localhost","root","","virtualmuseum");
            $sql1="select Categories from Categories";
            $query1=mysqli_query($con,$sql1);
            while($row1=mysqli_fetch_assoc($query1))
            {
                echo "<div>";
                echo "<h1><u><center>".$row1['Categories']."</center></u></h1>";
                $cat=$row1['Categories'];
                
                getartefacts($cat);
                echo "<br><br></div>
                <hr/>";
    }
    
            ?>
                </div>
            </div>
            <hr>
        </div>
        <footer>
            <div class="container">
                <center>
                    <p>Copyright &copy; Virtual Museum. All Rights Reserved  |  Contact Us: +254712345678</p>	
                </center>
            </div>
        </footer>
    </body>
</html>
<?php
function getartefacts($category)
                {
            $con=mysqli_connect("localhost","root","","virtualmuseum");

                    $cat=$category;
            $sql="select * from ".$cat;
            $query=mysqli_query($con,$sql);
            if(!$query)
            {
                echo "Error".mysqli_error($con);
            }
            while($row=mysqli_fetch_assoc($query))
            {
            ?>
            <div class="row text-center" id="cameras">
                <div class="col-md-3 col-sm-6 home-feature">
                    <div class="thumbnail">
                    <?php
                         echo "<img src='".$row['image']."' alt='' height='400' width='400'>";
                        ?>
                        <div class="caption">
                            <h3 style="font-size:20px"><?php echo $row['Name']; ?> </h3>
                            <p><?php echo substr($row['History'], 0, 200) ?></p>
                    </div>
                        
                    </div>
                </div>
<?php 
            }
        }
        ?>
