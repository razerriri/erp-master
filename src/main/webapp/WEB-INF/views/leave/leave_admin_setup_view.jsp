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
<body class="skin-josh">
<%@ include file="../includes/header.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@include file="../includes/sidebar-sysadmin.jsp" %>
	
        <!-- Right side column. Contains the navbar and content of the page -->
		<div class="wrapper row-offcanvas row-offcanvas-left">
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Leave Settings</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="resources/#">
                            <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Human Resources Management System
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
                <!-- Second Data Table -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-white panel-border">
                            <div class="panel-body">
                                
									<div class="table-toolbar">
										<button class="btn btn-primary" data-toggle="modal" data-href="#mAddLeave" href="#mAddLeave">
											Add Leave Type
											<i class="fa fa-plus"></i>
										</button>
									</div>
									<div>
										<table class="table table-striped table-bordered table-advance table-hover" id="table1" role="grid">
											<thead>
												<tr role="row">
													<th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:15%">Leave Name</th>
													<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Full Name
												: activate to sort column ascending" style="width: 5%;">Code</th>
													<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Points
												: activate to sort column ascending" style="width: 10%;">Type</th>
													<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Delete
												: activate to sort column ascending" style="width: 10%;">Leave Period</th>
												<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Edit
												: activate to sort column ascending" style="width: 20%;">Accrue Date</th>
													<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Delete
												: activate to sort column ascending" style="width: 10%;">Leave Count</th>
													<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
													 Delete
												: activate to sort column ascending" style="width: 12%;">Action</th>
											</thead>
											<tbody>
												<c:forEach var="lve" items="${listLeave}">
		                                        <tr>
		                                        	<td>${lve.leaveName}</td>
		                                        	<td>${lve.leaveCode}</td>
		                                        	<td>${lve.leaveType}</td>
		                                        	<td>${lve.leavePeriod}</td>
		                                        	<td>${lve.leaveAccrue}</td>
		                                        	<td>${lve.leaveCount}</td>
		                                        	<td>
														<button href="#modalUpdateLeave" class="btn btn-success" data-toggle="modal" data-target="#modalUpdateLeave" id="${lve.leaveID}" name="${lve.leaveName}" code="${lve.leaveCode}" type="${lve.leaveType}" role="${lve.leaveRole}" loc="${lve.leaveLocation}" gen="${lve.leaveGender}" mar="${lve.leaveMarital}" per="${lve.leavePeriod}" cnt="${lve.leaveCount}" acc="${lve.leaveAccrue}" app="${lve.leaveApply}" mcon="${lve.leaveMaxCon}" prob="${lve.leaveProbation}" wait="${lve.leaveWaiting}" intl="${lve.leaveInitial}" admin="${lve.leaveAdmin}" exc="${lve.leaveExceed}" cf="${lve.leaveCF}" mcf="${lve.leaveMaxCF}" ltime="${lve.leaveLifetime}">
															<span class="fa fa-pencil"></span>
														</button>
														<button type="button" class="btn btn-xs btn-danger"  onclick="confirmDelete(${lve.leaveID})">
															<span class="fa fa-trash"></span>
														</button>
													</td>
		                                        </tr>
		                                        </c:forEach>
											</tbody>
										</table>
									</div>
									
								<%@ include file="setup_modals.jsp" %>
								<%@ include file="setup_update.jsp" %>
			
							</div>
						</div>
					</div>
				</div>
            </section>
		</aside>
        <!-- right-side -->
    <a id="back-to-top" href="resources/#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
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
 	function confirmDelete(id){
 		if(confirm("Are you sure you want to delete this leave?") == true){
 			window.location.href = 'deleteLeave/'+ id;
 		}
 		else{
 			
 		}
 	}
 		
	$('#modalUpdateLeave').on('show.bs.modal', function (e) {
 	// get information to update quickly to modal view as loading begins
 	var opener=e.relatedTarget;//this holds the element who called the modal	
 	                    
	//we get details from attributes
	var id=$(opener).attr('id');
	var name=$(opener).attr('name');
	var code=$(opener).attr('code');
	var type=$(opener).attr('type');
	var role=$(opener).attr('role');
	var loc=$(opener).attr('loc');
	var gen=$(opener).attr('gen');
  	var mar=$(opener).attr('mar');
	//var per=$(opener).attr('per');
  	//var cnt=$(opener).attr('cnt');
	//var acc=$(opener).attr('acc');
	
	//var app=$(opener).attr('app');
	//var mcon=$(opener).attr('mcon');
	//var prob=$(opener).attr('prob');
	//var wait=$(opener).attr('wait');
	//var intl=$(opener).attr('intl');
	//var admin=$(opener).attr('admin');
	//var exc=$(opener).attr('exc');
  	//var cf=$(opener).attr('cf');
  	//var mcf=$(opener).attr('mcf');
  	//var ltime=$(opener).attr('ltime');
  	
	//set what we got to our form
  	$('#updateLeaveForm').find('[id="leaveID"]').val(id);
	$('#updateLeaveForm').find('[id="leaveName"]').val(name);
  	$('#updateLeaveForm').find('[id="leaveCode"]').val(code);
  	$('#updateLeaveForm').find('[id="leaveType"]').val(type);
  	$('#updateLeaveForm').find('[id="leaveRole"]').val(role);
	$('#updateLeaveForm').find('[id="leaveLocation"]').val(loc);
  	$('#updateLeaveForm').find('[id="leaveGender"]').val(gen);
  	$('#updateLeaveForm').find('[id="leaveMarital"]').val(mar);
  	//$('#updateLeaveForm').find('[id="leavePeriod"]').val(per); 
    //$('#updateLeaveForm').find('[id="leaveCount"]').val(cnt);
  	//$('#updateLeaveForm').find('[id="leaveAccrue"]').val(acc);
	//$('#updateLeaveForm').find('[id="leaveApply"]').val(app);
  	//$('#updateLeaveForm').find('[id="leaveMaxCon"]').val(mcon);
  	//$('#updateLeaveForm').find('[id="leaveProbation"]').val(prob);
  	//$('#updateLeaveForm').find('[id="leaveWaiting"]').val(wait);
	//$('#updateLeaveForm').find('[id="leaveInitial"]').val(intl);
  	//$('#updateLeaveForm').find('[id="leaveAdmin"]').val(admin);
  	//$('#updateLeaveForm').find('[id="leaveExceed"]').val(exc);
  	//$('#updateLeaveForm').find('[id="leaveCF"]').val(cf); 
	//$('#updateLeaveForm').find('[id="leaveMaxCF"]').val(mcf);
  	//$('#updateLeaveForm').find('[id="leaveLifetime"]').val(ltime); 
  	
    });
 </script>