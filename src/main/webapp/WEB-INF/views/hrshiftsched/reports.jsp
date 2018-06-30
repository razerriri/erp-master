<!DOCTYPE html>
<html>
<head>
   
	<meta charset="UTF-8">
    <title>Reports</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/icon-logo.png" type="image/x-icon">
    <%@ include file="../includes/head.jsp" %>
   
    <!-- global css -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="${pageContext.request.contextPath}/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="${pageContext.request.contextPath}/resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>
    <!-- end of global css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/vendors/select2/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/select2/select2-bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/Buttons-master/css/buttons.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/buttons.css" />
	
	<link href="${pageContext.request.contextPath}/resources/vendors/select2/select2.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/select2/select2-bootstrap.css" />
    <!--clock face css-->
    <link href="${pageContext.request.contextPath}/resources/vendors/iCheck/skins/all.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/formelements.css" rel="stylesheet" />
    <!--end of page level css-->
	
    <!--end of page level css-->
</head>
<body class="skin-josh">

<%@ include file="../includes/header.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@include file="../includes/sidebar-hr-manager.jsp" %>
 
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>Reports</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="livicon" data-name="dashboard" data-size="14" data-loop="true"></i>
                            Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="list" data-size="14" data-loop="true"></i>
                            Reports
                        </a>
                    </li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                <!--main content-->
         
          <div class="col-lg-12 col-md-6 col-sm-6">
                       <div class="panel panel-plain filterable">
                            <div class="panel-heading">
                                <h3 class="panel-title" style="height:35px;">
                                    <i class="livicon" data-name="list" data-size="16" data-c="#000" data-hc="#555">                 
                                    </i>
                                 	  &nbsp;Published Schedules
                  <div class="button-dropdown pull-right" data-buttons="dropdown">
	          		<a href="" target="" class="btn btn-default button-alignment btn-Primary" style="margin-bottom:10px;margin-left:15px;"><i class="fa fa-print"></i> Print Schedule
	          		&nbsp;<i class="fa fa-caret-down"></i>
	          		</a>
            		<ul class="button-dropdown-menu-below">
                   
                    <li class="button-dropdown-divider">
                        <a>Daily</a>
                    </li>
                    
                     <li class="button-dropdown-divider">
                     	<a>Weekly</a>
                     </li>
                      
                     <li class="button-dropdown-divider">
                      <a>Monthly</a>
            		 </li>
                                                 
      			 </ul>
      			 </div>
                                 </h3>  
                            </div>
                            <div class="panel-body">
                           		 <table class="table table-striped table-responsive">
                                        <thead>
                                            <tr>
                                               	<th style="text-align:left;">Name</th>
                                                <th style="text-align:left;">Position</th>
                                                <th style="text-align:left;">Department</th>
                                                <th style="text-align:left;">Working Days</th>
                                                <th style="text-align:left;">Shift</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="e" items="${approvedlist2}">
                                            <tr>
                                                <td>${e.empName}</td>
                                               	<td>${e.jobName}</td>
                                                <td>${e.deptName}</td>
                                                <td>${e.workingDays}</td>
                                                <td>${e.shiftTime}</td>
                                                
                                            </tr>
                                    	</c:forEach>
                                        </tbody>
                                    </table>
                                </div>	
                                </div>
                             </div>
                        
                <!--main content ends--> </section>
            <!-- content --> </aside>
        <!-- right-side --> </div>
        
      <%@include file="../includes/footer.jsp" %>
     
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <!-- global js -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="${pageContext.request.contextPath}/resources/vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/josh.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/metisMenu.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendors/select2/select2.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/pages/formelements.js" type="text/javascript"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/Buttons-master/js/vendor/scrollto.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/Buttons-master/js/main.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/Buttons-master/js/buttons.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/select2/select2.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/tags/dist/bootstrap-tagsinput.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pages/formelements.js" type="text/javascript"></script>
    
    
    
</body>
</html>