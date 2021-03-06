<!DOCTYPE html>
<html>
<head>
   
	<meta charset="UTF-8">
    <title>Requests</title>
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
    <link href="${pageContext.request.	contextPath}/resources/vendors/select2/select2.css" rel="stylesheet" />
	
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

<%@include file="../includes/sidebar-depthead.jsp" %>
 
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>Requests</h1>
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
                            Requests
                        </a>
                    </li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                <!--main content-->
         
          <div class="col-lg-12 col-md-6 col-sm-6">
                       <div class="panel panel-plain">
                            <div class="panel-heading">
                                <h3 class="panel-title" style="height:35px;">
                                    <i class="livicon" data-name="list" data-size="16" data-c="#000" data-hc="#555">                 
                                    </i>
                                 	  &nbsp;REQUESTS
                                 </h3>  
                            </div>
                            <div class="panel-body">
                           		
                                    <table class="table table-striped table-responsive" id="table1">
                                        <thead>
                                            <tr>
                                            	<th style="text-align:left;">Name</th>
                                               	<th style="text-align:left;">Working Days</th>
                                                <th style="text-align:left;">Shift Time</th>
                                                <th style="text-align:left;">Status</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                         <c:forEach var="e" items="${pendingList}">
                                            <tr>
                                            	<td>${e.empName}</td>
                                                <td>${e.workingDays}</td>
                                               	<td>${e.shiftTime}</td>
                                                <td><span class="label label-sm label-info">${e.schedStatus}</span></td>
                                                <td style="text-align:center;">
	                                            	<button class="btn btn-success btn-small" href="#sapprove" data-toggle="modal" data-target="#sapprove" ss="${e.schedStatus}" eid="${e.empId}">
										  			<i class="glyphicon glyphicon-ok"></i>
													</button>
													<button class="btn btn-danger btn-small" href="#sdisapprove" data-toggle="modal" data-target="#sdisapprove"  ss="${e.schedStatus}" eid="${e.empId}">
										  			<i class="glyphicon glyphicon-remove"></i>
													</button>
                                           		</td>
                                           		
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>	
                                </div>
                             </div>
                             
                             
                             <div class="col-lg-12 col-md-6 col-sm-6">
                       <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="list" data-size="16" data-c="#fff" data-hc="white">                 
                                    </i>
                                 	Manage Requests
                                			<a class="btn-group btn-group-xs pull-right">
	                                            <button class="btn btn-primary" id="daterange-btn">
	                                                <i class="fa fa-calendar"></i>
	                                                &nbsp;Filter Date
	                                                <i class="fa fa-caret-down"></i>
	                                            </button>
                                            </a>
                                </h3>
                                       
                                
                            </div>
                            <div class="panel-body">
                               <table class="table table-striped table-responsive" id="table2">
                                 <thead>
                                           <tr>
                                               <th style="text-align:left;">Name</th>
                                               	<th style="text-align:left;">Working Days</th>
                                                <th style="text-align:left;">Shift Time</th>
                                                <th style="text-align:left;">Status</th>
                                                 <th style="text-align:left;">Date Evaluated</th>
                                                <th></th>
                                            </tr>
                                    </thead>
                                     <tbody>
                           		     
                           		     <c:forEach var="e" items="${pendingList2}">
                                            <tr>
                                            	<td>${e.empName}</td>
                                                <td>${e.workingDays}</td>
                                               	<td>${e.shiftTime}</td>
                                                <td>${e.schedStatus}</td>
                                                <td>${e.dateEval}</td>
                                                <td style="text-align:center;">
	                                            	<button class="btn btn-default btn-small">
										  			<i class="glyphicon glyphicon-eye-open"></i>
													</button>
                                           		</td>
                                           		
                                            </tr>
                                            </c:forEach>
                           		     
                                  </tbody>
                                  </table>
                                </div>	
                                </div>
                             </div>
                             
                             
               <div class="modal fade" id="viewDetails" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           <i class="fa fa-info-circle"></i>
                           Request Details
                        </h4>
                     </div>
                     <div class="modal-body">
                           	<fieldset>
                                <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Name:</label>
                                       <span>Lebrown James</span>
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Position:</label>
                                       <span>Forward</span>
                                       </div>
                                 </div>
                             	 </div>
                             	 <hr>
                             	 <div class="row">
                                 <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                       <label>Requested Schedule Days:</label><br/>
                                       <span>Monday, Tuesday, Wednesday, Friday, Saturday</span>
                                    </div>
                                 </div>
                             	 </div>
                             	 <hr>
                             	 <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Shift:</label>
                                       <span>8:00am - 5:00pm</span>
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Request Status:</label>
                                       <span>Pending</span>
                                       </div>
                                 </div>
                             	 </div>
                                 
                              </fieldset>
                             
                     </div>
                  </div>
               </div>
            </div>
                             
                           <form:form class="form-horizontal" method="post" action="edit" modelAttribute="sapproves" id="updateForm">
                       		<div class="modal fade" id="sapprove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                               <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">
                                        <i class="fa fa-question-circle"></i> Confirmation
                                        </h4>
                                    </div>
                          <div class="modal-body">
                          <h5 style="text-align: center;">Are you sure you want to approve this request?</h5>
                    	   <fieldset> 
								<input style="display:none;"  id="empId" name="empId" ></input>
								<input style="display:none;"  id="schedStatus" name="schedStatus"  value="APPROVED"></input>
							</fieldset>
					       </div>
	                       <div class="modal-footer">
								<button id="buttonsubmit" name="buttonsubmit"
									class="btn btn-success">Approve</button>
								<button type="button" data-dismiss="modal" class="btn">Cancel</button>
							</div>
                      </div>
                                </div>
                                </div>
                                </form:form>  
        
        			<form:form class="form-horizontal" method="post" action="edit1" modelAttribute="sdisapproves" id="updateForm1">
                    <div class="modal fade" id="sdisapprove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                               <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">
                                        <i class="fa fa-question-circle"></i> Confirmation
                                        </h4>
                                    </div>
                        <div class="modal-body">
                        <h5 style="text-align: center;">Are you sure you want to disapprove this request?</h5>
                    	<fieldset> 
							<input style="display:none;"  id="empId" name="empId" ></input>
							<input style="display:none;"  id="sched_Status" name="schedStatus"  value="DISAPPROVED"></input>
						</fieldset>
					    </div>
	                    <div class="modal-footer">
							<button id="buttonsubmit" name="buttonsubmit"
								class="btn btn-success">Disapprove</button>
							<button type="button" data-dismiss="modal" class="btn">Cancel</button>
						</div>
                     	 </div>
                                </div>
                                </div>
                      
					  </form:form> 
                        
                        
                        
                <!--main content ends--> </section>
            <!-- content --> </aside>
        <!-- right-side --> </div>
        
        
        				
                    
                                
      <%@include file="../includes/footer.jsp" %>
     
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    
    <script>
    $('#sapprove').on('show.bs.modal', function (e) {
      	  // get information to update quickly to modal view as loading begins
      	  var opener=e.relatedTarget;//this holds the element who called the modal
      	   
      	  //we get details from attributes
      	  var empId=$(opener).attr('eid');
      	  var schedStatus=$(opener).attr('ss');
      	  
      	$('#updateForm').find('[id="empId"]').val(empId);
    	document.getElementById('schedStatus').value = 'APPROVED';
        $('#updateForm').find('[id="sapproved"]').val(schedStatus);
         });
    
    $('#sdisapprove').on('show.bs.modal', function (e) {
    	  // get information to update quickly to modal view as loading begins
    	  var opener=e.relatedTarget;//this holds the element who called the modal
    	   
    	  //we get details from attributes
    	  var empId=$(opener).attr('eid');
    	  var schedStatus=$(opener).attr('ss');
    	  
    $('#updateForm1').find('[id="empId"]').val(empId);
  	document.getElementById('sched_Status').value = 'DISAPPROVED';
    $('#updateForm1').find('[id="sdisapproved"]').val(sched_Status);
    });
    
    $('#sdisapprove').on('show.bs.modal', function (e) {
  	  // get information to update quickly to modal view as loading begins
  	  var opener=e.relatedTarget;//this holds the element who called the modal
  	   
  	  //we get details from attributes
  	  var empId=$(opener).attr('eid');
  	  var schedStatus=$(opener).attr('ss');
  	  
    });
  	  
    </script>
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
   
    
    
    
</body>
</html>