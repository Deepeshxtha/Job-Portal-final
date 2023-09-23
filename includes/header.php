  
            <header id="page-header">
                
                <div class="content-header">
                    
                    <div class="content-header-section">
                      
                    
                        <button type="button" class="btn btn-circle btn-dual-secondary" data-toggle="layout" data-action="sidebar_toggle">
                            <i class="fa fa-navicon"></i>
                        </button>
                       
                       
                    </div>
                    
                    <div class="content-header-section">
                        
                        <div class="btn-group" role="group">
                            <?php
$aid=$_SESSION['jpaid'];
$sql="SELECT AdminName from  tbladmin where ID=:aid";
$query = $dbh -> prepare($sql);
$query->bindParam(':aid',$aid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                            <button type="button" class="btn btn-rounded btn-dual-secondary" id="page-header-user-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <?php  echo $row->AdminName;?><i class="fa fa-angle-down ml-5"></i>
                            </button>
                            <?php $cnt=$cnt+1;}} ?>
                            <div class="dropdown-menu dropdown-menu-right min-width-150" aria-labelledby="page-header-user-dropdown">
                                <a class="dropdown-item" href="admin-profile.php">
                                    <i class="si si-user mr-5"></i> Profile
                                </a>
                              
                                <div class="dropdown-divider"></div>

                            
                                <a class="dropdown-item" href="change-password.php" data-toggle="layout" data-action="side_overlay_toggle">
                                    <i class="si si-wrench mr-5"></i> Change Password
                                </a>
                              

                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="logout.php">
                                    <i class="si si-logout mr-5"></i> Sign Out
                                </a>
                            </div>
                        </div>
                     
                    </div>
                    
                </div>
            
                
                <div id="page-header-loader" class="overlay-header bg-primary">
                    <div class="content-header content-header-fullrow text-center">
                        <div class="content-header-item">
                            <i class="fa fa-sun-o fa-spin text-white"></i>
                        </div>
                    </div>
                </div>
            
            </header>
         