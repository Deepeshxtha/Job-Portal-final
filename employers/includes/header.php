 <header id="header"> 


    <div class="container"> 



      <div class="navigation-col">

        <nav class="navbar navbar-inverse">

          <div class="navbar-header">

            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>


            <h2><strong class="logo" style="color:red;padding-top:5%">Local Job Portal</strong></h2> </div>


  

            <ul class="nav navbar-nav" id="nav">
                     <?php    if(strlen($_SESSION['emplogin'])!=0): ?>
              <li><a href="#">Jobs</a>
                <ul>
                  <li><a href="post-job.php">Post a Job</a></li>
                  <li><a href="job-listing.php">Manage Jobs</a></li>
                </ul>
              </li>

        <li><a href="#">Candidates List</a>
                <ul>
<li><a href="hired-candidates.php">Hired Candidates</a></li>
<li><a href="rejected-candidates.php">Rejected Candidates</a></li>
<li><a href="candidates-listings.php">All Candidates</a></li>
                </ul>
              </li>

             


<?php else: ?>
   <li><a href="../index.php">Home</a></li>
      <li><a href="../about.php">About us</a></li>
         <li><a href="../contact.php">Contact us</a></li>
      <?php endif;?>
            </ul>

          </div>

        </nav>

      </div>



    </div>

    



    <div class="user-option-col">

      <div class="thumb">

        <div class="dropdown">

<?php

$empid=$_SESSION['emplogin'];

$sql = "SELECT  CompnayLogo from tblemployers where id=:eid";
$query = $dbh -> prepare($sql);
$query-> bindParam(':eid', $empid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
{ ?>

          <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"> <img src="employerslogo/<?php echo htmlentities($result->CompnayLogo)?>" alt="Company Logo" width="44" height="44" style="border: solid 1px #000000;"></button>
<?php }} ?>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">

            <li><a href="edit-profile.php">Update Account</a></li>

            <li><a href="change-password.php">Change Password</a></li>
            <li><a href="logout.php">Log Out</a></li>

          </ul>

        </div>

      </div>

      

    </div>



    

  </header>