<?php
session_start();

include('includes/config.php');

if(strlen($_SESSION['emplogin'])==0)
  { 
header('location:emp-login.php');
}
else{
if(isset($_POST['change']))
{

$empid=$_SESSION['emplogin'];

$currentpassword=$_POST['currentpassword'];
$newpassword=$_POST['newpassword'];

$options = ['cost' => 12];
$hashednewpass=password_hash($newpassword, PASSWORD_BCRYPT, $options);


    $sql ="SELECT EmpPassword FROM tblemployers WHERE (id=:empid )";
    $query= $dbh -> prepare($sql);
    $query-> bindParam(':empid', $empid, PDO::PARAM_STR);
    $query-> execute();
    $results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach ($results as $row) {
$hashpass=$row->EmpPassword;
}

if (password_verify($currentpassword, $hashpass)) {
$sql="update  tblemployers set EmpPassword=:hashednewpass where id=:eid";
$query = $dbh->prepare($sql);

$query->bindParam(':hashednewpass',$hashednewpass,PDO::PARAM_STR);
$query-> bindParam(':eid', $empid, PDO::PARAM_STR);
$query->execute();
$msg='Pasword change successfully';

} else {
  $error="Current password is wrong"; 
}
}


}
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Employers | Change Password</title>
<link href="../css/custom.css" rel="stylesheet" type="text/css">
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="../css/color.css" rel="stylesheet" type="text/css">
<link href="../css/responsive.css" rel="stylesheet" type="text/css">
<link href="../css/owl.carousel.css" rel="stylesheet" type="text/css">
<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="../css/editor.css" type="text/css" rel="stylesheet"/>
<link href="../css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,300italic,500,700,900' rel='stylesheet' type='text/css'>
<script type="text/javascript">
function valid()
{
if(document.chngpwd.newpassword.value!= document.chngpwd.confirmpassword.value)
{
alert("New Password and Confirm Password Field do not match  !!");
document.chngpwd.confirmpassword.focus();
return false;
}
return true;
}
</script>

</head>

<body class="theme-style-1">
<div id="wrapper"> 

 <?php include('includes/header.php');?>



  <section id="inner-banner">

    <div class="container">

      <h1>Employers | Change Password</h1>

    </div>

  </section>


  



  <div id="main">

    <form name="chngpwd" enctype="multipart/form-data" method="post" onSubmit="return valid();">
    <section class="resum-form padd-tb">

      <div class="container">

     <?php if(@$error){ ?><div class="errorWrap">
        <strong>ERROR</strong> : <?php echo htmlentities($error);?></div><?php } ?>

        <?php if(@$msg){ ?><div class="succMsg">
        <strong>Success</strong> : <?php echo htmlentities($msg);?></div><?php } ?>





<div class="row">

<div class="col-md-6 col-sm-6">
<label>Current Password</label>
<input type="password" name="currentpassword" required>
</div>
</div>
<div class="row">
<div class="col-md-6 col-sm-6">
<label>New Password</label>
<input type="password"  name="newpassword" required>
</div>
</div>


<div class="row">

<div class="col-md-6 col-sm-6">
<label>Confirm Password</label>
<input type="password" name="confirmpassword" required>
</div>
</div>




            <div class="col-md-12">

              <div class="btn-col">

                <input type="submit" name="change" value="Change">

              </div>

            </div>

          </div>

    

      </div>

    </section>
    </form>


  </div>



  



  <?php include('includes/footer.php');?>

</div>


<script src="../js/jquery-1.11.3.min.js"></script> 
<script src="../js/bootstrap.min.js"></script> 
<script src="../js/owl.carousel.min.js"></script> 
<script src="../js/jquery.velocity.min.js"></script> 
<script src="../js/jquery.kenburnsy.js"></script> 
<script src="../js/jquery.mCustomScrollbar.concat.min.js"></script> 
<script src="../js/editor.js"></script> 
<script src="../js/jquery.accordion.js"></script> 
<script src="../js/jquery.noconflict.js"></script> 
<script src="../js/theme-scripts.js"></script> 
<script src="../js/custom.js"></script>

</body>
</html>
<?php } ?>

