<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Learning Management | Course</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
     <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="<c:url value="/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/css/styles/black.css"/>" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="<c:url value="/resources/css/panel.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/css/metisMenu.css"/>" rel="stylesheet" type="text/css"/> 
    <!-- end of global css -->
    <!--page level css -->
    <link href="<c:url value="/resources/vendors/jasny-bootstrap/css/jasny-bootstrap.css"/>" rel="stylesheet" />
    <!--end of page level css-->
	 <!--page level css -->
	<link href="<c:url value="/resources/vendors/datatables/css/select2.css"/>" rel="stylesheet" type="text/csst" />
    <link href="<c:url value="/resources/vendors/datatables/css/dataTables.bootstrap.css"/>" rel="stylesheet" type="text/csst" />
    <link href="<c:url value="/resources/css/pages/tables.css"/>" rel="stylesheet" type="text/css" />
    <!--end of page level css-->
	<!--page level css -->
	<link href="<c:url value="/resources/vendors/modal/css/component.css"/>" rel="stylesheet" />
    <!--end of page level css-->
</head>
<body class="skin-josh">
    <header class="header">
        <a href="index.html" class="logo">
            <img src="resources/img/logo.png" alt="logo"></a>
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <div>
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <div class="responsive_nav"></div>
                </a>
            </div>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="livicon" data-name="message-flag" data-loop="true" data-color="#42aaca" data-hovercolor="#42aaca" data-size="28"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages pull-right">
                            <li class="dropdown-title">4 New Messages</li>
                            <li class="unread message">
                                <a href="javascript:;" class="message"> <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body"> <strong>Riot Zeast</strong>
                                        <br>
                                        Hello, You there?
                                        <br>
                                        <small>8 minutes ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read"><span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span></i> 
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body"> <strong>John Kerry</strong>
                                        <br>
                                        Can we Meet ?
                                        <br>
                                        <small>45 minutes ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read">
                                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                                    </i>
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Jenny Kerry</strong>
                                        <br>
                                        Dont forgot to call...
                                        <br>
                                        <small>An hour ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="unread message">
                                <a href="javascript:;" class="message">
                                    <i class="pull-right" data-toggle="tooltip" data-placement="top" title="Mark as Read">
                                        <span class="pull-right ol livicon" data-n="adjust" data-s="10" data-c="#287b0b"></span>
                                    </i>
                                    <img data-src="holder.js/45x45/#000:#fff" class="img-responsive message-image" alt="icon">
                                    <div class="message-body">
                                        <strong>Ronny</strong>
                                        <br>
                                        Hey! sup Dude?
                                        <br>
                                        <small>3 Hours ago</small>
                                    </div>
                                </a>
                            </li>
                            <li class="footer">
                                <a href="#">View all</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="livicon" data-name="bell" data-loop="true" data-color="#e9573f" data-hovercolor="#e9573f" data-size="28"></i>
                            <span class="label label-warning">7</span>
                        </a>
                        <ul class=" notifications dropdown-menu">
                            <li class="dropdown-title">You have 7 notifications</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <i class="livicon danger" data-n="timer" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">after a long time</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Just Now
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon success" data-n="gift" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">Jef's Birthday today</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Few seconds ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon warning" data-n="dashboard" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">out of space</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            8 minutes ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon bg-aqua" data-n="hand-right" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">New friend request</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            An hour ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon danger" data-n="shopping-cart-in" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">On sale 2 products</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            3 Hours ago
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon success" data-n="image" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">Lee Shared your photo</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            Yesterday
                                        </small>
                                    </li>
                                    <li>
                                        <i class="livicon warning" data-n="thumbs-up" data-s="20" data-c="white" data-hc="white"></i>
                                        <a href="#">David liked your photo</a>
                                        <small class="pull-right">
                                            <span class="livicon paddingright_10" data-n="timer" data-s="10"></span>
                                            2 July 2014
                                        </small>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img data-src="holder.js/35x35/#fff:#000" width="35" class="img-circle img-responsive pull-left" height="35" alt="riot">
                            <div class="riot">
                                <div>
                                    Riot
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
                                <p class="topprofiletext">Riot Zeast</p>
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
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas" style="background-color: rgb(84, 125, 121); min-height: 662px;">
            <section class="sidebar ">
                <div class="page-sidebar  sidebar-nav" style="background-color:#547d79;">
                    <div class="clearfix"></div>
                    <!-- BEGIN SIDEBAR MENU -->
                    <ul class="page-sidebar-menu" id="menu">
					<!-- Dashboard -->
                        <li >
                            <a href="http://localhost:8080/learning/index">
                                <i class="livicon" data-name="home" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
                                <span class="title">Dashboard</span>
                            </a>
                        </li>
					<!-- Dashboard -->
					<!-- System Setup -->
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="doc-portrait" data-size="18" data-c="#00bc8c" data-hc="#00bc8c" data-loop="true"></i>
                                <span class="title">System Setup</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="http://localhost:8080/learning/courses">
                                        <i class="fa fa-angle-double-right"></i>
                                        Course
                                    </a>
                                </li>
                                <li>
                                    <a href="http://localhost:8080/learning/courses category">
                                        <i class="fa fa-angle-double-right"></i>
                                        Course Category
                                    </a>
                                </li>
								<li>
                                    <a href="http://localhost:8080/learning/employee">
                                        <i class="fa fa-angle-double-right"></i>
                                        Employee
                                    </a>
                                </li>
                            </ul>
                        </li>
						<!-- System Setup -->
					
						<!-- Queries -->
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="table" data-size="18" data-c="#EF6F6C" data-hc="#EF6F6C" data-loop="true"></i>
                                <span class="title">Queries</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="http://localhost:8080/learning/list course">
                                        <i class="fa fa-angle-double-right"></i>
                                        List of Course
                                    </a>
                                </li>
                                <li>
                                    <a href="http://localhost:8080/learning/list courses category">
                                        <i class="fa fa-angle-double-right"></i>
                                        List of Course Category
                                    </a>
                                </li>
								<li>
                                    <a href="http://localhost:8080/learning/list employee">
                                        <i class="fa fa-angle-double-right"></i>
                                        List of Employee
                                    </a>
                                </li>
								<li>
                                    <a href="http://localhost:8080/learning/list user">
                                        <i class="fa fa-angle-double-right"></i>
                                        List of User
                                    </a>
                                </li>
                            </ul>
                        </li>
						<!-- Queries -->
						<!-- User Management -->
                        <li>
                            <a href="http://localhost:8080/learning/user management">
                                <i class="livicon" data-name="users" data-size="18" data-c="#F89A14" data-hc="#F89A14" data-loop="true"></i>
                                <span class="title">User Management</span>
                            </a>
                        </li>
					<!-- User Management -->
					<!-- Reports -->
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="barchart" data-size="18" data-c="#ff00ff" data-hc="#ff00ff" data-loop="true"></i>
                                <span class="title">Reports</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="http://localhost:8080/learning/enrollment">
                                        <i class="fa fa-angle-double-right"></i>
                                        Enrollment
                                    </a>
                                </li>
                              
                            </ul>
                        </li>
						<!-- Reports -->
						<!-- Utilities -->
                        <li>
                            <a href="#">
                                <i class="livicon" data-name="gears" data-size="18" data-c="#cfda08" data-hc="#cfda08" data-loop="true"></i>
                                <span class="title">Utilities</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="list course.html">
                                        <i class="fa fa-angle-double-right"></i>
                                         Backup Database
                                    </a>
                                </li>
                          
                            </ul>
                        </li>
						<!-- Utilities -->
						
                     </ul>
                </div>
				</section>
        </aside>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>Course</h1>
            </section>
			<!-- Form -->
			<form:form class="form-horizontal" action="courses/save" method="post" modelAttribute="CourseModel"><fieldset>
                                    <div class="col-md-6">
                                        <div class="panel panel-success">
                                            <div class="panel-heading">
                                            </div>
                                            <div class="panel-body">
                                                <form action="#" class="form-horizontal">
                                                    <div class="form-body">
                                                        <div class="form-group">
                                                            <label for="inputUsername" class="col-md-3 control-label">
                                                                Course Name
                                                                <span class='require'></span>
                                                            </label>
                                                            <div class="col-md-9">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">
                                                                        <i class="livicon" data-name="notebook" data-size="18" data-c="#000" data-hc="#000" data-loop="true"></i>
                                                                    </span>
                                                                    <input id="coursename" name="course_name" type="text" placeholder="Course Name" class="form-control"/>
																</div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputEmail" class="col-md-3 control-label">
                                                                Course Category Name
                                                                <span class='require'></span>
                                                            </label>
                                                             
                                                            <div class="col-md-9">
                                                          
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">
                                                                        <i class="livicon" data-name="inbox" data-size="18" data-c="#000" data-hc="#000" data-loop="true"></i>
                                                                    </span>
                                                                      <select  name="coursecategory_id" id="coursecategoryname"  class="form-control">
                                                          <c:forEach var="x" items="${list2}">
                                                          <option value="${x.coursecategory_id }">${x.coursecategory_name }</option>
                                                          </c:forEach>
                                                        </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputpassword" class="col-md-3 control-label">
                                                                Course Description
                                                                <span class='require'></span>
                                                            </label>
                                                            <div class="col-md-9">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">
                                                                        <i class="livicon" data-name="responsive-menu" data-size="16" data-loop="true" data-c="#000" data-hc="#000"></i>
                                                                    </span>
                                                                  <textarea id="coursedescription" name="course_description" type="text" placeholder="Course Description" class="form-control" ></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                           <div class="form-group">
                                                            <label for="inputpassword" class="col-md-3 control-label">
                                                                Course Outcome
                                                                <span class='require'></span>
                                                            </label>
                                                            <div class="col-md-9">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">
                                                                        <i class="livicon" data-name="thumbnails-small" data-size="16" data-loop="true" data-c="#000" data-hc="#000"></i>
                                                                    </span>
                                                                  <textarea id="courseoutcome" name="course_outcome" type="text" placeholder="Course Outcome" class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
													<div class="form-group">
                                                        <label class="col-md-3 control-label" for="name">Learning File</label>
															<div class="col-md-9">
																<div class="fileinput fileinput-new input-group" data-provides="fileinput">
																		<div class="form-control" data-trigger="fileinput">
																	<i class="glyphicon glyphicon-file fileinput-exists"></i>
																	<span class="fileinput-filename"></span>
																		</div>
																	<span class="input-group-addon btn btn-default btn-file">
																		<span class="fileinput-new" >Select file</span>
																		<span class="fileinput-exists">Change</span>
																		<input type="file" id = "learningfile" name="learningfile"/>
																	</span>
																	<a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
																</div>
															</div>
													</div>
													
													
                                                       
                                                    </div>
                                                    <div class="form-actions">
                                                        <div class="col-md-offset-3 col-md-9">
                                                            <button type="submit" class="btn btn-primary">Submit</button>
                                                            &nbsp;
                                                            <button type="button" class="btn btn-danger">Cancel</button>
                                                            &nbsp;
                                                            <input type="reset" class="btn btn-default hidden-xs" value="Reset"></div>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    </fieldset>
                                    </form:form>
									<!-- Form -->
									
                        <!-- Tables -->
                     <div class="col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Course Name</th>
                                                <th>Course Description</th>
                                                <th>Course Outcome</th>
             					                <th>File</th>
												<th>Course Category Name</th>  
												<th>Action</th>    
												
												
                                            </tr>
                                        </thead>
                                       <tbody>
											   <c:forEach var="g" items="${list}">
                                      			    <tr>
                            			                <td>${g.course_id }</td>
			                                            <td>${g.course_name }</td>	
			                                            <td>${g.course_description }</td>	
			                                            <td>${g.course_outcome }</td>	
			                                            <td>${g.learningfile }</td>
			                                             <td>${g.coursecategory_name }</td>	
			                                             
			                                          	
			                                           <td>
                                               <button class="btn btn-success" href="#responsive" data-toggle="modal" data-id="${g.course_id  }" data-coursename="${g.course_name}" data-coursedescription="${g.course_description}" data-courseoutcome="${g.course_outcome}"> Edit</button>	
                                                   	
														 <a class="btn btn-danger" type="button"  onclick="bura(${g.course_id})">
                                                        Delete
                                                    </a>
                                                </td>
			                                        </tr>
			                                    </c:forEach>	
			                                  												
										</tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
					</div>
					<!-- Tables -->
		
						<!--- responsive modal -->
				<form:form class="form-horizontal" id="updateForm" action="courses/update" method="post" modelAttribute="CourseModel"><fieldset>
                <div class="modal fade in" id="responsive" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                                <h4>Edit</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <!-- <h4>Some More data</h4> -->
                                         <p> 
                                           <input id="courseid" name="course_id" class="form-control" type="hidden" />
                                        </p>
                                        
                                         <p>
                                        	
                                           <input id="coursename" name="course_name" type="text" placeholder="Course Name" class="form-control"/>
                                        </p>
                                        
                                        <p>
                                        	
                                          <select  name="coursecategory_id" id="coursecategoryname"  class="form-control">
                                                          <c:forEach var="x" items="${list2}">
                                                          <option value="${x.coursecategory_id }">${x.coursecategory_name }</option>
                                                          </c:forEach>
                                                        </select>
                                        </p>
                                        <p>
                                           <textarea id="coursedescription" name="course_description" type="text" placeholder="Course Description" class="form-control"></textarea>
                                        </p>
                                        
                                        <p>
                                           <textarea id="courseoutcome" name="course_outcome" type="text" placeholder="Course Outcome" class="form-control"></textarea>
                                        </p>
                                        <p>
                                           <div class="fileinput fileinput-new input-group" data-provides="fileinput">
																		<div class="form-control" data-trigger="fileinput">
																	<i class="glyphicon glyphicon-file fileinput-exists"></i>
																	<span class="fileinput-filename"></span>
																		</div>
																	<span class="input-group-addon btn btn-default btn-file">
																		<span class="fileinput-new" >Select file</span>
																		<span class="fileinput-exists">Change</span>
																		<input type="file" id = "learningfile" name="learningfile"/>
																	</span>
																	<a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
																</div>
                                        </p>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                </fieldset>
			      	</form:form>
					<!-- END modal-->
        </aside>
        <!-- right-side -->
	</div>
		
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <!-- global js -->
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"> </script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <!--livicons-->
    <script type="text/javascript" src="<c:url value="/resources/vendors/livicons/minified/raphael-min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/livicons/minified/livicons-1.4.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/josh.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/js/metisMenu.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/holder-master/holder.js"/>"> </script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <script src="<c:url value="/resources/vendors/jasny-bootstrap/js/jasny-bootstrap.js"/>"></script>
    <!-- end of page level js -->
	<!-- begining of page level js -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/select2.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/jquery.dataTables.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/vendors/datatables/dataTables.bootstrap.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resources/js/pages/table-editable.js"/>"> </script>
    <!-- end of page level js -->
	<!-- begining of page level js -->
    <script src="<c:url value="/resources/vendors/modal/js/classie.js"/>"></script>
    <script src="<c:url value="/resources/vendors/modal/js/modalEffects.js"/>"> </script>
    <!-- end of page level js -->
    <script>
    
    $('#responsive').on('show.bs.modal', function (e) {
     	  // get information to update quickly to modal view as loading begins
     	  var opener=e.relatedTarget;//this holds the element who called the modal
     	   
     	  //we get details from attributes
     	  var courseid=$(opener).attr('data-id');
     	  var coursename=$(opener).attr('data-coursename');
     	  var coursedescription=$(opener).attr('data-coursedescription');
     	 var courseoutcome=$(opener).attr('data-courseoutcome');
     
     	 
     	

     	  //set what we got to our form
  	  	  $('#updateForm').find('[id="courseid"]').val(courseid);
       	  $('#updateForm').find('[id="coursename"]').val(coursename);
       	  $('#updateForm').find('[id="coursedescription"]').val(coursedescription);
    	  $('#updateForm').find('[id="courseoutcome"]').val(courseoutcome);
       	  
       	 
     	});
       
    
    
    
    
      function bura(x){
			if(confirm("Are you sure you want to delete?") == true){
				window.location.href = 'courses/delete/'+x;
			}
			else{
				
			}
		}
      
      </script>
</body>
</html>