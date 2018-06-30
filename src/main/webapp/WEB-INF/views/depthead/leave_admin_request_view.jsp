<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<meta charset="UTF-8">
	<%@ include file="../includes/head.jsp" %>
	<!-- advanced -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css">
    <title>${viewTitle}</title>
</head>
<body class="skin-josh">
<%@ include file="../includes/header.jsp" %>

<%@include file="../includes/sidebar-depthead.jsp" %>

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
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                   
                                   	${dateToday}
                                </h3>
                            </div>
                            <div class="panel-body">
                                <div class="box-body">
                                    <ul class="list-unstyled">
										<ul>
											<c:forEach var="b" items="${listToday}">
											<li><i class="fa fa-fw fa-circle-o"></i>${b.dayEmp}</li>
											</c:forEach>
										</ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                   
                                    ${dateTom}
                                </h3>
                            </div>
                            <div class="panel-body">
                                <div class="box-body">
                                    <ul class="list-unstyled">
										<ul>
											<c:forEach var="b" items="${listTomorrow}">
											<li><i class="fa fa-fw fa-circle-o" style="margin:right:2px"></i>${b.dayEmp}</li>
											</c:forEach>
										</ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    
                                   	${dateNext}
                                </h3>
                            </div>
                            <div class="panel-body">
                                <div class="box-body">
                                    <ul class="list-unstyled">
										<ul>
											<c:forEach var="b" items="${listNext}">
											<li><i class="fa fa-fw fa-circle-o"></i>${b.dayEmp}</li>
											</c:forEach>
										</ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
						<div class="panel panel-white">
							<!-- PANEL BODY START -->
						
                            <div class="panel-body">
                                <div>
                                    <table class="table table-striped table-responsive" id="table1">
                                        <thead>
                                            <tr role="row">
                                                <th>Date Applied</th>
                                                <th>Employee Name</th>
                                                <th>Leave Type</th>
                                                <th>Start Date</th>
                                                <th>End Date</th>
                                                <th>Duration</th>
												<th>Status</th>
                                            <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                                        <c:forEach var="req" items="${listRequest}">
	                                        <tr role="row">
	                                        	<td>${req.leaveFile}</td>
	                                        	<td>${req.reqEmpName}</td>
	                                        	<td>${req.leaveTypeName}</td>
	                                        	<td>${req.leaveStart}</td>
	                                        	<td>${req.leaveEnd}</td>
	                                        	<td>${req.leaveDays}</td>
	                                        	<td>${req.leaveStatus}</td>
	                                        	<td style="text-align: center">
													<button href="#modalUpdateReq" class="btn btn-success" data-toggle="modal" data-target="#modalUpdateReq" req_id="${req.empLeaveReqID}" emp_id="${req.reqEmpID}" emp_name="${req.reqEmpName}" lve_ti="${req.leaveTypeID}" lve_tn="${req.leaveTypeName}"  lve_sd="${req.leaveStart}" lve_ed="${req.leaveEnd}" lve_nd="${req.leaveDays}" lve_rs="${req.leaveReason}" lve_rm="${req.leaveRemarks}" lve_s="${req.leaveStatus}" lve_fd="${req.leaveFile}">
													<span class="glyphicon glyphicon-pencil"></span> 
													</button>
													<button href="#" class="btn btn-danger" onclick="confirmDelete()">
											    	<span class="glyphicon glyphicon-trash"></span> 
											        </button>
												</td>
	                                        </tr>
	                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END TABLE-->
                                <%@ include file="request_m_update.jsp" %>
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
	<!-- advanced tables -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script></html>
	<script>
		$('#modalUpdateReq').on('show.bs.modal', function (e) {
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
		
		if(lve_s=='Approved' || lve_s=='Disapproved'){
			document.getElementById('btnLApprove').style.visibility = 'hidden';
			document.getElementById('btnLDisapprove').style.visibility = 'hidden';
			document.getElementById('mFooter').style.visibility = 'hidden';
		}
		else if(lve_s=='Pending'){
			document.getElementById('btnLApprove').style.visibility = 'visible';
			document.getElementById('btnLDisapprove').style.visibility = 'visible';
			document.getElementById('mFooter').style.visibility = 'visible';
		}
	  	  	  

		//set what we got to our form
	  	$('#updateReqForm').find('[id="empLeaveReqID"]').val(req_id);
		$('#updateReqForm').find('[id="reqEmpID"]').val(emp_id);
		$('#updateReqForm').find('[id="reqEmpName"]').val(emp_name);
	  	$('#updateReqForm').find('[id="leaveTypeID"]').val(lve_ti);
	  	$('#updateReqForm').find('[id="leaveStart"]').val(lve_sd);
	  	$('#updateReqForm').find('[id="leaveEnd"]').val(lve_ed);
		$('#updateReqForm').find('[id="leaveDays"]').val(lve_nd);
	  	$('#updateReqForm').find('[id="leaveReason"]').val(lve_rs);
	  	$('#updateReqForm').find('[id="leaveRemarks"]').val(lve_rm);
	  	$('#updateReqForm').find('[id="leaveStatus"]').val(lve_s); 
       	$('#updateReqForm').find('[id="leaveFile"]').val(lve_fd);
	  	
	  	
     	});
  	</script>


		
