<!DOCTYPE html>
<html>
<head>
    <%@include file="../includes/head.jsp" %>
	<!-- end of global css -->    
    <!--page level css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css">


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/select2.css" />
	<link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">

    
     <link href="${pageContext.request.contextPath}/resources/vendors/jasny-bootstrap/css/jasny-bootstrap.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/vendors/modal/css/component.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/vendors/select2/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/select2/select2-bootstrap.css" />
    <!--end of page level css-->
</head>
    
    
    
<!-- START COPY -->
<body class="skin-josh">
    <header class="header">
        <a href="${pageContext.request.contextPath}/resources/index.html" class="logo">
            <img src="img/logo-two.png" alt="Logo">
        </a>		
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
			<div>
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button" style="background-color:#41625f;">
                    <div class="responsive_nav"></div>
                </a>
            </div>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
						<!--NAVIGATION DASHBOARD-->
						<li>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="livicon" data-name="home" data-size="28" data-c="#ec7f7d" data-hc="#ec7f7d" data-loop="true" title="Human Resource"></i>
							</a>
						</li>				
				
						<!--NAVIGATION REQUISITION AND SELECTION-->
						<li class="dropdown-messages-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="livicon" data-name="edit" data-size="28" data-c="#65a7df" data-hc="#65a7df" data-loop="true" title="Requisition and Selection"></i>
							</a>
							<ul class="dropdown-menu dropdown-messages pull-right">	
								<li>
									<a href="#">
									<i class="livicon" data-name="fa-arrow" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true" ></i>
									<span class="title">Recruitment</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="address-book" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
									<span class="title">Applicant Management</span>
									</a>
								</li>
								<li>
									<a href="#">
									<i class="livicon" data-name="user-flag" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
									<span class="title">New Hire on Board</span>
									</a>
								</li>					
							</ul>
						</li>	
					
						<!--NAVIGATION TALENT MANAGEMENT-->					
						<li class="dropdown-messages-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="livicon" data-name="user" data-loop="true" data-color="#00bc8c" data-hovercolor="#00bc8c" data-size="28" title="Talent Management"></i>
							</a>
							<ul class="dropdown-menu dropdown-messages pull-right">	
								<li>
									<a href="#">
									<i class="livicon" data-name="star-full" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Competency Management</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="briefcase" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Training Management</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="users-add" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Succession Planning</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="notebook" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Learning Management</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="dashboard" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Performance Management</span>
									</a>
								</li>	
								<li>
									<a href="#">
									<i class="livicon" data-name="trophy" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
									<span class="title">Social Recognition</span>
									</a>
								</li>	
							</ul>
						</li>

						
						<!--NAVIGATION ATTENDANCE AND LEAVE MANAGEMENT-->							
						<li class="dropdown-messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="calendar" data-size="28" data-c="#eea031" data-hc="#eea031" data-loop="true" title="Attendance and Leave Management"></i>
                            </a>
							<ul class="dropdown-menu dropdown-messages pull-right">
								<li>
									 <a href="#">
										<i class="livicon" data-name="alarm" data-size="18" data-c="#A9B6BC" data-hc="#A9B6BC" data-loop="true"></i>
										<span class="title">Time and Attendance</span>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="livicon" data-name="table" data-size="18" data-c="#A9B6BC" data-hc="#A9B6BC" data-loop="true"></i>
										<span class="title">Timesheet Management</span>
									</a>
								</li>	
								<li>
									<a href="#">
										<i class="livicon" data-name="plane-up" data-size="18" data-c="#A9B6BC" data-hc="#A9B6BC" data-loop="true"></i>
										<span class="title">Leave Management</span>
									</a>
								</li>						
							</ul>
						</li>
					
						<!--NAVIGATION SCHEDULING-->						
						<li class="dropdown-messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="list" data-size="28" data-c="#5ea0d7" data-hc="#5ea0d7" data-loop="true" title="Scheduling"></i>
                            </a>
							<ul class="dropdown-menu dropdown-messages pull-right">	
							<li>
								<a href="#">
									<i class="livicon" data-name="exchange" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
									<span class="title">Shifting</span>
								</a>
							</li>	
							<li>
								<a href="#">
									<i class="livicon" data-name="exchange" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
									<span class="title">Scheduling</span>
								</a>
							</li>		
							</ul>
                        </li>

						<!--NAVIGATION EMPLOYEE SELF SERVICE-->								
						<li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="comments" data-size="28" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true" title="Employee Self-Service"></i>
                            </a>
                        </li>
						
						
						<!--NAVIGATION CORE HUMAN CAPITAL MANAGEMENT-->	
						<li>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="livicon" data-name="users" data-size="28" data-c="#f1a02c" data-hc="#f1a02c" data-loop="true" title="Human Resource"></i>
							</a>
						</li>
						
						<!--NAVIGATION FINANCIAL-->						
						<li class="dropdown-messages-menu">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="money" data-size="28" data-c="#f38a87" data-hc="#f38a87" data-loop="true" title="Financial"></i>
                            </a>
							<ul class="dropdown-menu dropdown-messages pull-right">	
								<li>
									<a href="#">
										<i class="livicon" data-name="credit-card" data-size="18" data-c="#EC7F7D" data-hc="#EC7F7D" data-loop="true"></i>
										<span class="title">Payroll</span>
									</a>
								</li>	
								<li>
									<a href="#">
										<i class="livicon" data-name="piggybank" data-size="18" data-c="#EC7F7D" data-hc="#EC7F7D" data-loop="true"></i>
										<span class="title">Compensation</span>
									</a>
								</li>		
								<li>
									<a href="#">
										<i class="livicon" data-name="balance" data-size="18" data-c="#EC7F7D" data-hc="#EC7F7D" data-loop="true"></i>
										<span class="title">Claims and Reimbursements</span>
									</a>
								</li>
							</ul>
                        </li>						
						
						<!--NAVIGATION REPORTS-->								
						
						
						<!--NAVIGATION SYSTEM SETUP-->								
						<li>
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="livicon" data-name="gears" data-size="28" data-c="#5b9cd2" data-hc="#5b9cd2" data-loop="true" title="Add Training Course"></i>
                            </a>
                        </li>

					<!--USER MENU-->
                     <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img data-src="holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
                            <div class="riot">
                                <div>
                                    User
                                    <span>
                                        <i class="caret"></i>
                                    </span>
                                </div>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header bg-light-blue">
                                <img data-src="holder.js/90x90/#fff:#000" class="img-responsive img-circle" alt="User Image">
                                <p class="topprofiletext">User</p>
                            </li>
                            <!-- Menu Body -->
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="user" data-s="18"></i>
                                    My Profile
                                </a>
                            </li>
                            <li role="presentation"></li>
                            <li>
                                <a href="#">
                                    <i class="livicon" data-name="gears" data-s="18"></i>
                                    Account Settings
                                </a>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="lockscreen.html">
                                        <i class="livicon" data-name="lock" data-s="18"></i>
                                        Lock
                                    </a>
                                </div>
                                <div class="pull-right">
                                    <a href="login.html">
                                        <i class="livicon" data-name="sign-out" data-s="18"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
			
        </nav>
    </header>
	
	<!-- SIDEBAR START -->
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
         <aside class="left-side sidebar-offcanvas offcanvas-left" style="background-color:#547d79;">
            <section class="sidebar">
                <div class="page-sidebar  sidebar-nav" style="background-color:#547d79;">
                    <div class="clearfix"></div>
                    <!-- BEGIN SIDEBAR MENU -->
					<ul id="menu" class="page-sidebar-menu">
						 <li>
                            <a href="hrms_admin.html">
                                <i class="livicon" data-name="dashboard" data-size="18" data-c="#00BC8C" data-hc="#00BC8C" data-loop="true"></i>
                                <span class="title">Dashboard</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="add_training_course.html">
                                <i class="livicon" data-name="plus-alt" data-size="18" data-c="#00BC8C" data-hc="#00BC8C" data-loop="true"></i>
                                <span class="title">Add Training Course</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="list_of_training_courses.jsp">
                                <i class="livicon" data-name="list" data-size="18" data-c="#00BC8C" data-hc="#00BC8C" data-loop="true"></i>
                                <span class="title">List Of Training Course</span>
                            </a>
                        </li>
                        
                        
                        <li>
                            <a href="list_of_manage_trainers.jsp">
                                <i class="livicon" data-name="plus-alt" data-size="18" data-c="#00BC8C" data-hc="#00BC8C" data-loop="true"></i>
                                <span class="title">List of Manage Trainers</span>
                            </a>
                        </li>
                        <li>
                            <a href="facility_management.html">
                                <i class="livicon" data-name="plus-alt" data-size="18" data-c="#00BC8C" data-hc="#00BC8C" data-loop="true"></i>
                                <span class="title">Facility Management</span>
                            </a>
                        </li>
                        
                        
                        <li>
                            <a href="training_request_approval%20-%20admin.jsp">
                                <i class="livicon" data-name="mail" data-size="18" data-c="#00BC8C" data-hc="#00BC8C" data-loop="true"></i>
                                <span class="title">Training Request Approval</span>
                            </a>
                        </li>
                        	
							</ul>
                        
				
                        
                        
                        
                </div><!-- END SIDEBAR MENU -->
                
        
            <!-- /.sidebar -->
        
            </section>
        </aside>
        <!-- SIDEBAF END -->
