<!DOCTYPE html>
<html>
<head>
   
	<meta charset="UTF-8">
    <title>Setup | Time Work</title>
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

<%@include file="../includes/sidebar-sysadmin.jsp" %>
 
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>Configure Time Work</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="livicon" data-name="dashboard" data-size="14" data-loop="true"></i>
                            Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="clock" data-size="14" data-loop="true"></i>
                            Time Work
                        </a>
                    </li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                <!--main content-->
         
          <div class="col-lg-12 col-md-6 col-sm-6">
                       <div class="panel panel-plain filterable">
                            <div class="panel-heading clearfix  ">
                               <div class="panel-title pull-left">
		                           <div class="caption">
		                              <i class="livicon" data-name="clock" data-size="16" data-loop="true" data-c="#000" data-hc="#555"></i>
		                              Time Work Table
		                           </div>
                       		  </div>	
		                        <div class="pull-right">
			                           <a class="btn btn-primary" data-toggle="modal" data-href="#editaaaa" href="#editaaaa">
			                           <i class="fa fa-wrench"></i>
			                           Configure Time Work
			                           </a>
		                        </div>
                            </div>
                            <div class="panel-body">
                           		
                                    <table class="table table-striped table-responsive" id="table1">
                                        <thead style="background-color:#ddd;">
                                            <tr>
                                            	<th style="text-align:left;">Time Code</th>
                                                <th style="text-align:left;">Grace Period</th>
                                                <th style="text-align:left;">Grace Time</th>
                                                <th style="text-align:left;">Start Time</th>
                                                <th style="text-align:left;">End Time</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                         <c:forEach var="e" items="${shiftlist}">
                                            <tr>
                                                <td>${e.shiftCode}</td>
                                               	<td>${e.gracePeriod}</td>
                                               	<td>${e.sGraceTime}</td>
                                                <td>${e.startTime}</td>
                                                <td>${e.endTime}</td>
                                                <td style="text-align:center;">
	                                            	<button class="btn btn-default btn-small">
										  			<i class="glyphicon glyphicon-eye-open"></i>
													</button>
	                                            	<button class="btn btn-success btn-small" href="#editTime" data-toggle="modal" data-target="#editTime" s-id="${e.shiftId}" s-code="${e.shiftCode}" s-gp="${e.gracePeriod}" s-stime="${e.startTime}" s-etime="${e.endTime}">
										  			<i class="glyphicon glyphicon-pencil"></i>
													</button>
													<button class="btn btn-danger btn-small" onclick="confirmDelete(${e.shiftId})">
										  			<i class="glyphicon glyphicon-trash"></i>
													</button>
                                           		</td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>	
                                </div>
                             </div>
                             
            
             <form:form action="save" modelAttribute="shift" method="POST">  
            <div class="modal fade" id="editaaaa" tabindex="-1" role="dialog" aria-labelledby="save" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           <i class="fa fa-wrench"></i>
                          Configure Time Work
                        </h4>
                     </div>
                     <div class="modal-body">
					       <fieldset>
                              <div class="row">
                              
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Time Code</label>
                                       <input type="text" name="shiftCode" id="shiftCode" class="form-control input-md" placeholder="Time Code" tabindex="1">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Grace Period</label>
                                       <input type="number" min="30" max="59" name="gracePeriod" id="gracePeriod" class="form-control input-md" placeholder="Grace Period" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Start Time</label>
                                       <input type="time" name="startTime" id="startTime" class="form-control input-md" tabindex="2">
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>End Time</label>
                                       <input type="time" name="endTime" id="endTime" class="form-control input-md" tabindex="2">
                                    </div>
                                 </div>
                              </div>
                        
                     </fieldset>  
                     </div>
                     <div class="modal-footer ">
                        <button type="submit" class="btn btn-primary">
                        <span class="glyphicon glyphicon-ok-sign"></span>
                        Save
                        </button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                        Close
                        </button>
                     </div>
                  </div>
               </div>
            </div>
             </form:form> 
                     
            <form:form action="edit" modelAttribute="updateshift" method="POST" id="updateForm">  
			<fieldset>
            <div class="modal fade" id="editTime" tabindex="-1" role="dialog" aria-labelledby="update" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           <i class="fa fa-wrench"></i>
                          Edit Time Work
                        </h4>
                     </div>
                     <div class="modal-body">
                    		
                              <div class="row">
                              	<input name="shiftId" id="sid" style="display:none"/>
                              	
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Time Code</label>
                                       <input type="text" name="shiftCode" id="scode" class="form-control input-md" placeholder="Time Code"/>
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Grace Period</label>
                                       <input type="number" name="gracePeriod" id="sgperiod" class="form-control input-md" placeholder="Grace Period" />
                                    </div>
                                 </div>
                              </div>
                              <div class="row">
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>Start Time</label>
                                       <input type="text" name="startTime" id="stime" placeholder="Time"  class="form-control input-md"/>
                                    </div>
                                 </div>
                                 <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group">
                                       <label>End Time</label>
                                       <input type="text" name="endTime" id="etime" placeholder="Time" class="form-control input-md"/>
                                    </div>
                                 </div>
                              </div>
                     </div>
                     <div class="modal-footer ">
                        <button type="submit" class="btn btn-primary">
                        <span class="glyphicon glyphicon-ok-sign"></span>
                        Save
                        </button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                        Close
                        </button>
                     </div>
                     
                  </div>
               </div>
            </div>
            </fieldset>
            </form:form>
            
                     </section>
                     
            <!-- content --> </aside>
        <!-- right-side --> </div>
        
            <div class="modal fade" id="edit2" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           Delete Record
                        </h4>
                     </div>
                     <div class="modal-body">
                        <div class="row">
                           Are you sure you want to delete?
                        </div>
                     </div>
                     <div class="modal-footer ">
                        <button type="submit" class="btn btn-danger">
                        <span class="glyphicon glyphicon-ok-sign"></span>
                        Delete
                        </button>
                        <button type="button" class="btn btn-plain" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                        Close
                        </button>
                     </div>
                  </div>
               </div>
            </div>
        
      <%@include file="../includes/footer.jsp" %>
     
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <script>
   		function confirmDelete(x){
   			if(confirm("Are you sure you want to delete this shift type?") == true){
   				window.location = 'delete/'+ x;
   			}
   			else{
   				
   			}
   		}
   		
   		$('#editTime').on('show.bs.modal', function (e) {
      	  // get information to update quickly to modal view as loading begins
      	  var opener=e.relatedTarget;//this holds the element who called the modal
      	   
      	  //we get details from attributes
      	  
      	  var sid=$(opener).attr('s-id');
      	  var scode=$(opener).attr('s-code');
      	  var sgperiod=$(opener).attr('s-gp');
          var stime=$(opener).attr('s-stime');
          var etime=$(opener).attr('s-etime');
          var jcid=$(opener).attr('jc-id');

      	  //set what we got to our form
      	  $('#updateForm').find('[id="sid"]').val(sid);
  	  	  $('#updateForm').find('[id="scode"]').val(scode);
          $('#updateForm').find('[id="sgperiod"]').val(sgperiod);
          $('#updateForm').find('[id="stime"]').val(stime);
          $('#updateForm').find('[id="etime"]').val(etime);
          $('#updateForm').find('[id="jcid"]').val(jcid);
        	
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