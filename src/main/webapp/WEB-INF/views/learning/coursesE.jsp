<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Form Examples | Josh Admin Template</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
   <!-- global css -->
    <link href="<c:url value="/resourcess/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
   <!-- font Awesome -->
    <link href="<c:url value="/resourcess/vendors/font-awesome-4.2.0/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resourcess/css/styles/black.css"/>" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="<c:url value="/resourcess/css/panel.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resourcess/css/metisMenu.css"/>" rel="stylesheet" type="text/css"/>    
    <!-- end of global css -->  
    <!--page level css -->
    <link href="<c:url value="/resourcess/vendors/jasny-bootstrap/css/jasny-bootstrap.css"/>" rel="stylesheet" />
    <!--end of page level css-->
	 <!--page level css -->
	<link  href="<c:url value="/resourcess/vendors/datatables/css/select2.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resourcess/vendors/datatables/css/dataTables.bootstrap.css"/>" rel="stylesheet" type="text/css"  />
    <link href="<c:url value="/resourcess/css/pages/tables.css"/>" rel="stylesheet" type="text/css" />
    <!--end of page level css-->
	<!--page level css -->
	<link href="<c:url value="/resourcess/modal/css/component.css"	/>" rel="stylesheet" />
    <!--end of page level css-->

</head>
<body class="skin-josh">
    <header class="header">
        <a href="index.html" class="logo">
            <img src="<c:url value="/resources/img/logo.png"/>" alt="logo"></a>
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
                        <li>
                            <a href="http://localhost:8080/learning/indexE">
                                <i class="livicon" data-name="home" data-size="18" data-c="#418BCA" data-hc="#418BCA" data-loop="true"></i>
                                <span class="title">Dashboard</span>
                            </a>
                        </li>
					<!-- Dashboard -->
					<!-- Course -->
					 <li>
                            <a href="http://localhost:8080/learning/coursesE">
                                <i class="livicon" data-name="doc-portrait" data-size="18" data-c="#EF6F6C" data-hc="#EF6F6C" data-loop="true"></i>
                                <span class="title">Courses</span>
                            </a>
                        </li>
						<!-- System Setup -->
						<!-- Queries -->
                         <li>
                            <a href="http://localhost:8080/learning/progressE">
                                <i class="livicon" data-name="barchart" data-size="18" data-c="#f79a14" data-hc="#f79a14" data-loop="true"></i>
                                <span class="title">Progress</span>
                            </a>
                        </li>
						<!-- Queries -->
						
                     </ul>
                    <!-- END SIDEBAR MENU -->
                     </ul>
                </div>
            </section>
        </aside>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>Courses</h1>
            </section>
                        <!-- Tables -->
                        <!-- BEGIN BORDERED TABLE PORTLET-->
                     <div class="col-md-6">
                        <div class="portlet box danger">
                            <div class="portlet-title">
                                <div class="caption">
                                   <!--  <i class="livicon" data-name="wifi" data-size="16" data-loop="true" data-c="#fff" data-hc="white"> --></i>
                                    <!-- Bordered Table -->
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-scrollable">
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Course Name</th>
                                                
                                                <th>File</th>
                                                
												<th>Course Category Name</th>   
												                                             
												<th></th>
                                            </tr>
                                        </thead>
                                  <tbody>
											   <c:forEach var="g" items="${list}">
                                      			    <tr>
                            			                <td>${g.course_id }</td>
			                                            <td>${g.course_name }</td>	
			                                         	
			                                            <td>${g.learningfile }</td>
			                                             <td>${g.coursecategory_name }</td>	
			                                             
			                                         <td>
													 
													 <a class="btn btn-primary btn-large" data-toggle="modal" data-href="#stack1" href="#stack1" data-coursedescription="${g.course_description}" data-courseoutcome="${g.course_outcome}" >View Course</a>
                                                </td>
			                                        </tr>
			                                    </c:forEach>	
			                                  												
										</tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
					</div>
					 <!-- modal-->
					 <form:form class="form-horizontal" id="updateForm" action="courses/update" method="post" modelAttribute="CourseModel">
				<fieldset>
					<div class="modal fade bs-example-modal-sm in" id="stack1" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                     
                    <div class="modal-dialog modal-lg">
                    
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="signal" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                   Course Details
                                </h3>
                                <span class="pull-right clickable">
                                    <i class="glyphicon glyphicon-chevron-up"></i>
                                </span>
                            </div>
                            <div class="panel-body">
                                <!-- Custom Tabs -->
                                <div class="nav-tabs-custom">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#tab_1" data-toggle="tab">Description</a>
                                        </li>
                                        <li>
                                            <a href="#tab_2" data-toggle="tab">Outcome</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content" id="slim2">
                                        <div class="tab-pane active" id="tab_1">
                                             <textarea style= "height: 150px"  id="coursedescription" name="course_description"   class="form-control" disabled  ></textarea>	
                                        </div>
                                        <!-- /.tab-pane -->
                                        <div class="tab-pane" id="tab_2">
                                           <textarea style= "height: 150px"  id="courseoutcome" name="course_outcome"  class="form-control" disabled  > </textarea>
                                        </div>
                                        <!-- /.tab-pane -->
                                    </div>
                                    <!-- /.tab-content -->
                                </div>
                                <!-- nav-tabs-custom -->
                            </div>
                        </div>
                        
                            <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                                <button type="button" class="btn btn-primary">Start Course</button>
                            </div>
                        </div>
                      
                    </div>
			 	       </fieldset>
			      	</form:form>
                </div>
				<!-- modal-->
					
					
                        <!-- END BORDERED TABLE PORTLET-->
						<!-- Tables -->
        </aside>
        <!-- right-side -->
	</div>
		
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
     <!-- global js -->
    <script src="<c:url value="/resourcess/js/jquery-1.11.1.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resourcess/js/bootstrap.min.js"/>" type="text/javascript"> </script>
    <!--livicons-->
    <script src="<c:url value="/resourcess/vendors/livicons/minified/raphael-min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resourcess/vendors/livicons/minified/livicons-1.4.min.js"/>" type="text/javascript"></script>
   <script src="<c:url value="/resourcess/js/josh.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resourcess/js/metisMenu.js"/>" type="text/javascript"> </script>
    <script src="<c:url value="/resourcess/vendors/holder-master/holder.js"/>" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
     <script src="<c:url value="/resourcess/vendors/jasny-bootstrap/js/jasny-bootstrap.js"/>"></script>
    <!-- end of page level js -->
	    <!-- begining of page level js -->
   <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script type="text/javascript" src="<c:url value="/resourcess/vendors/datatables/select2.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resourcess/vendors/datatables/jquery.dataTables.min.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resourcess/vendors/datatables/dataTables.bootstrap.js"/>"> </script>
    <script type="text/javascript" src="<c:url value="/resourcess/js/pages/table-editable.js"/>"> </script>
    <!-- end of page level js -->
	   <!-- begining of page level js -->
    <script src="<c:url value="/resourcess/vendors/modal/js/classie.js"/>"> </script>
    <script src="<c:url value="/resourcess/vendors/modal/js/modalEffects.js"/>"> </script>
    <!-- end of page level js -->
	  <script>
    
    $('#stack1').on('show.bs.modal', function (e) {
     	  // get information to update quickly to modal view as loading begins
     	  var opener=e.relatedTarget;//this holds the element who called the modal
     	   
     	
     	  var coursedescription=$(opener).attr('data-coursedescription');
     	 var courseoutcome=$(opener).attr('data-courseoutcome');
     	 $('#updateForm').find('[id="coursedescription"]').val(coursedescription);
       	  $('#updateForm').find('[id="courseoutcome"]').val(courseoutcome);
       	  
       	 
     	});
		</script>
	 
</body>
</html>