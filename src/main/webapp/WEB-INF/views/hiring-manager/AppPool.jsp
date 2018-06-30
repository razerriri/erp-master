<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>

<head>
    <%@ include file ="../includes/head.jsp"%> 
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css"> 
</head>

<body class="skin-josh">
 	<%@ include file="../includes/header.jsp"%>
    <%@ include file="../includes/sidebar-hiring-manager.jsp"%>
    
    <div class="wrapper row-offcanvas row-offcanvas-left">
       
        <!-- right side start  -->
        <aside class="right-side">
            <section class="content-header">
                <h1>Human Resource Management System</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Dashboard
                        </a>
                    </li>
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Applicant Pool
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content">
            <!--section ends-->
            <section class="content">
            	<div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-white filterable">
                            <div class="panel-heading clearfix">
                                <div class="panel-title pull-left">
                                    <div class="caption">
                                    <i class="livicon" data-name="users" data-size="16" data-loop="true" data-c="#333" data-hc="white"></i>
                                    Applicant Pool
                                    </div>
                                </div>
                           		
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-responsive" id="sample_editable_1" role="grid">
                                    <thead>
                                        <tr>
                                            <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="text-align: center;">Applicant Name</th>
											<th style="text-align: center;">Job Title</th>
											<th style="text-align: center;">Date Applied</th>
											<th style="text-align: center;">Phase</th>
											<th style="text-align: center;">Status</th>
											<th style="text-align: center;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="app" items="${listAppJSP}">
										<tr>

											<td>${app.appName}</td>
											<td>${app.jobTitle}</td>
                                            <td>${app.appDate}</td>
											<td>${app.appPhase}</td>
											<td>${app.appStatus}</td>
											<td>
											<center>
											<a href="#EditAppModal" class="btn btn-success" data-toggle="modal" data-target="#EditAppModal" appID="${app.applicationID}" aID="${app.appID}" aName="${app.appName}" jTitle="${app.jobTitle}" sid="${app.scoreID}" as="${app.appStatus}" ad="${app.appDate}" ap="${app.appPhase}" ae="${app.appEvaluator}" ><span class="glyphicon glyphicon-pencil"></span></a>
											<button type="button" class="btn btn-danger"><a href="#" data-toggle="modal" data-target="#"><i class="glyphicon glyphicon-trash" title="Delete"></i></button>
											</center>
                                            </td>
                                        </tr>
                                     </c:forEach>	
                                    </tbody>
                                </table>
                            </div>
                           	<%@ include file="edit_app_modal.jsp" %>
                        </div>
                    </div>
                </div>
        	</section>
        </aside>
        <!-- right side ends -->
    </div>
    
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
 	
 	<%@ include file ="../includes/footer.jsp"%>  
 	
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
    <script>
	
	$('#EditAppModal').on('show.bs.modal', function (e) {
  		// get information to update quickly to modal view as loading begins
  		var opener=e.relatedTarget;//this holds the element who called the modal
  		         
	//we get details from attributes
	var appID=$(opener).attr('appID');
	var aID=$(opener).attr('aID');
	var aName=$(opener).attr('aName');
	var jpID=$(opener).attr('jpID');
	var jTitle=$(opener).attr('jTitle');
	var sid=$(opener).attr('sid');
	var as=$(opener).attr('as');
	var ad=$(opener).attr('ad');
	var ap=$(opener).attr('ap');
	var ae=$(opener).attr('ae');
  	  	  

	//set what we got to our form
  	$('#editApp').find('[id="applicationID"]').val(appID);
  	$('#editApp').find('[id="appName"]').val(aName);
  	$('#editApp').find('[id="jobTitle"]').val(jTitle); 
  	$('#editApp').find('[id="appStatus"]').val(as);
  	$('#editApp').find('[id="appDate"]').val(ad); 
   	$('#editApp').find('[id="appPhase"]').val(ap);
  	
  	
  	
 	});
   </script>
</body>

   
</html>
