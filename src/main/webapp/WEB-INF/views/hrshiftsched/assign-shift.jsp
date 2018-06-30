<!DOCTYPE html>
<html>
<head>
   
	<meta charset="UTF-8">
    <title>Assign Shift</title>
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
                <h1>Assign Shift</h1>
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
                            Assign Shift
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
                                 	  &nbsp;EMPLOYEE TABLE
                                 	   
                                 </h3>  
                            </div>
                            <div class="panel-body">
                           		
                                    <table class="table table-striped table-responsive" id="table1">
                                        <thead>
                                        
                                            <tr>
                                               	<th style="text-align:left;">Name</th>
                                                <th style="text-align:left;">Position</th>
                                                <th style="text-align:left;">Department</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           <c:forEach var="e" items="${elist}">
                                            <tr>
                                                <td>${e.empName}</td>
                                               	<td>${e.jobName}</td>
                                                <td>${e.deptName}</td>
                                                <td style="text-align:center;">
	                                            	<button class="btn btn-default btn-small">
										  			<i class="glyphicon glyphicon-eye-open"></i>
													</button>
													<button class="btn btn-primary btn-small">
										  			<i class="glyphicon glyphicon-plus-sign" href="#assign1" data-toggle="modal" data-target="#assign1"  eid="${e.empId}"></i>
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
                       <div class="panel panel-plain filterable">
                            <div class="panel-heading">
                                <h3 class="panel-title" style="height:35px;">
                                    <i class="livicon" data-name="list" data-size="16" data-c="#000" data-hc="#555">                 
                                    </i>
                                 	  &nbsp;Manage Assigned Shift
                                 </h3>  
                            </div>
                            <div class="panel-body">
                           		
                                    <table class="table table-striped table-responsive" id="table1">
                                        <thead>
                                        
                                            <tr>
                                               	<th style="text-align:left;">Name</th>
                                                <th style="text-align:left;">Position</th>
                                                <th style="text-align:left;">Department</th>
                                                <th style="text-align:left;">Shift</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           <c:forEach var="a" items="${alist}">
                                            <tr>
                                                <td>${a.empName}</td>
                                               	<td>${a.jobName}</td>
                                                <td>${a.deptName}</td>
                                                <td>${a.shiftTime}</td>
                                                <td style="text-align:center;">
	                                            	<button class="btn btn-default btn-small">
										  			<i class="glyphicon glyphicon-eye-open"></i>
													</button>
													<button class="btn btn-success btn-small">
										  			<i class="glyphicon glyphicon-pencil" href="#assign2" data-toggle="modal" data-target="#assign2" sid="${a.shiftId}"  eid="${a.empId}"></i>
													</button>
	                                           </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>	
                        </div>
                 </div>
                             
                   <form:form class="form-horizontal" method="post" action="save"  id="updateForm">
                       		<div class="modal fade" id="assign1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                               <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">
                                        <i class="fa fa-pencil-square"></i>&nbsp;Assign Shift
                                        </h4>
                                    </div>
                          <div class="modal-body">
                    	   <fieldset>
                    	   <input style="display:none;" id="empId" name="empId" ></input>
                    	   <div class="row" style="margin-left:5px; margin-right:5px;">
                                        <label>Select shift</label>
                                        
										<div class="input-group col-md-12">
                                           <span class="input-group-addon">
                                                    <span class="fa fa-calendar"></span>
                                            </span>
                                            <select name="shiftId" id="shiftId" class="form-control select">
		                                  		<option style="color:#555;" value="" disabled selected>Select Shift</option>
		                                  		<c:forEach var="s" items="${slist}">
		                                  			<option value="${s.shiftId}">${s.shiftCode}</option>
		                                  		</c:forEach>
                                       		</select>
                                       </div>
                        </div>
						</fieldset>
					       </div>
	                       <div class="modal-footer">
								<button id="submit" name="buttonsubmit"
									class="btn btn-success">Submit</button>
								<button type="button" data-dismiss="modal" class="btn" onclick="ajaxmultiselect()">Cancel</button>
							</div>
                      </div>
                     </div>
                     </div>
                     </form:form>  
                     
		  <!-- UPDATE FORM -->  
                     <form:form class="form-horizontal" method="post" action="edit"  id="updateForm2">
                       		<div class="modal fade" id="assign2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                               <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">
                                        <i class="fa fa-pencil-square"></i>&nbsp;Update Assigned Shift
                                        </h4>
                                    </div>
                          <div class="modal-body">
                    	   <fieldset>
                    	   <input  id="empId" name="empId" ></input>
                    	   <div class="row" style="margin-left:5px; margin-right:5px;">
                                        <label>Select shift</label>
                                        
										<div class="input-group col-md-12">
                                           <span class="input-group-addon">
                                                    <span class="fa fa-calendar"></span>
                                            </span>
                                            <select name="shiftId" id="shiftId" class="form-control select">
		                                  		<option style="color:#555;" value="" disabled selected>Select Shift</option>
		                                  		<c:forEach var="s" items="${slist}">
		                                  			<option value="${s.shiftId}">${s.shiftCode}</option>
		                                  		</c:forEach>
                                       		</select>
                                       </div>
                        </div>
						</fieldset>
					       </div>
	                       <div class="modal-footer">
								<button id="submit" name="buttonsubmit"
									class="btn btn-success">Submit</button>
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
    $('#assign2').on('show.bs.modal', function (e) {
      	  // get information to update quickly to modal view as loading begins
      	  var opener=e.relatedTarget;//this holds the element who called the modal
      	   
      	  //we get details from attributes
      	var empId=$(opener).attr('eid');
      	var shiftId=$(opener).attr('sid');
      	  
      	$('#updateForm2').find('[id="empId"]').val(empId);
      	$('#updateForm2').find('[id="shiftId"]').val(shiftId);
    });
     </script>
    
    <script>
    $('#assign1').on('show.bs.modal', function (e) {
      	  // get information to update quickly to modal view as loading begins
      	  var opener=e.relatedTarget;//this holds the element who called the modal
      	   
      	  //we get details from attributes
      	  var empId=$(opener).attr('eid');
      	  
      	$('#updateForm').find('[id="empId"]').val(empId);
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/Buttons-master/js/vendor/scrollto.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/Buttons-master/js/main.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/Buttons-master/js/buttons.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/select2/select2.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/tags/dist/bootstrap-tagsinput.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pages/formelements.js" type="text/javascript"></script>
    
    
    
</body>
</html>