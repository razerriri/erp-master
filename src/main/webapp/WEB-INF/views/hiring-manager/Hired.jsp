<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <%@ include file="../includes/head.jsp" %>
    <title>Human Resources Management System</title>
    <!--page level css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/tables.css" rel="stylesheet" type="text/css">
    <!--end of page level css-->
    
</head>

<body class="skin-josh">
    <%@ include file="../includes/header.jsp" %>

	<%@include file="../includes/sidebar-hiring-manager.jsp" %>
	
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Human Resources Management System</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="user" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Top 5 Candidates
                        </a>
                    </li>
                </ol>
            </section>
			<section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="panel panel-primary ">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="livicon" data-name="users" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                Top 5 Candidates
                            </h4>
                        </div>
                        <br />
                        <div class="panel-body">
                            <table class="table table-bordered table-responsive" id="table1">
                                <thead>
                                    <tr class="filters">
                                        <th>Applicant Name</th>
                                        <th>Job Title</th>
                                        <th>Total Points</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="app" items="${listHired}">
                                   <tr>
                                        <td>${app.appName}</td>
                                        <td>${app.jobTitle}</td>
                                        <td><b>${app.scoreAverage}</b></td>
                                        <td>${app.appStatus}</td>
                                        <td style="text-align: center">
											<button href="#modalHired" class="btn btn-success" data-toggle="modal" data-target="#modalHired" appID="${app.applicationID}" an="${app.appName}" jt="${app.jobTitle}" ji="${app.jobID}" di="${app.deptID}" sd="${app.scoreDate}" sEval="${app.scoreEvaluator}" sa="${app.scoreAverage}" sp="${app.scorePerformance}" sb="${app.scoreBehavioral}" se="${app.scoreEducation}" st="${app.scoreTraining}" sat="${app.scoreAttitude}" sv="${app.scoreValues}" sp="${app.scorePotentials}" sep="${app.scoreExperience}" appUN="${app.appUsername}" appPW="${app.appPassword}" appFN="${app.appFName}" appMN="${app.appMName}" appLN="${app.appLName}" appS="${app.appSuffix}" appBD="${app.appBDate}" appPB="${app.appPBirth}" appG="${app.appGender}" appC="${app.appCivil}" appAdd="${app.appAddress}" appCon="${app.appContact}" appE="${app.appEmail}" >
											<span class="glyphicon glyphicon-eye-open"></span> 
											</button>
											<button href="#" class="btn btn-warning">
									    	<span class="glyphicon glyphicon-trash" title="Pending"></span> 
									        </button>
										</td>
                                    </tr>
                                   </c:forEach>
                                </tbody>
							</table>
						<%@ include file="hired-modal.jsp" %>
                         </div>
							</div>
						</div>
					</div>
						</section>
			</aside>
			</div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
   <%@include file="../includes/footer.jsp" %>
   <!-- begining of page level js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
    <!-- end of page level js -->
</body>
</html>
<script>
 	function confirmDelete(x){
 		if(confirm("Are you sure you want to delete this leave request?") == true){
 			window.location = 'erp/leaveRequest'+ x;
 		}
 		else{
 			
 		}
 	}
 		
	$('#modalHired').on('show.bs.modal', function (e) {
 	// get information to update quickly to modal view as loading begins
 	var opener=e.relatedTarget;//this holds the element who called the modal
    	   
	//we get details from attributes
	var appID=$(opener).attr('appID');
	var an=$(opener).attr('an');
	var jt=$(opener).attr('jt');
	var ji=$(opener).attr('ji');
	var di=$(opener).attr('di');
	var sd=$(opener).attr('sd');
	var sEval=$(opener).attr('sEval');
	var sa=$(opener).attr('sa');
	var sp=$(opener).attr('sp');
  	var sb=$(opener).attr('sb');
  	var se=$(opener).attr('se');
  	var st=$(opener).attr('st');
	var sat=$(opener).attr('sat');
  	var sv=$(opener).attr('sv');
  	var sp=$(opener).attr('sp');
	var sep=$(opener).attr('sep');
	
	var appUN=$(opener).attr('appUN');
	var appPW=$(opener).attr('appPW');
	var appFN=$(opener).attr('appFN');
	var appMN=$(opener).attr('appMN');
  	var appLN=$(opener).attr('appLN');
  	var appBD=$(opener).attr('appBD');
  	var appPB=$(opener).attr('appPB');
	var appG=$(opener).attr('appG');
  	var appC=$(opener).attr('appC');
  	var appAdd=$(opener).attr('appAdd');
	var appCon=$(opener).attr('appCon');
	var appE=$(opener).attr('appE');
  	  	  
	//set what we got to our form
  	$('#updateHiredForm').find('[id="applicationID"]').val(appID);
	$('#updateHiredForm').find('[id="appName"]').val(an);
  	$('#updateHiredForm').find('[id="jobTitle"]').val(jt);
  	$('#updateHiredForm').find('[id="jobID"]').val(ji);
  	$('#updateHiredForm').find('[id="deptID"]').val(di);
  	$('#updateHiredForm').find('[id="scoreDate"]').val(sd);
  	$('#updateHiredForm').find('[id="scoreEvaluator"]').val(sEval);
	$('#updateHiredForm').find('[id="scoreAverage"]').val(sa);
  	$('#updateHiredForm').find('[id="scorePerformance"]').val(sp);
  	$('#updateHiredForm').find('[id="scoreBehavioral"]').val(sb);
  	$('#updateHiredForm').find('[id="scoreEducation"]').val(se); 
    $('#updateHiredForm').find('[id="scoreTraining"]').val(st);
  	$('#updateHiredForm').find('[id="scoreAttitude"]').val(sat);
  	$('#updateHiredForm').find('[id="scoreValues"]').val(sv);
  	$('#updateHiredForm').find('[id="scorePotentials"]').val(sp); 
    $('#updateHiredForm').find('[id="scoreExperience"]').val(sep);
  	
 	$('#updateHiredForm').find('[id="appUsername"]').val(appUN);
  	$('#updateHiredForm').find('[id="appPassword"]').val(appPW);
	$('#updateHiredForm').find('[id="appFName"]').val(appFN);
  	$('#updateHiredForm').find('[id="appMName"]').val(appMN);
  	$('#updateHiredForm').find('[id="appLName"]').val(appLN);
  	$('#updateHiredForm').find('[id="appBdate"]').val(appBD); 
    $('#updateHiredForm').find('[id="appPBirth"]').val(appPB);
  	$('#updateHiredForm').find('[id="appGender"]').val(appG);
  	$('#updateHiredForm').find('[id="appCivil"]').val(appC);
  	$('#updateHiredForm').find('[id="appAddress"]').val(appAdd); 
    $('#updateHiredForm').find('[id="appContact"]').val(appCon);
    $('#updateHiredForm').find('[id="appEmail"]').val(appE);
  	
    });
 </script>