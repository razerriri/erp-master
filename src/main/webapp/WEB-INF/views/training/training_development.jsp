<!DOCTYPE html>
<html>

<head>
	<%@include file="../includes/head.jsp" %>
    <meta charset="UTF-8">
    <title>HRMS</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="${pageContext.request.contextPath}/resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
    <link href="${pageContext.request.contextPath}/resources/css/panel.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>    
    <!-- end of global css -->    
    <!--page level css -->
    <link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">
    
     <link href="${pageContext.request.contextPath}/resources/vendors/jasny-bootstrap/css/jasny-bootstrap.css" rel="stylesheet" />
    <!--end of page level css-->
</head>

<!-- START COPY -->
<body class="skin-josh">
    <%@include file="../includes/header.jsp" %>
	
	<!-- SIDEBAR START -->
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <%@include file="../includes/sidebar-admin.jsp" %>
        <!-- SIDEBAF END -->
<!-- END COPY -->
    
    
    
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Training And Development</h1>
				<p> Please fill-out the information needed. </p>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="dashboard" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            Training Course
                        </a>
                    </li>
                    <li class="active">
                        <a href="allow.html">
                            <i class="livicon" data-name="money" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                           Training And Development
                        </a>
                    </li>
                </ol>
            </section>
          
            <section class="content">
                <div class="row">
                    <div class="col-lg-12">
                                        <div class="panel panel-info">
                                            <div class="panel-heading">
                                                <h5 class="panel-title">

                                                </h5>
                                            </div>
                                            <div class="panel-body">
                                                <form:form action="add-training-employee" method="post" modelAttribute="trainingAddBean" class="form-horizontal">
                                                <fieldset>
                                                    <div class="form-position">
                                                    
                                                            
                                            
                                         
                                                         
                                        
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Employee Name</label>
                                            <div class="col-md-9">
                                        <select path= "employee_id" class="form-control" name="t_emp_id" style="width: 600px;">
                                           <c:forEach items="${trainingDevList}" var="c">
                                            <option value="${c.employee_id}">${c.employee_name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                                        </div>
                                                        
                                                        
                                                        
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Training Course</label>
                                            <div class="col-md-9">
                                        <select path="training_course_id" class="form-control" name="t_course_id" style="width: 600px;">
                                        <c:forEach var="c" items="${trainingDevList2}">
                                            <option value="${c.training_course_id}">${c.training_course_name}</option>
                                           </c:forEach>
                                        </select>
                                    </div>
                                                        </div>
                                        <!-- END -->
                                       
                                         
                                        
                                       
                                                            
                                                      
                                                        
                                     <button type="submit" class="btn btn-primary" style="margin-bottom:10px;">Submit</button>    
                                                        
                                                        </fieldset>
                                                </form:form>
                                       <div class="col-md-12">
                        <div class="panel panel-white panel-border">
                            <div class="panel-body partition-default">
                                <div class="col-md-12 partition-white">
									
                                    <div id="sample_editable_1_wrapper" style="margin-top:50px;">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:5%">Employee Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Training Course</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Trainer Name</th>
                                            <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Facility Name</th>
                                            <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Transaction Date</th>
                                                
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 5%;">Edit/Delete</th>
												
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            
                                            <c:forEach var="g" items="${trainingdev_List}">
                                            <tr role="row" class="odd">
                                                
                                                <td class="sorting_1">${g.ename}</td>
                                                <td>${g.course_Name}</td>
                                                <td>${g.trainer_Name}</td>
                                                <td>${g.facility_Name}</td>
												<td>${g.transaction_date}</td>
												
                                                
                                                <td>
                                                <center>
                                                <button type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#edit_course_modal" href="#edit_course_modal">
														<span class="glyphicon glyphicon-edit"></span>
                                                    </button>
                                                    
                                                    </center>
                                                  </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
							  </div>
                        </div>
                    </div>
                    </div>                 
                                                        
                                                            
                                    <div class="form-group col-lg-12">
                                                    <div class="form-actions">
                                                        <div class="col-md-offset-11 col-md-9">
                                                           
                                                           
                                            
                                         <div id="myModal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">
  											
  											<div class="modal-dialog">

										  													  <!-- Modal content-->
										    <div class="modal-content">
										      <div class="modal-header">
										        <button type="button" class="close" data-dismiss="modal">×</button>
										        <h4 class="modal-title">Training Setup</h4>
										      </div>
										      <div class="modal-body">
										        <p>Are you sure you want to add this Training?</p>
										      </div>
										      <div class="modal-footer">
										      	<button type="button" data-dismiss="modal" class="btn">Close</button>
										        <button type="button" class="btn btn-primary" data-dismiss="modal">Submit</button>
										      </div>
										    </div>
										
										  </div>
										</div>
                                                        </div>
                                        </div>
                                                        </div>
                                                    </div>
                                                    
                                            </div>
                        </div>
                    </div>
                </div>
                
                                                          
            </section>           
            
            
                                                        
                                                        
               
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
    <script src="${pageContext.request.contextPath}/resources/js/metisMenu.js" type="text/javascript"> </script>
    <script src="${pageContext.request.contextPath}/resources/vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <!--  todolist-->
    <script src="${pageContext.request.contextPath}/resources/js/todolist.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/jasny-bootstrap/js/jasny-bootstrap.js"></script>
    <!-- EASY PIE CHART JS -->
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/easypiechart.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.easypiechart.min.js"></script>
    <!--for calendar-->
    <script src="${pageContext.request.contextPath}/resources/vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
    <!--   Realtime Server Load  -->
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.flot.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.flot.resize.min.js" type="text/javascript"></script>
    <!--Sparkline Chart-->
    <script src="${pageContext.request.contextPath}/resources/vendors/charts/jquery.sparkline.js"></script>
    <!--editable-table-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/select2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-editable.js"></script>
    <!-- Back to Top-->
    <script type="text/javascript" src="vendors/countUp/countUp.js"></script>
    <!--   maps -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
     <script src="${pageContext.request.contextPath}/resources/vendors/jscharts/Chart.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/dashboard.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        var composeHeight = $('#calendar').height() +21 - $('.adds').height();
        $('.list_of_items').slimScroll({
            color: '#A9B6BC',
            height: composeHeight + 'px',
            size: '5px'
        });
    });
    </script>
    
    
    
        <script>
    $('#myModal').on('show.bs.modal', function(e){
    	var opener= e.relatedTarget;
    	
    	//MAGDECLARE NG VARIABLES (KUKUHAIN MO SA ELEMENT OR YUNG BUTTON MO)
    	var employee_id = $(opener).attr('att_employee_id');
    	var training_id = $(opener).attr('att_training_id');
    	var trainer_id = $(opener).attr('att_trainer_id');
    	var facility_id = $(opener).attr('att_facility_id');
    	
    	var employee_name = $(opener).attr('att_employee_name');
    	var training_name = $(opener).attr('att_training_name');
    	var facility_name = $(opener).attr('att_facility_name');
    	var trainer_name = $(opener).attr('att_trainer_name');
    	var transaction_date = $(opener).attr('att_transaction_date');
    	
    	
    	//ISISET MO NA SA MODAL
    	document.getElementById('mod_employee_id').value = employee_id;
    	document.getElementById('mod_training_id').value = training_id;
    	document.getElementById('mod_trainer_id').value = trainer_id;
    	document.getElementById('mod_facility_id').value = facility_id;
    	
    	document.getElementById('mod_employee_name').value = employee_name;    	
		document.getElementById('mod_training_name').value = training_name;
		document.getElementById('mod_facility_name').value = facility_name;
		document.getElementById('mod_trainer_name').value = trainer_name;
		document.getElementById('mod_transaction_date').value = transaction_date;
		
    
    });
    
    </script>
    
    
    
    
    
    <!-- end of page level js -->
  
</body>
</html>
