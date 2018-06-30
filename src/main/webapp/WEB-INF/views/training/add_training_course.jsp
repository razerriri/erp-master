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
    <link href="${pageContext.request.contextPath}/resources/css/styles/black	.css" rel="stylesheet" type="text/css" id="colorscheme" />
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
                <h1>Add Training Course</h1>
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
                           Add Training Course
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
                                                <form:form action="course-submit" method="post" modelAttribute="courseBean" class="form-horizontal">
                                                <fieldset>
                                          <div class="form-position">
                                                    
                                                            
                                            
                                         <div class="form-group col-lg-12">
                                        
                                        <label class="col-md-3">Course ID</label>
                                        <div class="col-md-9">
                                            <input disabled class="form-control" placeholder="Code Generated" style="width: 600px;"></div></div>
                                                        
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Course Title</label>
                                        <div class="col-md-9">
                                        <input class="form-control" name="course_Title" placeholder="Course Title" style="width: 600px;" required>
                                            </div>
                                        </div>
                                        <!-- END --> 
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Description</label>
                                            <div class="col-md-9">
                                        <textarea class="form-control" name="course_Description" placeholder="Description" row="10" style="width: 600px;" required></textarea>
                                        </div>
                                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Course Type</label>
                                            <div class="col-md-9">
                                        <select class="form-control" name="course_Type" style="width: 600px;" required>
                                            <option disabled>Select</option>
                                            <option>Internal</option>
                                            <option>External</option>
                                           
                                        </select>
                                    </div>
                                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Start Date</label>
                                        <div class="col-md-9">
                                        <input type = "date" class="form-control" name="course_Startdate" placeholder="Start Date" style="width: 600px;" required>
                                            </div>
                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">End Date</label>
                                        <div class="col-md-9">
                                        <input type = "date" class="form-control" name="course_Enddate" placeholder="End Date" style="width: 600px;" required>
                                            </div>
                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Training Hours</label>
                                        <div class="col-md-9">
                                        <input class="form-control" placeholder="Training Hours" name="course_Training_Hours" style="width: 600px;" required>
                                            </div>
                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Facility Name</label>
                                            <div class="col-md-9">
                                        <select path="facility_id" class="form-control" style="width: 600px;" name="facility_Id" required>
                                        <c:forEach items="${facilitylist}" var="c">
                                            <option value="${c.facility_id}">${c.facility_name}</option>
                                            </c:forEach>
                                        </select>
                                            </div>
                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Topic</label>
                                        <div class="col-md-9">
                                        <input class="form-control" placeholder="Topic" name="course_Topic" style="width: 600px;" required>
                                            </div>
                                        </div>
                                        <!-- END --> 
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Trainer Name</label>
                                            <div class="col-md-9">
                                        <select path="trainer_id" class="form-control" style="width: 600px;" name="trainer_Id" required>
                                        <c:forEach items="${trainerlist}" var="t">
                                            <option value="${t.trainer_id}">${t.trainer_name}</option>
                                            </c:forEach>
                                           
                                        </select>
                                    </div>
                                                        </div>
                                                        
                                        <!-- END -->
                                                        
                                     <button type="submit" class="btn btn-primary" style="margin-bottom:10px;">Submit</button>
                                     
                                       </div>
                                       </fieldset>
                                       </form:form>
                                       </div>
                                                

                                            
                                       <div class="col-md-12">
                        <div class="panel panel-white panel-border">
                            <div class="panel-body partition-default">
                                <div class="col-md-12 partition-white">
									
                                    <div id="sample_editable_1_wrapper" style="margin-top:50px;">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
                                            	<th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:5%; display:none;">Course Id</th>
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:5%; display:none;">Course Facility Id</th>
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:5%; display:none;">Course Trainer Id</th>
                                                
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:5%">Course Title</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Description</th>
                                                
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Edit
                                            : activate to sort column ascending" style="width: 15%;">Course Type</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Start Date</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">End Date</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Training Hours</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Facility Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Topic</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Trainer Name</th>
                                                
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 5%;">Edit</th>
												
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            
                                            <c:forEach var="g" items="${traininglist}">
                                            <tr role="row" class="odd">
                                                <td style="display:none;">${g.course_Id}</td>
                                                <td style="display:none;">${g.facility_Id}</td>
                                                <td style="display:none;">${g.trainer_Id}</td>
                                                <td class="sorting_1">${g.course_Title}</td>
                                                <td>${g.course_Description}</td>
												
												<td>${g.course_Type}</td>
                                                <td>${g.course_Startdate}</td>
												<td>${g.course_Enddate}</td>
                                                <td>${g.course_Training_Hours}</td>
                                                
                                                <td>${g.facility_Name}</td>
                                                <td>${g.course_Topic}</td>
                                                <td>${g.trainer_Name}</td>
                                                
                                                <td>
                                                <center>
                                                <button att_course_id="${g.course_Id}" att_facility_id="${g.facility_Id}" att_trainer_id="${g.trainer_Id}"  att_course_title="${g.course_Title}" att_course_description="${g.course_Description}" att_course_type="${g.course_Type}" att_course_startdate="${g.course_Startdate}" att_course_enddate="${g.course_Enddate}" att_course_training_hours="${g.course_Training_Hours}" att_course_facility_name="${g.facility_Name}" att_course_topic="${g.course_Topic}" att_course_topic="${g.course_Topic}" att_course_trainer_name="${g.trainer_Name}" type="button" class="btn btn-xs btn-success" data-toggle="modal" data-href="#myModal" href="#myModal">
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
                                                           
                                                           
                                    <!-- YVES ANDITO AKO ANG MODAL MO -->        
                                    <div id="myModal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">
  											
  											<div class="modal-dialog modal-lg">

										  													  <!-- Modal content-->
										    <div class="modal-content">
											    <form action="training-course-update" method="post" modelAttribute="courseBean" class="form-horizontal">
                                                <fieldset>
                          
										      <div class="modal-header">
							
										        <h4 class="modal-title">Training Setup</h4>
										      </div>
										      <div class="modal-body">
										       <div class="form-group col-lg-12">
                                        
                                        <label class="col-md-3">Course ID</label>
                                        <div class="col-md-9">
                                        <input id="mod_course_id2" name="course_Id" style="width: 600px; display:none;">
                                            <input id="mod_course_id" disabled class="form-control" placeholder="Code Generated" style="width: 600px;"></div></div>
                                                        
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Course Title</label>
                                        <div class="col-md-9">
                                        <input id="mod_course_title" name="course_Title" class="form-control" placeholder="Course Title" style="width: 600px;" required>
                                            </div>
                                        </div>
                                        <!-- END --> 
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Description</label>
                                            <div class="col-md-9">
                                        <input id="mod_course_description" name="course_Description" textarea class="form-control" placeholder="Description" row="10" style="width: 600px;" required></textarea>
                                        </div>
                                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Course Type</label>
                                            <div class="col-md-9">
                                        <select id="mod_course_type" class="form-control" name="course_Type" style="width: 600px;" required>
                                            <option disabled>Select</option>
                                            <option>Internal</option>
                                            <option>External</option>
                                           
                                        </select>
                                    </div>
                                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Start Date</label>
                                        <div class="col-md-9">
                                        <input id="mod_course_startdate" name="course_Startdate" type = "date" class="form-control" placeholder="Start Date" style="width: 600px;" required>
                                            </div>
                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">End Date</label>
                                        <div class="col-md-9">
                                        <input id="mod_course_enddate" type = "date"  name="course_Enddate" class="form-control" placeholder="End Date" style="width: 600px;" required>
                                            </div>
                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Training Hours</label>
                                        <div class="col-md-9">
                                        <input id="mod_course_training_hours" class="form-control" name="course_Training_Hours" placeholder="Training Hours" style="width: 600px;" required>
                                            </div>
                                        </div>
                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Facility Name</label>
                                            <div class="col-md-9">
                                        <select id="mod_facility_id" path="facility_id" name="facility_Id" class="form-control" style="width: 600px;" required>
                                        <c:forEach items="${facilitylist}" var="c">
                                            <option value="${c.facility_id}">${c.facility_name}</option>
                                            </c:forEach>
                                        </select>
                                            </div>
                                        </div>

                                        <!-- END -->
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Topic</label>
                                        <div class="col-md-9">
                                        <input id="mod_course_topic" class="form-control" name="course_Topic" placeholder="Topic" style="width: 600px;" required>
                                            </div>
                                        </div>
                                        <!-- END --> 
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label class="col-md-3">Trainer Name</label>
                                            <div class="col-md-9">
                                        <select id="mod_trainer_id" path="trainer_id" name="trainer_Id" class="form-control" style="width: 600px;" name="trainer_Id" required>
                                        <c:forEach items="${trainerlist}" var="t">
                                            <option value="${t.trainer_id}">${t.trainer_name}</option>
                                            </c:forEach>
                                           
                                        </select>
                                    </div>
                                                        </div>
                                        <!-- END -->
										      </div>
										      <div class="modal-footer">
										      	<button type="button" data-dismiss="modal" class="btn">Close</button>
										        <button type="submit" class="btn btn-primary">Submit</button>
										      </div>
										      
										      </fieldset>
										      </form>
										      
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
    	var course_id = $(opener).attr('att_course_id');
    	var facility_id = $(opener).attr('att_facility_id');
    	var trainer_id = $(opener).attr('att_trainer_id');
    	var course_title = $(opener).attr('att_course_title');
    	var course_description = $(opener).attr('att_course_Description');
    	var course_type = $(opener).attr('att_course_type');
    	var course_startdate = $(opener).attr('att_course_startdate');
    	var course_enddate = $(opener).attr('att_course_enddate');
    	var course_training_hours = $(opener).attr('att_course_training_hours');
    	var course_facility_name = $(opener).attr('att_course_facility_name');
    	var course_topic = $(opener).attr('att_course_topic');
    	var course_trainer_name = $(opener).attr('att_course_trainer_name');
    	
    	//ISISET MO NA SA MODAL
    	document.getElementById('mod_course_id').value = course_id;
    	document.getElementById('mod_course_id2').value = course_id;
		
    	
    	document.getElementById('mod_course_title').value = course_title;    	
		document.getElementById('mod_course_description').value = course_description;
		document.getElementById('mod_course_type').value = course_type;
		document.getElementById('mod_course_startdate').value = course_startdate;
		document.getElementById('mod_course_enddate').value = course_startdate;
		document.getElementById('mod_course_training_hours').value = course_training_hours;
		document.getElementById('mod_facility_id').value = facility_id;
		document.getElementById('mod_course_topic').value = course_topic;
		document.getElementById('mod_trainer_id').value = trainer_id;
    	
    });
    
    </script>
    
    
    
    
    <!-- end of page level js -->
  
</body>
</html>
