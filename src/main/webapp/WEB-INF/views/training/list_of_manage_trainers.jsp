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
                <h1>Manage Trainers</h1>
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
                          <div class="row web-mail">
                    <div class="col-md-12">
                        <div class="panel panel-white panel-border">
                            <div class="panel-body partition-default">
                                <div class="col-md-12 partition-white">
									<div class="btn-group pull-right">
                                        <button class="btn btn-success" data-toggle="modal" data-href="#add_modal" href="#add_modal">
                                            Add New Trainer
                                            <i class="fa fa-plus"></i>
                                        </button>
                                       
                                           
                                        
                                    </div>
                                    <div id="sample_editable_1_wrapper" style="margin-top:50px;">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
                                            <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:5%; display:none;">Trainer id</th>
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width:5%">Trainer Name</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 15%;">Address</th>
                                                
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Edit
                                            : activate to sort column ascending" style="width: 15%;">Birthdate</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Age</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Contact</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Gender</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 15%;">Job</th>
                                                                                                
                                                
												
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Delete
                                            : activate to sort column ascending" style="width: 5%;">Edit</th>
												
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <c:forEach var="g" items="${trainerList}" varStatus="vs">
                                            <tr role="row" class="odd">
                                                <td style="display:none;" class="sorting_1">${g.trainerId}</td>
                                                <td class="sorting_1">${g.trainerName}</td>
                                                <td>${g.trainerAddress}</td>
												<td>${g.trainerBirthdate}</td>
                                                <td>${g.trainerAge}</td>
												<td>${g.trainerContact}</td>
                                                <td>${g.trainerGender}</td>
                                                <td>${g.trainerJob}</td>
                                                
                                                <td>
                                                <center>
                                                <button att_trainer_id="${g.trainerId}" att_trainer_name="${g.trainerName}" att_trainer_address="${g.trainerAddress}" att_trainer_birthdate="${g.trainerBirthdate}" att_trainer_age="${g.trainerAge}" att_trainer_contact="${g.trainerContact}" att_trainer_gender="${g.trainerGender}" att_trainer_job="${g.trainerJob}" type="button" class="btn btn-xs btn-success"  data-toggle="modal" data-target="#editmodal" id ="">
														<span class="glyphicon glyphicon-edit"></span>
                                                    </button>
                                                    
                                                    </center>
                                                     <!---MODAL MANAGER APPROVAL START--->
            <div id="editmodal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">
                   <div class="modal-dialog modal-lg">  													 
                       <div class="modal-content">
	                           <form:form action="trainer-update" method="post" modelAttribute="trainerBean" class="form-horizontal">
                           <fieldset>
                           
                           <div class="modal-header">
                               <h3 class="modal-title">Edit Trainer</h3>
                               <p>Please fill out the information needed.</p>
                           </div>
                           <div class="modal-body">         
                             <div class="form-group col-lg-12">
                                 <input id="mod_trainer_id2" name="trainerId" style="display:none;">       
                                        <label>Trainer ID</label>
                                          
                                 <input id="mod_trainer_id" disabled class="form-control" placeholder="Code Generated"></div>
                              <div class="form-group col-lg-12">
                                        <label>Trainer Name</label>
                                        <input id="mod_trainer_name" class="form-control" name="trainerName" placeholder="Trainer Name" required>
                                        </div>
                                        <!-- END --> 
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Address</label>
                                        <input id="mod_trainer_address" class="form-control" name="trainerAddress" placeholder="Address" required>
                                        </div>
                                        <!-- END -->   
                                        <div class="form-group col-lg-12">
                                        <label>Birthdate</label>
                                        <input id="mod_trainer_birthdate" type = "date"  class="form-control" name= "trainerBirthdate" placeholder="Birthdate" required>
                                        </div>
                               <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Age</label>
                                        <input id="mod_trainer_age" type = "number"  class="form-control" name= "trainerAge" placeholder="Age" required>
                                        </div>
                                        <!-- END -->
                               <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Contact</label>
                                        <input id="mod_trainer_contact"  class="form-control" name= "trainerContact" placeholder="Contact no. / Email" required>
                                        </div>
                                        <!-- END -->
                                <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Gender</label>
                                        <select class="form-control"  id="mod_trainer_gender" name= "trainerGender" required>
                                            <option disabled>Select</option>
                                            <option>Male</option>
                                            <option>Female</option>
                                           
                                        </select>
                                    </div>
                               
                               

                                        <!-- END -->
                                                        
                                        <div class="form-group col-lg-12">
                                        <label>Job</label>
                                        <input id="mod_trainer_job"  class="form-control" name="trainerJob" placeholder="Job" required>
                                        </div>
                               
                                                       
				            </div>
				            <div class="modal-footer">
                               
                                <button type="button" data-dismiss="modal" class="btn">Cancel</button>
                                <button type="submit" class="btn btn-primary" >Save</button>
				            </div>
				          </fieldset>
						</form:form>
				            </div>
										
					  </div>
                </div>
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
                </div>
                           </section>           
             <!---MODAL MANAGER APPROVAL START--->
            <div id="add_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;" data-backdrop="static" data-keyboard="false">
                   <div class="modal-dialog">  													 
                       <div class="modal-content">
                      <form:form action="trainer-submit" method="post" modelAttribute="trainerBean" class="form-horizontal"> 
                       <fieldset>
                           <div class="modal-header">
                               <h3 class="modal-title">Add Trainer</h3>
                               <p>Please fill out the information needed.</p>
                           </div>
                           <div class="modal-body">         
                              <div class="form-group col-lg-12">
                                        <label>Trainer Name</label>
                                        <input class="form-control" name="trainerName" placeholder="Trainer Name" required>
                                        </div>
                                        <!-- END --> 
                                        <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Address</label>
                                        <input class="form-control" name="trainerAddress" placeholder="Address" required>
                                        </div>
                                        <!-- END -->   
                                        <div class="form-group col-lg-12">
                                        <label>Birthdate</label>
                                        <input type = "date" class="form-control" name= "trainerBirthdate" placeholder="Birthdate" required>
                                        </div>
                               <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Age</label>
                                        <input type = "number" class="form-control" name= "trainerAge" placeholder="Age" required>
                                        </div>
                                        <!-- END -->
                               <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Contact</label>
                                        <input class="form-control" name= "trainerContact" placeholder="Contact no. / Email" required>
                                        </div>
                                        <!-- END -->
                                <!-- START -->                
                                        <div class="form-group col-lg-12">
                                        <label>Gender</label>
                                        <select class="form-control"  name= "trainerGender" required>
                                            <option>Select</option>
                                            <option>Male</option>
                                            <option>Female</option>
                                           
                                        </select>
                                    </div>
                               
                               

                                        <!-- END -->
                                                        
                                        <div class="form-group col-lg-12">
                                        <label>Job</label>
                                        <input class="form-control" name="trainerJob" placeholder="Job" required>
                                        </div>
                               
                                                       
				            </div>
				            <div class="modal-footer">
                               
                                <button type="button" data-dismiss="modal" class="btn">Cancel</button>
                                <button type="submit" class="btn btn-primary" >Save</button>
				            </div>
				            </fieldset>
				            </form:form>
				            </div>
										
					  </div>
                </div>
            
                                            
                                                        
               
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
        $('#editmodal').on('show.bs.modal', function(e){
        	var opener= e.relatedTarget;
        	
        	//MAGDECLARE NG VARIABLES (KUKUHAIN MO SA ELEMENT OR YUNG BUTTON MO)
        	
        	var trainer_id = $(opener).attr('att_trainer_id');
        	var trainer_name = $(opener).attr('att_trainer_name');
        	var trainer_address = $(opener).attr('att_trainer_address');
        	var trainer_birthdate = $(opener).attr('att_trainer_birthdate');
        	var trainer_age = $(opener).attr('att_trainer_age');
        	var trainer_contact = $(opener).attr('att_trainer_contact');
        	var trainer_gender = $(opener).attr('att_trainer_gender');
        	var trainer_job = $(opener).attr('att_trainer_job');
        	
        	//ISISET MO NA SA MODAL
        	document.getElementById('mod_trainer_id').value = trainer_id;
        	document.getElementById('mod_trainer_id2').value = trainer_id;
        	document.getElementById('mod_trainer_name').value = trainer_name;
        	document.getElementById('mod_trainer_address').value = trainer_address;
        	document.getElementById('mod_trainer_birthdate').value = trainer_birthdate;
        	document.getElementById('mod_trainer_age').value = trainer_age;
        	document.getElementById('mod_trainer_contact').value = trainer_contact;
        	document.getElementById('mod_trainer_gender').value = trainer_gender;
        	document.getElementById('mod_trainer_job').value = trainer_job;
        	
        	
    });
    </script>
    <!-- end of page level js -->
  
</body>
</html>

