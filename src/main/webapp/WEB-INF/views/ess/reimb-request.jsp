<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<meta charset="UTF-8">
	<%@ include file="../includes/head.jsp" %>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/select2.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pages/tables.css" />
   	<!-- advanced dataTables -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <script language="javascript" type="text/javascript">
        function printDiv(divID) {
            var divElements = document.getElementById(divID).innerHTML;
            var oldPage = document.body.innerHTML;

            document.body.innerHTML = 
              "<html><head><title></title></head><body>" + 
              divElements + "</body></html>";

            //Print Page
            window.print();
            document.body.innerHTML = oldPage;
        }
    </script>
    <title>${viewTitle}</title>
</head>
<body class="skin-josh">
<%@ include file="../includes/header.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@include file="../includes/sidebar-employee.jsp" %>

<!-- Right side column. Contains the navbar and content of the page -->
		<div class="wrapper row-offcanvas row-offcanvas-left">
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Reimbursement Requisition</h1>
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
            	<!-- LIST APPROVED REIMBURSEMENTS FOR CLAIMING -->
            	<div class="row">
                    <div class="col-md-12">
						<div class="panel panel-white">
							<!-- PANEL BODY START -->
                            <div class="panel-body">
                               <div class="table-toolbar">
                                    <div class="btn-group">
                                        <button class="btn btn-primary" id="btnReimb" data-toggle="modal" data-href="#modalReimb" href="#modalReimb">
                                            Request Reimbursement<i class="fa fa-plus"></i>
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
                                <div>
                                    <table class="table table-striped table-bordered table-hover dataTable" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Date Applied</th>
                                            <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 10%;">Purpose</th>
												<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 10%;">Expense Total</th>
												<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 5%;">Status</th>
                                            <th style="width: 15%;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                                    <c:forEach var="r" items="${listAppReimb}">
	                                        <tr role="row">
	                                        	<td>${r.reimbDate}</td>
	                                        	<td>${r.reimbPurpose}</td>
	                                        	<td>${r.reimbTotal}</td>
	                                        	<td>${r.reimbStatus}</td>
	                                        	<td>
	                                        		<button type="button" class="btn btn-xs btn-primary" onclick="viewReimb(${r.reimbID})" href="#modalReimbView" data-target="#modalReimbView" data-toggle="modal" id="btnAppReimb" rID="${r.reimbID}" rDate="${r.reimbDate}" rTotal="${r.reimbTotal}" rStat="${r.reimbStatus}" rPurpose="${r.reimbPurpose}" >
														<span class="glyphicon glyphicon-eye-open"></span>
													</button>
													<button type="button" class="btn btn-xs btn-success" onclick="viewPrint(${r.reimbID})" href="#modalReimbPrint" data-target="#modalReimbPrint" data-toggle="modal" id="btnAppReimb" rID="${r.reimbID}" rDate="${r.reimbDate}" rTotal="${r.reimbTotal}" rStat="${r.reimbStatus}" rPurpose="${r.reimbPurpose}" rEmp="${r.reimbEmpName}">
														<span class="glyphicon glyphicon-print"></span>
													</button>
												</td>
	                                        </tr>
	                                     </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END TABLE-->
                            </div>
							<!-- PANEL BODY END -->
                        </div>
                    </div>
                </div>
            	
            	<!-- LIST PENDING REIMBURSEMENTS -->
                <div class="row">
                    <div class="col-md-12">
						<div class="panel panel-white">
							<!-- PANEL BODY START -->
                            <div class="panel-body">                                
                                <div>
                                    <table class="table table-striped table-bordered table-hover" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Date Applied</th>
                                            <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 10%;">Purpose</th>
												<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 10%;">Expense Total</th>
												<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 5%;">Status</th>
                                            <th style="width: 15%;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                                    <c:forEach var="r" items="${listReimb}">
	                                        <tr role="row">
	                                        	<td>${r.reimbDate}</td>
	                                        	<td>${r.reimbPurpose}</td>
	                                        	<td>${r.reimbTotal}</td>
	                                        	<td>${r.reimbStatus}</td>
	                                        	<td>
	                                        		<button type="button" class="btn btn-xs btn-primary" onclick="viewReimb(${r.reimbID})" href="#modalReimbView" data-target="#modalReimbView" data-toggle="modal" data-target="#modalReimbView" id="btnViewReimb" rID="${r.reimbID}" rDate="${r.reimbDate}" rTotal="${r.reimbTotal}" rStat="${r.reimbStatus}" rPurpose="${r.reimbPurpose}" >
	                                        		<!-- onclick="confirmExp(${r.reimbID})" -->
	                                        		<!-- <input type="text" id="rID" value="${r.reimbID}" style="display:none"/> -->
														<span class="glyphicon glyphicon-eye-open"></span>
													</button>
													<button type="button" class="btn btn-xs btn-danger" onclick="confirmDelete(${r.reimbID})">
														<span class="glyphicon glyphicon-trash"></span>
													</button>
												</td>
	                                        </tr>
	                                     </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- END TABLE-->
                                <%@ include file="modal-reimb.jsp" %>
                                <%@ include file="modal-reimb-view.jsp" %>
                                <%@ include file="modal-reimb-print.jsp" %>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/select2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-editable.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advance.js"></script>
      
