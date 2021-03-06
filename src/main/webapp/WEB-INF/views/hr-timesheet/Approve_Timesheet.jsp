<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
    <!-- Include head.jsp here -->
	<%@ include file="../includes/head.jsp" %>
    <!--page level css -->
    <link href="${pageContext.request.contextPath}/resources/vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/animate/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/only_dashboard.css" />
    <!--end of page level css-->
</head>

<body class="skin-josh">
    <!-- Include header.jsp here -->
    <%@ include file="../includes/header.jsp" %>
	
	
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <%@include file="../includes/sidebar-depthead.jsp" %>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Human Resources Management System</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Human Resources Management System
                        </a>
                    </li>
                </ol>
            </section>
			<section>
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
	                
                  <div class="col-lg-12">
                        <div class="panel panel-primary filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                  
                                   Pending Timesheet
                                </div>
                                    
                                </div>
                               

                            </div>
                            <div class="panel-body">
                                <div id="table1_wrapper" class="dataTables_wrapper no-footer">
                                <div class="row">
					            </div><div class="table-scrollable">
                                
                                <table class="table table-striped table-responsive dataTable no-footer" id="table1" role="grid" aria-describedby="table1_info">
                                  
                                    <thead>
                                           <tr>
                                                <th>
                                                    <i class="fa fa-user"></i>
                                                    Name
                                                </th>
												
												
                                                <th class="hidden-xs">
                                                    <i class="fa fa-fw fa-calendar"></i>
                                                    Date
                                                </th>
												<th>
                                                    <i class="fa fa-clock-o"></i>
                                                    Total Hours
                                                </th>
                                               
												<th>
                                                    <i class="fa  fa-dot-circle-o"></i>
                                                    Status
                                                </th>
                                                <th></th>
                                                 <th></th>
                                            </tr>
                                    </thead>
                                    <tbody>
                             <c:forEach var="vat" items="${list}">
                            <tr>
											<td>${vat.empname}</td>
                                            <td>${vat.tsubmissiondate}</td>
                                            <td>${vat.ttotalhrs}</td>
                                          
                                            
                                            <td>${vat.tstatus}</td>
                                            <td style="display:none;">${vat.tsuserId}</td>
                                             <td style="display:none;">${vat.empid}</td>
                         
											<td>
											<button class="btn btn-default btn-small" tiddd="${vat.empid}" class="btn btn-default" data-toggle="modal" data-target="#viewfortimesheet" href="#" style="float:right;" class="btn btn-effect btn-default" >
													<span class="fa fa-eye"></span> 
											</button>
											</td>
											
											<td>
											<button class="btn btn-success btn-small" href="#" class="btn btn-succes" data-toggle="modal"  ts="${vat.tstatus}" tid="${vat.tsuserId}"   data-target="#tmapprove">
												<i class="fa fa-check"></i> 
											</button>
											
											<button class="btn btn-danger btn-small" href="#" class="btn btn-danger" data-toggle="modal"  ts="${vat.tstatus}" tidd="${vat.tsuserId}"   data-target="#tmdisapprove">
												<i class="glyphicon glyphicon-remove"></i>
											</button>
											 
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
                    <!------------------------------------------------------------->
            	    <!------------------------------------------------------------->
            	    <!------------------------------------------------------------->
                    <div class="col-lg-12">
                        <div class="panel panel-success filterable">
                            <div class="panel-heading clearfix  ">
                                <div class="panel-title pull-left">
                                       <div class="caption">
                                  
                                    Timesheet
                                </div>
                                    
                                </div>
                               

                            </div>
                            <div class="panel-body">
                                <div id="table1_wrapper" class="dataTables_wrapper no-footer"><div class="row"><div class="col-md-6 col-sm-12"><div class="dataTables_length" id="table1_length"><label> <select name="table1_length" aria-controls="table1" class="form-control input-xsmall input-inline"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> records </label></div></div><div class="col-md-6 col-sm-12"><div id="table1_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-small input-inline" aria-controls="table1"></label></div></div></div><div class="table-scrollable"><table class="table table-striped table-responsive dataTable no-footer" id="table1" role="grid" aria-describedby="table1_info">
                                    <thead>
                                           <tr>
                                                <th>
                                                    <i class="fa fa-user"></i>
                                                    Name
                                                </th>
												
												
                                                <th class="hidden-xs">
                                                    <i class="fa fa-fw fa-calendar"></i>
                                                    Date
                                                </th>
												<th>
                                                    <i class="fa fa-clock-o"></i>
                                                    Total Hours
                                                </th>
                                                <th>
                                                    <i class="fa fa-user"></i>
                                                    Approver
                                                </th>
												<th>
                                                    <i class="fa  fa-dot-circle-o"></i>
                                                    Status
                                                </th>
                                                
                                            </tr>
                                    </thead>
                                    <tbody>
                             <c:forEach var="vad1" items="${list3}">
                            <tr>
											<td>${vad1.empname}</td>
                                            <td>${vad1.tsubmissiondate}</td>
                                            <td>${vad1.ttotalhrs}</td>
                                            <td>${vad1.tapprover}</td>
                                            
                                            <td>${vad1.tstatus}</td>
                         									
										</tr>
							</c:forEach>
                                  </tbody>
                                </table></div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                    <!------------------------------------------------------------->
             	   

                    
			
