<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['jpaid']==0)) {
  header('location:logout.php');
  } else{

if(isset($_GET['delid']))
{
$rid=intval($_GET['delid']);
$sql="delete from tblemployers where id=:rid;
delete from tbljobs where employerId=:rid;
";
$query=$dbh->prepare($sql);
$query->bindParam(':rid',$rid,PDO::PARAM_STR);
$query->execute();
echo "<script>alert('Data deleted');</script>"; 
echo "<script>window.location.href = 'employer-list.php'</script>";     
}


  ?>
<!doctype html>
<html lang="en" class="no-focus"> 
    <head>
        <title>Job Portal - Employer Lists</title>
        <link rel="stylesheet" href="assets/js/plugins/datatables/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" id="css-main" href="assets/css/codebase.min.css">
    </head>
    <body>
        <div id="page-container" class="sidebar-o sidebar-inverse side-scroll page-header-fixed main-content-narrow">
           <?php include_once('includes/sidebar.php');?>
          <?php include_once('includes/header.php');?>


            
            <main id="main-container">
                
                <div class="content">
                    <h2 class="content-heading">Employer Lists</h2>

                   

                   
                    <div class="block">
                        <div class="block-header bg-gd-emerald">
                                    <h3 class="block-title">Employer Lists</h3>
                                  
                                </div>
                        <div class="block-content block-content-full">
                            <
                            <table class="table table-bordered table-striped table-vcenter js-dataTable-full-pagination">
                                <thead>
                                    <tr>
                                        <th class="text-center">#</th>
                                        <th>Company Name</th>
                                       <th>Concern Person</th>
                                       <th>Email</th>
                                        <th>Status</th>
                                        <th>Registration Date</th>
                                        <th class="d-none d-sm-table-cell" style="width: 25%;">Action</th>
                                       </tr>
                                </thead>
                                <tbody>
                                    <?php
$sql="SELECT * from tblemployers";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                                    <tr>
                                        <td class="text-center"><?php echo htmlentities($cnt);?></td>
                                        <td><?php  echo htmlentities($row->CompnayName);?></td>
                                        <td><?php  echo htmlentities($row->ConcernPerson);?></td>
                                        <td><?php  echo htmlentities($row->EmpEmail);?></td>
                                        <?php if($row->Is_Active=='1'){ ?>
                                        <td class="font-w600"><?php echo "Active"; ?></td>
                                        <?php } else { ?>

                                            <td class="font-w600"><?php echo "Inactive"; ?></td><?php } ?>

                                        <td class="d-none d-sm-table-cell"><?php  echo htmlentities($row->RegDtae);?></td>
                                        
                                         <td class="d-none d-sm-table-cell">
                                            <a href="view-employer-details.php?viewid=<?php echo htmlentities ($row->id);?>" class="btn btn-primary btn-sm"> View</a>

<a href="listed-jobs.php?compid=<?php echo htmlentities ($row->id);?>&&cname=<?php  echo htmlentities($row->CompnayName);?>" class="btn btn-info btn-sm" target="blank"> Listed Jobs</a>
<a href="employer-list.php?delid=<?php echo ($row->id);?>" onclick="return confirm('All jobs listed by this company will also delete.Do you really want to Delete ?');" class="btn btn-danger btn-sm">Delete</a> 
                                        </td>
                                    </tr>
                                    <?php $cnt=$cnt+1;}} ?> 
                                
                                
                                  
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                </div>
                
            </main>
          

           <?php include_once('includes/footer.php');?>
        </div>
        
        <script src="assets/js/core/jquery.min.js"></script>
        <script src="assets/js/core/popper.min.js"></script>
        <script src="assets/js/core/bootstrap.min.js"></script>
        <script src="assets/js/core/jquery.slimscroll.min.js"></script>
        <script src="assets/js/core/jquery.scrollLock.min.js"></script>
        <script src="assets/js/core/jquery.appear.min.js"></script>
        <script src="assets/js/core/jquery.countTo.min.js"></script>
        <script src="assets/js/core/js.cookie.min.js"></script>
        <script src="assets/js/codebase.js"></script>

        
        <script src="assets/js/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/js/plugins/datatables/dataTables.bootstrap4.min.js"></script>

       
        <script src="assets/js/pages/be_tables_datatables.js"></script>
    </body>
</html>
<?php }  ?>