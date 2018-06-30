<!DOCTYPE html>
<html>
<head>
   
	<meta charset="UTF-8">
    <title>Schedule</title>
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

<%@include file="../includes/sidebar-employee.jsp" %>
 
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>Schedule</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">
                            <i class="livicon" data-name="dashboard" data-size="14" data-loop="true"></i>
                            Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="calendar" data-size="14" data-loop="true"></i>
                            My Schedule
                        </a>
                       
                    </li>
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                <!--main content-->
             <div class="button-dropdown pull-left" data-buttons="dropdown">
	          		<a href="" target="" class="btn btn-default button-alignment btn-Primary" style="margin-bottom:10px;margin-left:15px;"><i class="fa fa-print"></i> Print Schedule
	          		&nbsp;<i class="fa fa-caret-down"></i>
	          		</a>
            	<ul class="button-dropdown-menu-below">
                                                	
                     <li class="button-dropdown-divider">
                        <a>Daily</a>
                    </li>
                    
                     <li class="button-dropdown-divider">
                      <a>Weekly</a>
                      </li>
                      
                      <li class="button-dropdown-divider">
                      <a>Monthly</a>
            		    </li>
                                                 
      			 </ul>
      			 </div>
                
        		 <div class="col-lg-12 col-md-6 col-sm-6">
                       <div class="panel panel-plain filterable">
                            <div class="panel-heading clearfix  ">
                               <div class="panel-title pull-left">
		                           <div class="caption">
		                              <i class="livicon" data-name="calendar" data-size="16" data-loop="true" data-c="#000" data-hc="#555"></i>
		                              Schedule for the month of April
		                           </div>
                       		  </div>
		                     
		                     <div class="pull-right">
		                    	 <a class="btn btn-default" data-toggle="modal" data-href="#editaaaa" href="#editaaaa">
		                           <i class="fa fa-plus-circle"></i>
		                           Availability
		                        </a>
		                           
		                        <a class="btn btn-default" data-toggle="modal" data-href="#modal2" href="#modal2">
		                           <i class="fa fa-plus-circle"></i>
		                           Overtime
		                        </a>
	                        </div>
                        </div>
                            <div class="panel-body">
                           		
                                    <table class="table table-responsive" >
                                        <thead style="background-color:#90b8da;">
                                            <tr>
                                            	<th style="text-align:left;">Sunday</th>
                                                <th style="text-align:left;">Monday</th>
                                                <th style="text-align:left;">Tuesday</th>
                                                <th style="text-align:left;">Wednesday</th>
                                                <th style="text-align:left;">Thursday</th>
                                                <th style="text-align:left;">Friday</th>
                                                <th style="text-align:left;">Saturday</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><span>April 1, 2018</span></td>
                                                <td><span>April 2, 2018</span><br/><br/><br/> - </td>
                                                <td><span>April 3, 2018</span><br/><br/><br/> - </td>
                                                <td><span>April 4, 2018</span><br/><br/><br/> - </td>
                                                <td><span>April 5, 2018</span><br/><br/><br/> - </td>
                                                <td><span>April 6, 2018</span><br/><br/><br/> - </td>
                                                <td><span>April 7, 2018</span></td>
                                            </tr>
                                            <tr>
                                                <td>April 8, 2018</td>
                                                <td>April 9, 2018<br/><br/><br/> - </td>
                                                <td style="background-color:#eaeaea;">April 10, 2018<br/><br/><br/> - </td>
                                                <td>April 11, 2018<br/><br/><br/> - </td>
                                                <td>April 12, 2018<br/><br/><br/> - </td>
                                                <td>April 13, 2018<br/><br/><br/> - </td>
                                                <td>April 14, 2018</td>
                                            </tr>
                                            <tr>
                                                <td>April 15, 2018</td>
                                                <td>April 16, 2018<br/><br/><br/> - </td>
                                                <td>April 17, 2018<br/><br/><br/> - </td>
                                                <td>April 18, 2018<br/><br/><br/> - </td>
                                                <td>April 19, 2018<br/><br/><br/> - </td>
                                                <td>April 20, 2018<br/><br/><br/> - </td>
                                                <td>April 21, 2018</td>
                                            </tr>
                                            <tr>
                                                <td>April 22, 2018</td>
                                                <td>April 23, 2018<br/><br/><br/> - </td>
                                                <td>April 24, 2018<br/><br/><br/> - </td>
                                                <td>April 25, 2018<br/><br/><br/> - </td>
                                                <td>April 26, 2018<br/><br/><br/> - </td>
                                                <td>April 27, 2018<br/><br/><br/> - </td>
                                                <td>April 28, 2018</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                <div class="btn-group btn-group-xs pull-right">
                                    <button type="button" class="btn btn-default"><i class="fa fa-chevron-left"></i></button>
                                    <button type="button" class="btn btn-default">1</button>
                                    <button type="button" class="btn btn-default"><i class="fa fa-chevron-right"></i></button>
                                </div>
                                </div>	
                                </div>
                             </div>
              
               <%-- form:form class="form-horizontal" method="post" action="save" modelAttribute="scheddays" id="saveSchedDays"> --%>
               <form:form>
               <div class="modal fade" id="editaaaa" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           <i class="fa fa-file-text-o"></i>
                           Availability Form
                        </h4>
                     </div>
                     <div class="modal-body">
                           	<fieldset>
                                     <div class="row" style="margin-left:5px; margin-right:5px;">
                                        <label>Select Available Days:</label>
                                        
										<div class="input-group col-md-12">
                                           <span class="input-group-addon">
                                                    <span class="fa fa-calendar"></span>
                                            </span>
                                            <select name="dayId" id="dayId" multiple class="form-control select2">
		                                  		<option style="color: gray;" value="" disabled selected>Select Days</option>
		                                  		<option value="1">Monday</option>
		                                  		<option value="2">Tuesday</option>
		                                  		<option value="3">Wednesday</option>
		                                  		<option value="4">Thursday</option>
		                                  		<option value="5">Friday</option>
		                                  		<option value="6">Saturday</option>
		                                  		<option value="7">Sunday</option>
                                       		 </select>
                                        </div>
                                     </div>
                                     <br/>
                                     <div class="row" style="margin-left:5px; margin-right:5px;">
                                        <label>Select Shift:</label>
                                        
										<div class="input-group col-md-12">
                                           <span class="input-group-addon">
                                                    <span class="fa fa-calendar"></span>
                                            </span>
                                            <select name="shiftId" id="ShiftId" class="form-control select">
		                                  		<option style="color: gray;" value="" disabled selected>Select Shift:</option>
		                                  		<c:forEach var="e" items="${shiftlist}">
		                                  		<option value="${e.shiftId}">${e.shiftCode}&nbsp;-&nbsp;${e.startTime}&nbsp;to&nbsp;${e.endTime} </option>
		                                  		</c:forEach>
                                       		 </select>
                                        </div>
                                     </div>
                                     <input style="display:none;" name="empId" id="empId" value="15">
                                     &nbsp;
                              </fieldset>
                             
                     </div>
                     <div class="modal-footer ">
                        <button type="submit" class="btn btn-primary" onclick="">
                        <span class="glyphicon glyphicon-ok-sign"></span>
                        Submit
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
                     
                             
              <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
               <div class="modal-dialog">
                  <div class="modal-content">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title custom_align" id="Heading">
                           <i class="fa fa-file-text-o"></i>
                           Overtime Form
                        </h4>
                     </div>
                     <div class="modal-body">
                        <div class="row">
                           <form role="form">
                                     <div class="col-xs-12 col-sm-12 col-md-12">
                                        <label>Date:</label>
										<div class="input-group col-md-12">
                                           <span class="input-group-addon">
                                                    <span class="fa fa-calendar"></span>
                                            </span>
                                            <input type="date" class="form-control"/>
                                        </div>
                                     </div>
                                     &nbsp;
                                     
                              <div class="row">
                                 <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                       <label>Reason/s for Overtime:</label>
                                       <textarea name="ed" id="ed" class="form-control input-md"></textarea>
                                    </div>
                                 </div>
                              </div>
                        
                           </form>
                        </div>
                     </div>
                     <div class="modal-footer ">
                        <button type="submit" class="btn btn-primary">
                        <span class="glyphicon glyphicon-ok-sign" onclick="Redirect()"></span>
                        Submit
                        </button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                        Close
                        </button>
                     </div>
                  </div>
               </div>
            </div>
                        
               
                <!--main content ends--> </section>
            <!-- content --> </aside>
        <!-- right-side --> </div>
        
      <%@include file="../includes/footer.jsp" %>
     
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
    
<script type="text/javascript">

function Redirect()
{
    window.location="http://localhost:8080/erp/ess/schedule/";
}
   
</script>
    
</body>
</html>