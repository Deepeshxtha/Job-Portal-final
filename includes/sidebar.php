  
   <nav id="sidebar">
               
                <div id="sidebar-scroll">
                   
                    <div class="sidebar-content">
                        
                        <div class="content-header content-header-fullrow px-15">
                            
                            <div class="content-header-section sidebar-mini-visible-b">
                                
                                <span class="content-header-item font-w700 font-size-xl float-left animated fadeIn">
                                    <span class="text-dual-primary-dark">c</span><span class="text-primary">b</span>
                                </span>
                                
                            </div>
                            
                            <div class="content-header-section text-center align-parent sidebar-mini-hidden">
                               
                                <button type="button" class="btn btn-circle btn-dual-secondary d-lg-none align-v-r" data-toggle="layout" data-action="sidebar_close">
                                    <i class="fa fa-times text-danger"></i>
                                </button>
                                
                                <div class="content-header-item">
                                    <a class="link-effect font-w700" href="dashboard.php">
                                     JOB PORTAL | ADMIN</span>
                                    </a>
                                </div>
                               
                            </div>
                            
                        </div>
                       
                        <div class="content-side content-side-full content-side-user px-10 align-parent">
                            
                            <div class="sidebar-mini-visible-b align-v animated fadeIn">
                                <img class="img-avatar img-avatar32" src="assets/img/avatars/avatar15.jpg" alt="">
                            </div>
                       
                            <div class="sidebar-mini-hidden-b text-center">
                                <a class="img-link" href="admin-profile.php">
                                    <img class="img-avatar" src="assets/img/avatars/avatar15.jpg" alt="">
                                </a>
                                <ul class="list-inline mt-10">
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
                                    <li class="list-inline-item">
                                        <a class="link-effect text-dual-primary-dark font-size-xs font-w600 text-uppercase" href="admin-profile.php"><?php  echo $row->AdminName;?></a>
                                    </li><?php $cnt=$cnt+1;}} ?>
                                    <li class="list-inline-item">
                                        <a class="link-effect text-dual-primary-dark" data-toggle="layout" data-action="sidebar_style_inverse_toggle" href="javascript:void(0)">
                                            <i class="si si-drop"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="link-effect text-dual-primary-dark" href="logout.php">
                                            <i class="si si-logout"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                           
                        </div>
                       
                        <div class="content-side content-side-full">
                            <ul class="nav-main">
                                <li class="open">
                                    <a href="dashboard.php"><i class="si si-cup"></i><span class="sidebar-mini-hide">Dashboard</span></a>
                                   
                                </li>
                              
                                <li class="nav-main-heading"><span class="sidebar-mini-visible">UI</span><span class="sidebar-mini-hidden"></span></li>
                                <li>
                                    <a class="nav-submenu" data-toggle="nav-submenu"><i class="si si-puzzle"></i><span class="sidebar-mini-hide"></span>Job Category</a>
                                    <ul>
                                        <li>
                                            <a href="add-category.php">Add Category</a>
                                        </li>
                                        <li>
                                            <a href="manage-category.php">Manage Category</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="employer-list.php"><i class="fa fa-building"></i><span class="sidebar-mini-hide">List of Employers</span></a>
                                   
                                </li>
                                 <li>
                                    <a href="reg-jobseekers.php"><i class="si si-users"></i><span class="sidebar-mini-hide">Reg Jobseekers</span></a>
                                   
                                </li>
                               
                                    
                                        <li>
                                            <a href="contactus.php"><i class="fa fa-phone"></i>Contact Us</a>
                                        </li>
                            
                            </ul>
                        </div>
                      
                    </div>
                   
                </div>
                
            </nav>
          