<!-- END COPY -->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>List of Training Courses</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Home
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
                <div class="row web-mail">
                    <div class="col-md-12">
                        <div class="panel panel-white panel-border">
                            <div class="panel-body partition-default">
                                <div class="col-md-12 partition-white">
									<div class="btn-group pull-right">
                                        <button class="btn dropdown-toggle btn-custom" data-toggle="dropdown">
                                            Tools
                                            <i class="fa fa-angle-down"></i>
                                        </button>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href="#">Print</a>
                                            </li>
                                            <li>
                                                <a href="#">Save as PDF</a>
                                            </li>
                                            <li>
                                                <a href="#">Export to Excel</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div id="sample_editable_1_wrapper" style="margin-top:50px;">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:5%">Course Title</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Description</th>
                                                
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Edit
                                            : activate to sort column ascending" style="width: 15%;">Course Type</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Start Date</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">End Date</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Training Hours</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Facilty Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Location</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Topic</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Trainer Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Address</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Age</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Contact</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Gender</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Job</th>
                                                
                                                
												
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 5%;">Edit/Delete</th>
												
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <tr role="row" class="odd">
                                                
                                                <td class="sorting_1">Information Technology</td>
                                                <td>Computers and information technology are the basic components of the modern economy and everyday life. </td>
												
												<td>External</td>
                                                <td>3/16/18</td>
												<td>4/7/18</td>
                                                <td>40hr</td>
                                                <td>Chapel</td>
                                                <td>PUPQC</td>
                                                <td>IAS</td>
                                                <td>Yves Oliver Bague</td>
                                                <td>Don Fabian</td>
                                                <td>19</td>
                                                <td>09174513311</td>
                                                <td>Male</td>
                                                <td>Technical Support</td>
                                                
                                                <td>
                                                <center>
                                                <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#edit_course_modal" href="#edit_course_modal">
														<span class="glyphicon glyphicon-edit"></span>
                                                    </button>
                                                    <button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-href="delete_course" href="#delete_course">
														<span class="glyphicon glyphicon-remove"></span>
                                                    </button>
                                                    </center>
                                                  </td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
							  </div>
                        </div>
                    </div>
                    </div>
                </div>
		   </section>
		   <!---MODAL MANAGER APPROVAL START--->
			 <div id="edit_course_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;" data-backdrop="static" data-keyboard="false">
                   <div class="modal-dialog">  													 
                       <div class="modal-content">
                           <div class="modal-header">
                               <h3 class="modal-title">Edit Course</h3>
                               <p>Please fill out the information needed.</p>
                           </div>
                           <div class="modal-body">         
                              <div class="form-group col-lg-12">
                                        <label>Course Title</label>
                                        <input class="form-control" placeholder="Course Title">
                                        </div>
                                        <!-- END --> 
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Description</label>
                                        <input class="form-control" placeholder="Description">
                                        </div>
                                        <!-- END -->   
                                        <div class="form-group col-lg-12">
                                        <label>Course Type</label>
                                        <select class="form-control">
                                            <option>Select</option>
                                            <option>Internal</option>
                                            <option>External</option>
                                           
                                        </select>
                                    </div>
                               <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Start Date</label>
                                        <input type = "date" class="form-control" placeholder="Start Date">
                                        </div>
                                        <!-- END -->
                               <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>End Date</label>
                                        <input type = "date" class="form-control" placeholder="End Date">
                                        </div>
                                        <!-- END -->
                                <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Training Hours</label>
                                        <input class="form-control" placeholder="Training Hours">
                                        </div>
                                        <!-- END -->
                                                        
                                        <div class="form-group col-lg-12">
                                        <label>Location</label>
                                        <input class="form-control" placeholder="Location">
                                        </div>
                               
                               <div class="form-group col-lg-12">
                                        <label>Topic</label>
                                        <input class="form-control" placeholder="Topic">
                                        </div>
                                    
                               <div class="form-group col-lg-12">
                                        <label>Trainer Name</label>
                                        <input class="form-control" placeholder="Trainer Name">
                                        </div>
                               
                               <div class="form-group col-lg-12">
                                        <label>Address</label>
                                        <input class="form-control" placeholder="Address">
                                        </div>
                               
                               <div class="form-group col-lg-12">
                                        <label>Age</label>
                                        <input class="form-control" placeholder="Age">
                                        </div>
                               
                               <div class="form-group col-lg-12">
                                        <label>Contact</label>
                                        <input class="form-control" placeholder="Contact">
                                        </div>
                               
                               <div class="form-group col-lg-12">
                                        <label>Gender</label>
                                        <select class="form-control">
                                            <option>Select</option>
                                            <option>Male</option>
                                            <option>Female</option>
                                           
                                        </select>
                                    </div>
                               
                               <div class="form-group col-lg-12">
                                        <label>Job</label>
                                        <input class="form-control" placeholder="Job">
                                        </div>
                          
				            </div>
				            <div class="modal-footer">
                               
                                <button type="button" data-dismiss="modal" class="btn">Cancel</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#inspect_modal">Save</button>
				            </div>
				            </div>
										
					  </div>
                </div>
            
            <div class="modal fade" id="delete_course" tabindex="-1" role="dialog" aria-labelledby="user_delete_confirm_title" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h3 class="modal-title" id="user_delete_confirm_title">
                                                Delete Training Course
                                            </h3>
                                        </div>
                                        <div class="modal-body">
                                            Are you sure you want to delete this traning course? This action is irreversible.
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                            <a href="#" type="button" class="btn btn-danger">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
            
            
            
            
            
            
            
            <div class="modal fade in" id="manager-approval" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Manager Approval</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label class="control-label">HR Manager:</label>
								<span>Vera Thea Santos</span>
							</div>
							<div class="form-group">
								<label class="control-label">Status:</label>
								<span>Approved</span>
							</div>
							<div class="form-group">
								<label>Remarks</label>
								<textarea class="form-control" rows="3"></textarea>
							</div>
						</div>
						
						<div class="modal-footer">
							<button type="button" data-dismiss="modal" class="btn">Cancel</button>
							<button type="submit" class="btn btn-responsive btn-success">Submit</button>
						</div>
					</div>
				</div>
			</div>
			<!---MODAL MANAGER APPROVAL END--->					
        </aside>
        <!-- right-side -->
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
	</div>
    <!-- global js -->
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
   <script src="js/josh.js" type="text/javascript"></script>
    <script src="js/metisMenu.js" type="text/javascript"> </script>
    <script src="vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <!--  todolist-->
    <script src="${pageContext.request.contextPath}/resources/js/todolist.js"></script>
    <!-- EASY PIE CHART JS -->
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/easypiechart.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.easypiechart.min.js"></script>
    <!--for calendar-->
    <script src="${pageContext.request.contextPath}/resources/vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
    <!--   Realtime Server Load  -->
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.flot.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.flot.resize.min.js" type="text/javascript"></script>
    <!--Sparkline Chart-->
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.sparkline.js"></script>
    <!-- Back to Top-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/countUp/countUp.js"></script>
	<!-- InputMask -->
    <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- date-range-picker -->
    <script src="${pageContext.request.contextPath}/resources/vendors/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/select2/select2.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/iCheck/icheck.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/iCheck/demo/js/custom.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/autogrow/js/jQuery-autogrow.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/card/jquery.card.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pages/formelements.js" type="text/javascript"></script>
	<!--editable-table-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/select2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-editable.js"></script>
	<!--advanced-modals-->
	<script src="${pageContext.request.contextPath}/resources/vendors/modal/js/classie.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/modal/js/modalEffects.js"></script>
    <!--   maps -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
     <script src="${pageContext.request.contextPath}/resources/vendors/jscharts/Chart.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/jasny-bootstrap/js/jasny-bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dashboard.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        var composeHeight = $('#calendar').height() +21 - $('.adds').height();
        $('.list_of_items').slimScroll({
            color: '#A9B6BC',
            height: composeHeight + 'px',
            size: '5px'
        });
    });
    </script>
    <!-- end of page level js -->
  
</body>
</html>
