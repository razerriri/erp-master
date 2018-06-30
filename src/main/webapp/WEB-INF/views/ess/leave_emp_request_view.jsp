<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<meta charset="UTF-8">
    <%@ include file="../includes/head.jsp" %>
  	<!-- advanced dataTables -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pages/tables.css">
       
    <title>${viewTitle}</title>
</head>
<body class="skin-josh">
<%@ include file="../includes/header.jsp" %>

<%@include file="../includes/sidebar-employee.jsp" %>

<!-- Right side column. Contains the navbar and content of the page -->
		<div class="wrapper row-offcanvas row-offcanvas-left">
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Leave Requisition</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Human Resources Management System
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
						<div class="panel panel-white">
							<!-- PANEL BODY START -->
                            <div class="panel-body">
                                <div class="table-toolbar">
                                    <div class="btn-group">
                                        <button class="btn btn-primary" data-toggle="modal" data-href="#modalLeaveReq" href="#modalLeaveReq">
                                            Request Leave<i class="fa fa-plus"></i>
                                        </button>
                                    </div>
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
                                </div>
                                <div class="">
                                    <table class="table table-striped table-bordered table-advance table-hover" id="table1" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th>Date Applied</th>
                                                <th>Leave Type</th>
                                                <th>Start Date</th>
                                                <th>End Date</th>
                                            	<th>Duration</th>
												<th>Status</th>
                                            <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                                        <c:forEach var="req" items="${listEmpRequest}">
	                                        <tr role="row">
	                                        	<td>${req.leaveFile}</td>
	                                        	<td>${req.leaveTypeName}</td>
	                                        	<td>${req.leaveStart}</td>
	                                        	<td>${req.leaveEnd}</td>
	                                        	<td>${req.leaveDays}</td>
	                                        	<td>${req.leaveStatus}</td>
	                                        	<td style="text-align: center">
													<button href="#modalViewReq" class="btn btn-success" data-toggle="modal" data-target="#modalViewReq" req_id="${req.empLeaveReqID}" emp_id="${req.reqEmpID}" emp_name="${req.reqEmpName}" lve_ti="${req.leaveTypeID}" lve_tn="${req.leaveTypeName}"  lve_sd="${req.leaveStart}" lve_ed="${req.leaveEnd}" lve_nd="${req.leaveDays}" lve_rs="${req.leaveReason}" lve_rm="${req.leaveRemarks}" lve_s="${req.leaveStatus}" lve_fd="${req.leaveFile}">
													<span class="glyphicon glyphicon-eye-open"></span> 
													</button>
													<button href="#" class="btn btn-danger" onclick="confirmDelete(${req.empLeaveReqID})">
											    	<span class="glyphicon glyphicon-trash"></span> 
											        </button>
												</td>

	                                        </tr>
	                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END TABLE-->
                                <%@ include file="request_modal.jsp" %>
                                <%@ include file="request_m_view.jsp" %>
                                
                            </div>
							<!-- PANEL BODY END -->
                        </div>
                    </div>
                </div>
            </section>
		</aside>
        <!-- right-side -->
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
	</div>
	
<%@include file="../includes/footer.jsp" %> 
<!-- advanced dataTables -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>

</body>
</html>
<script>
 	function confirmDelete(x){
 		if(confirm("Are you sure you want to delete this leave request?") == true){
 			window.location.href = 'http://localhost:8080/erp/deleteLeaveReq/'+ x;
 		}
 		else{
 			
 		}
 	}

 		
	$('#modalViewReq').on('show.bs.modal', function (e) {
 	// get information to update quickly to modal view as loading begins
 	var opener=e.relatedTarget;//this holds the element who called the modal
    	   
	//we get details from attributes
	var req_id=$(opener).attr('req_id');
	var emp_id=$(opener).attr('emp_id');
	var emp_name=$(opener).attr('emp_name');
	var lve_ti=$(opener).attr('lve_ti');
	var lve_sd=$(opener).attr('lve_sd');
	var lve_ed=$(opener).attr('lve_ed');
	var lve_nd=$(opener).attr('lve_nd');
  	var lve_rs=$(opener).attr('lve_rs');
  	var lve_rm=$(opener).attr('lve_rm');
  	var lve_s=$(opener).attr('lve_s');
	var lve_fd=$(opener).attr('lve_fd');
  	  	  

	//set what we got to our form
  	$('#viewForm').find('[id="empLeaveReqID"]').val(req_id);
	$('#viewForm').find('[id="reqEmpName"]').val(emp_name);
  	$('#viewForm').find('[id="leaveTypeID"]').val(lve_ti);
  	$('#viewForm').find('[id="leaveStart"]').val(lve_sd);
  	$('#viewForm').find('[id="leaveEnd"]').val(lve_ed);
	$('#viewForm').find('[id="leaveDuration"]').val(lve_nd);
  	$('#viewForm').find('[id="leaveReason"]').val(lve_rs);
  	$('#viewForm').find('[id="leaveRemarks"]').val(lve_rm);
  	$('#viewForm').find('[id="leaveStatus"]').val(lve_s); 
    $('#viewForm').find('[id="leaveFile"]').val(lve_fd);
  	
  	
    });
 </script>

		