</body>
</html>
<script>
$('#btnReimb').click(function()
{								
	$.ajax({
		type:'POST',
		url:'submitReimb',
	});
});

$('#btnCancelReimb').click(function()
{								
	$.ajax({
		type:'POST',
		url:'cancelReimb',
	});
});

//$(document).ready(function() 
//{ 
//	if(window.location.href.indexOf('#modalReimbView') != -1) 
//	{ 
//		$('#modalReimbView').modal('show'); 
//	} 
	
//	$('#btnViewReimb').click(function()
//	{				
//		var rID = $('#rID').val();
//	});
//});

function viewReimb(x) {
	$.ajax({
		type:'GET',
		url:'viewExpense/' + x,
		success: function(response) {
           $("#divExpense").html( response );
        }
	});
}

$('#modalReimbView').on('show.bs.modal', function (e) {
	var opener=e.relatedTarget;

	var rID=$(opener).attr('rID');
	var rDate=$(opener).attr('rDate');
	var rTotal=$(opener).attr('rTotal');
	var rPurpose=$(opener).attr('rPurpose');
	var rStat=$(opener).attr('rStat');

 	$('#modalReimbView').find('[id="reimbID"]').val(rID);
	$('#modalReimbView').find('[id="reimbDate"]').val(rDate);
 	$('#modalReimbView').find('[id="reimbTotal"]').val(rTotal);
 	$('#modalReimbView').find('[id="reimbPurpose"]').val(rPurpose);
	$('#modalReimbView').find('[id="reimbStatus"]').val(rStat);  
  	
});

function viewPrint(x) {
	$.ajax({
		type:'GET',
		url:'viewPrint/' + x,
		success: function(response) {
           $("#divPrint").html( response );
        }
	});
}

$('#modalReimbPrint').on('show.bs.modal', function (e) {
	var opener=e.relatedTarget;

	var rID=$(opener).attr('rID');
	var rEmp=$(opener).attr('rEmp');
	var rDate=$(opener).attr('rDate');
	var rTotal=$(opener).attr('rTotal');
	var rPurpose=$(opener).attr('rPurpose');
	var rStat=$(opener).attr('rStat');

	
 	$('#modalReimbPrint').find('[id="reimbID"]').val(rID);
 	$('#modalReimbPrint').find('[id="reimbEmpName"]').val(rEmp);
	$('#modalReimbPrint').find('[id="reimbDate"]').val(rDate);
 	$('#modalReimbPrint').find('[id="reimbTotal"]').val(rTotal);
 	$('#modalReimbPrint').find('[id="reimbPurpose"]').val(rPurpose);
	$('#modalReimbPrint').find('[id="reimbStatus"]').val(rStat);  	
});

function confirmDelete(x){
	if(confirm("Are you sure you want to delete this reimbursement request?") == true){
		window.location.href = 'deleteReimb/'+ x;
	}
	else{
		
	}
}	

//function confirmExp(x) {
//	window.location.href = 'viewExpense/' + x;
//}
</script>
