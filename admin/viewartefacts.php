<html>
    <head>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<?php
            $con=mysqli_connect("localhost","root","","virtualmuseum");
            $sql="select * from artefacts";
            $query=mysqli_query($con,$sql);
            while($row=mysqli_fetch_assoc($query))
            {
            ?>
            <div class="row text-center" id="cameras">
                <div class="col-md-3 col-sm-6 home-feature"  style="height:200px">
                    <div class="thumbnail">
                        <?php
                         echo "<img src='".$row['image']."' alt='' width='100' height='100'>";
                        ?>
                        <div class="caption">
                            <h3 style="font-size:20px"><?php echo $row['Name']; ?> </h3>
                            <p><?php echo substr($row['History'],0,10); ?></p>
                            <p><a href="details.php?name=<?php echo $row['id']; ?>" role="button" class="btn btn-primary btn-block">Learn More...</a></p>
                        </div>
                    </div>
                </div>
<?php 
            }
            ?>
            </body>