<html>
    <head>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style.min.css">
<script src="js/main.js"></script>
</head>
<body>
<form style="width:80%;margin:40px" enctype="multipart/form-data" id="artefact_save">
    <fieldset>
      <legend>Artefact Registration</legend>
       
 
<p>
        <label>
         Name:
          <br />
         <input type="text" name="artefactName" class="form-control" id="name"/>
        </label>
      </p>
 
 
       
 
<p>
        <label>Location: <input id="location" type="text" name="Location" class="form-control"/></label>
      </p>
<p>
        <label>Age:<input type="Number" name="Age" id="Age" class="form-control"/></label>
      </p>
<p>
        <label>
         History Behind :
          <br />
          <textarea name="History" id="History" class="form-control" cols="30" rows="3"></textarea>
        </label>
      </p>
      <p>
        <label>
         Image to be uploaded :
          <br />
          <input type="file" name="fileToUpload" id="fileToUpload" class="form-control">
        </label>
      </p>
      <p>
        <label>
         Category :
          <br />
          <select class="form-control" name="cat" id="cat">
            <option value="artefacts">Artefacts</option>
            <option value="wildlife">Wildlife</option>
            <option value="exhibitions">Exhibitions</option>
</select>
        </label>
      </p>
      <center><p id="loading_spinner" style="display:none"><img src="../img/loading.gif"></p></center>
      <p onclick="save()" class="btn btn-primary" style="cursor:default">Save</p>
      <a href="index.php?page=viewartefacts">Back</a>
     </fieldset>
  </form>
                </div>
                </div>
            </div>
            <hr>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js" integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
function save()
{
    var data = new FormData(document.getElementById("artefact_save"));
console.log("Created FormData, " + [...data.keys()].length + " keys in data");
 var name=$("#name").val();
 var location=$("#location").val();
 var age=$("#Age").val();
 var History=$("#History").val();
 var ftpud=$("#fileToUpload").val();
 if(name!="" && location!="")
 {
  $("#loading_spinner").css({"display":"block"});
  $.ajax
  ({
  type:'POST',
  url:'saveartefacts.php',
  cache: false,
  contentType: false,
  processData: false,
  data:data,
  success:function(response) {
    $("#loading_spinner").css({"display":"none"});
  if(response=="success")
  {
  alert("The data was saved successfully");

  }
  else
  {
    alert(response)
    $("#loading_spinner").css({"display":"none"});
  }
  }
  });
 }

 else
 {
  alert("Please Fill All The Details");
 }

 return false;
}

</script>