 <footer id="footer">
<?php

$empid=$_SESSION['emplogin'];

$sql = "SELECT * from  tblemployers  where id=:eid";
$query = $dbh -> prepare($sql);
$query-> bindParam(':eid', $empid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
{


 ?>
    <div class="text-box box">

      <h4><?php echo htmlentities($result->CompnayName)?></h4>

      <p><?php echo htmlentities($result->CompanyTagline)?>.</p>
      <p>Website: <?php echo htmlentities($result->CompanyUrl)?></p>
<p>Location: <?php echo htmlentities($result->lcation)?></p>
    </div>

    <div class="box">

      <h4>Company Logo</h4>

      <img src="employerslogo/<?php echo htmlentities($result->CompnayLogo)?>" width="100" height="100">

    </div>

     
<?php }}
?>
    <div class="container">

      <div class="bottom-row"> <strong class="copyrights">LocalJobportal</strong>

       

        
        </div>

      </div>

    </div>

  </footer>