<!---------------------------------------------------------------------------------------------------------------------->		
<!---------------------------------------------------------------------------------------------------------------------->			  
<div class="modal fade" id="tmapprove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                                            <label>Are you sure you want to approve this timesheet?</label>
                    	<form:form class="form-horizontal" method="post" action="edit" modelAttribute="approves" id="updateForm">
                        <fieldset>
							<form:input style="display:none;" path="tsuserId" id="tsuserId" name="tsuserId" ></form:input>
							<form:input style="display:none;" path="tstatus" id="tstatus" name="tstatus"  value="Approved"></form:input>
							
							
						</fieldset>
						 <div class="form-group" style="float:right;">
                                                  <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                                  
                                                    <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success" style="float:right; margin-right:75px; margin-top:20px;">Approve</button>
	        		    							
                                                  
                          </div>
					</form:form>
                                                <button id="" name="" class="btn btn-default" style="float:right; margin-right:-165px; margin-top:27px;" data-dismiss="modal">Cancel</button>
                                                  
                                                 </div>
                                            <div class="modal-footer">
                                           
                                                </div>
                                                
                                                
                                            </div>
                                        </div>
                                    </div>
                         
<!---------------------------------------------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------------------------------------------->       

		<div class="modal fade" id="tmdisapprove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                                            <label>Are you sure you want to disapprove this timesheet?</label>
                    						<form:form class="form-horizontal" method="post" action="edit2" modelAttribute="disapproves" id="updateForm1">
                        <fieldset>
							<form:input style="display:none;" path="tsuserId" id="tsuserId" name="tsuserId" ></form:input>
							<form:input style="display:none;" path="tstatus" id="tstatuss" name="tstatuss"  value="Disapproved"></form:input>
							<form:input style="" path="sumreghrs" id="sumreghrs" name="sumreghrs"></form:input>
							
							
						</fieldset>
						 <div class="form-group" style="float:right;">
                                                  <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                                  
                                                     <button id="buttonsubmit" name="buttonsubmit" class="btn btn-danger" style="float:right; margin-right:75px; margin-top:20px;">Dispprove</button>
	        		    							
                                                  
                          </div>
					</form:form>
                                                <button id="" name="" class="btn btn-default" style="float:right; margin-right:-165px; margin-top:27px;" data-dismiss="modal">Cancel</button>
                                                  
                                                 </div>
                                            <div class="modal-footer">
                                           
                                                </div>
                                                
                                                
                                            </div>
                                        </div>
                                    </div>
    <!-- ----------------------------------------------------------------------------------------------------------------------------------- -->
    	<div class="modal fade" id="viewfortimesheet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    <i class="fa fa-plus"></i>
                                               Timesheet Details
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                    						<!-- modal body ------------------------------------------------------->
                    						<!-- modal body ------------------------------------------------------->
                                             <form:form class="form-horizontal" method="post" action="edit" modelAttribute="approves" id="updateForm2">
                                             <form:input style="display:none;" path="tsuserId" id="tsuserIddd" name="tsuserIddd" ></form:input>
                                              </form:form>
                                              <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid" aria-describedby="sample_editable_1_info">
                                        <thead>
                                            
											<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="Full Name: activate to sort column ascending" style="width: 165px;">Date</th>
											<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 95px;">Time In</th>
											<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 66px;">Time Out</th>
											<th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="Notes: activate to sort column ascending" style="width: 97px;">Hours Worked</th>
											<th></th>
										

											
                                        </thead>
                                        <tbody>
                                       
                                         <c:forEach var="vad2" items="${list4}">
                           				 <tr>
                                            <td>${vad2.tnadate}</td>
                                            <td>${vad2.timeinval}</td>     
                                            <td>${vad2.timeoutval}</td>
                                            <td>${vad2.tnatotal}</td>
                                            <td>${vad2.empid}</td>
                         									
										</tr>
										</c:forEach>
                                        
   
											</tbody>
                                    </table>
                                	<!-- modal body ------------------------------------------------------->
                                	<!-- modal body ------------------------------------------------------->
                                         </div>
                                                 
                                         <div class="modal-footer">
                                         <c:forEach var="vad2" items="${list5}">
                                         <label>|| Regular Hours: ${vad2.sumreghrs} ||</label>
									     </c:forEach>
									      <c:forEach var="vad112" items="${list7}">
                                         <label>|| Late Hours: ${vad112.sumlatehrs} ||</label>
									     </c:forEach>
									      <c:forEach var="vad11" items="${list6}">
                                         <label>|| Undertime Hours: ${vad11.sumunderhrs} ||</label>
									     </c:forEach>
                                                <button type="button" class="btn btn-danger pull-right" style="margin-left:7px;"  data-dismiss="modal">
                                                    Close
                                                    <i class="fa fa-times"></i>
                                                </button>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>     
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			</section>
			</aside>
			</div>
    <!-- Include footer.jsp here --> 
    
    <%@include file="../includes/footer.jsp" %> 
    <!-- global js -->
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="${pageContext.request.contextPath}/resources/vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
   <script src="js/josh.js" type="text/javascript"></script>
    <script src="js/metisMenu.js" type="text/javascript"> </script>
    <script src="${pageContext.request.contextPath}/resources/vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <!--  todolist-->
    <script src="js/todolist.js"></script>
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
    <!-- Back to Top-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/countUp/countUp.js"></script>
    <!--   maps -->
    <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
     <script src="${pageContext.request.contextPath}/resources/vendors/jscharts/Chart.js"></script>
    <script src="js/dashboard.js" type="text/javascript"></script>
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
    $('#tmapprove').on('show.bs.modal', function (e) {
      	  // get information to update quickly to modal view as loading begins
      	  var opener=e.relatedTarget;//this holds the element who called the modal
      	   
      	  //we get details from attributes
      	  var tsuserId=$(opener).attr('tid');
      	  var tstatus=$(opener).attr('ts');
      	  
      	$('#updateForm').find('[id="tsuserId"]').val(tsuserId);
    	document.getElementById('tstatus').value = 'Approved';
        $('#updateForm').find('[id="tapproved"]').val(tstatus);
         });
    
    $('#tmdisapprove').on('show.bs.modal', function (e) {
    	  // get information to update quickly to modal view as loading begins
    	  var opener=e.relatedTarget;//this holds the element who called the modal
    	   
    	  //we get details from attributes
    	  var tsuserId=$(opener).attr('tidd');
    	  var tstatus=$(opener).attr('ts');
    	  
    	$('#updateForm1').find('[id="tsuserId"]').val(tsuserId);
  	document.getElementById('tstatuss').value = 'Disapproved';
      $('#updateForm1').find('[id="tapproved"]').val(tstatus);
       });
    
    $('#viewfortimesheet').on('show.bs.modal', function (e) {
  	  // get information to update quickly to modal view as loading begins
  	  var opener=e.relatedTarget;//this holds the element who called the modal
  	   
  	  //we get details from attributes
  	  var tsuserId=$(opener).attr('tiddd');
  	 
  	  
  	$('#updateForm2').find('[id="tsuserIddd"]').val(tsuserId);
	
   
     });
    
    </script>
    <!-- end of page level js -->
  
</body>
</html>
