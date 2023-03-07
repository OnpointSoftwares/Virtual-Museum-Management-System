<html>
    <head>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style.min.css">
<script src="js/main.js"></script>
</head>
<body>
<form style="width:80%;margin:40px" enctype="multipart/form-data" id="artefact_video_save" action="savevideo.php" method="POST">
    <fieldset>
      <legend>Artefact Video addition</legend>
       <?php
       $conn=mysqli_connect("localhost","root","","virtualmuseum");
       $sql="select * from artefacts";
       $query=mysqli_query($conn,$sql);
       echo "<p>
        <label>
         Artefact ID:
          <br />
        <select id='id'>";
       while($row=mysqli_fetch_assoc($query))
       {
        echo "<option value=".$row['id'].">".$row['Name']."</option>";
       }
       ?>
 </select>
        </label>
      </p>
      <p>
        <label>
         Image to be uploaded :
          <br />
          <input type="file" name="fileToUpload" id="fileToUpload" class="form-control">
        </label>
      </p>
      <input type="submit" >
      <a href="index.php?page=viewartefacts">Back</a>
     </fieldset>
  </form>
                </div>
                </div>
            </div>
            <hr>
        </div>

</script>