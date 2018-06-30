<!DOCTYPE html>
<html>

<head>
   <!-- Include head.jsp here -->
   <%@ include file="../includes/head.jsp" %>  
    <!--page level css -->
    <link href="vendors/fullcalendar/css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="css/pages/calendar_custom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" media="all" href="vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="vendors/animate/animate.min.css">
    <link rel="stylesheet" href="css/only_dashboard.css" />
	<link rel="stylesheet" href="ntselectable.css" />
	<link href="vendors/modal/css/component.css" rel="stylesheet">
	<link href="vendors/clockface/css/clockface.css" rel="stylesheet">
	<link href="vendors/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
	<link href="vendors/timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet">
	<link href="vendors/datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen"> 
	<link href="vendors/touchspin/dist/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" media="all">
	<link href="vendors/multiselect/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
	<link href="vendors/multiselect/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
	<link href="vendors/spinner/dist/bootstrap-spinner.css" rel="stylesheet">
	
    <!--end of page level css-->
</head>

<body class="skin-josh">
  <!-- Include header.jsp here -->
  <%@ include file="../includes/header.jsp" %>
    
	
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
       	<%@include file="../includes/sidebar.jsp" %>
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
			
						<a data-toggle="modal" data-href="#createtimesheet" href="#createtimesheet"style="float:right;" class="btn btn-effect btn-success" >
						<i class="fa fa-plus"></i>
					   Create Timesheet
						</a>
						
		
				
				
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			</section>
			
			</aside>
			<div class="modal fade in" id="createtimesheet" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title modal-success">TIMESHEET</h4>
                            </div>
                            <div class="modal-body">
                       
                          <div class="box box-body">
							<center><a data-toggle="modal" data-href="#createtimesheet2" href="#createtimesheet2" class="btn btn-default">Weekly Timesheet</a></center>
							<br>
							<center><a data-toggle="modal" data-href="#createtimesheet1" href="#createtimesheet1" class="btn btn-default">Monthly Timesheet</a></center>
							<br>
							<center><a data-toggle="modal" data-href="#createtimesheet3" href="#createtimesheet3" class="btn btn-default">Semi-Monthly Timesheet</a></center>
                      	  </div>
                        
                            </div>
							
							 <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                            </div>
							
                        </div>
                    </div>
                </div>
              <!--  -->
              <!--  -->
              <div class="modal fade in" id="createtimesheet1" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title modal-success">TIMESHEET</h4>
                            </div>
                            <div class="modal-body">
                       
                          <div class="box box-body">
							<form:form class="form-horizontal" method="post" action="save" modelAttribute="wta">
                       <!--  -->
                       <!--  -->	
                          <form:select path="forthemonthof" id="forthemonthof" name="forthemonthof" class="form-control" style="float:right; margin-right:10px;margin-top:-30px;width:125px;">
													<form:option value="">Month</form:option>
													<form:option value="January">January</form:option>
													<form:option value="February">February</form:option>
													<form:option value="March">March</form:option>
													<form:option value="April">April</form:option>
													<form:option value="June">June</form:option>
													<form:option value="July">July</form:option>
													<form:option value="August">August</form:option>
													<form:option value="September">September</form:option>
													<form:option value="October">October</form:option>
													<form:option value="November">November</form:option>
													<form:option value="December">December</form:option>
							</form:select>
												
							 <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Submit</button>
							</form:form>
                      	  </div>
                        
                            </div>
							
							 <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                            </div>
							
                        </div>
                    </div>
                </div>
                <!--  -->
                <!--  -->
                <div class="modal fade in" id="createtimesheet2" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title modal-success">WEEKLY TIMESHEET</h4>
                            </div>
                            <div class="modal-body">
                       
                          <div class="box box-body">
							<form:form class="form-horizontal" method="post" action="save1" modelAttribute="wta">
                       <!--  -->
                       <!--  -->	
                      
					   <form:input type="text" path="ttype" value="Weekly" class="form-control"></form:input>
					    <form:input type="text" path="tdaysno" value="7" class="form-control"></form:input>
                       <form:input size="16" type="date" path="weekstart"  class="form-control"></form:input>
                       
                       				
							 <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Submit</button>
							</form:form>
                      	  </div>
                        
                            </div>
							
							 <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                            </div>
							
                        </div>
                    </div>
                </div>
                <!--  -->
                <!--  -->
                <div class="modal fade in" id="createtimesheet3" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title modal-success">SEMI-MONTHLY TIMESHEET</h4>
                            </div>
                            <div class="modal-body">
                       
                          <div class="box box-body">
							<form:form class="form-horizontal" method="post" action="save1" modelAttribute="wta">
                       <!--  -->
                       <!--  -->	
                      
					   <form:input type="text" path="ttype" value="Semi-Monthly" class="form-control"></form:input>
					    <form:input type="text" path="tdaysno" value="15" class="form-control"></form:input>
                       <form:input size="16" type="date" path="weekstart"  class="form-control"></form:input>
                       
                       				
							 <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Submit</button>
							</form:form>
                      	  </div>
                        
                            </div>
							
							 <div class="modal-footer">
                                <button type="button" data-dismiss="modal" class="btn">Close</button>
                            </div>
							
                        </div>
                    </div>
                </div>
    <!-- Include footer.jsp here --> 
    <%@include file="../includes/footer.jsp" %> 
    <!-- global js -->
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <!--livicons-->
    <script src="vendors/livicons/minified/raphael-min.js" type="text/javascript"></script>
    <script src="vendors/livicons/minified/livicons-1.4.min.js" type="text/javascript"></script>
   <script src="js/josh.js" type="text/javascript"></script>
    <script src="js/metisMenu.js" type="text/javascript"> </script>
    <script src="vendors/holder-master/holder.js" type="text/javascript"></script>
    <!-- end of global js -->
    <!-- begining of page level js -->
    <!--  todolist-->
    <script src="js/todolist.js"></script>
    <!-- EASY PIE CHART JS -->
    <script src="vendors/charts/easypiechart.min.js"></script>
    <script src="vendors/charts/jquery.easypiechart.min.js"></script>
    <!--for calendar-->
    <script src="vendors/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="vendors/fullcalendar/calendarcustom.min.js" type="text/javascript"></script>
    <!--   Realtime Server Load  -->
    <script src="vendors/charts/jquery.flot.min.js" type="text/javascript"></script>
    <script src="vendors/charts/jquery.flot.resize.min.js" type="text/javascript"></script>
    <!--Sparkline Chart-->
    <script src="vendors/charts/jquery.sparkline.js"></script>
    <!-- Back to Top-->
    <script type="text/javascript" src="vendors/countUp/countUp.js"></script>
    <!--   maps -->
    <script src="vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
     <script src="vendors/jscharts/Chart.js"></script>
    <script src="js/dashboard.js" type="text/javascript"></script>
    <script type="text/javascript" src="vendors/datetimepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="vendors/datetimepicker/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
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
	
	 <script src="vendors/modal/js/classie.js"></script>
	 <script src="vendors/modal/js/modalEffects.js"></script>
	 <div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 745px; z-index: 2560; display: none; top: 3026px;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">16 September 1979</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><fieldset class="minute"><legend>AM</legend><span class="minute">5:00</span><span class="minute">5:05</span><span class="minute">5:10</span><span class="minute">5:15</span><span class="minute">5:20</span><span class="minute active">5:25</span><span class="minute">5:30</span><span class="minute">5:35</span><span class="minute">5:40</span><span class="minute">5:45</span><span class="minute">5:50</span><span class="minute">5:55</span></fieldset></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">16 September 1979</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><fieldset class="hour"><legend>AM</legend><span class="hour hour_am">12</span><span class="hour hour_am">1</span><span class="hour hour_am">2</span><span class="hour hour_am">3</span><span class="hour hour_am">4</span><span class="hour active hour_am">5</span><span class="hour hour_am">6</span><span class="hour hour_am">7</span><span class="hour hour_am">8</span><span class="hour hour_am">9</span><span class="hour hour_am">10</span><span class="hour hour_am">11</span></fieldset><fieldset class="hour"><legend>PM</legend><span class="hour hour_pm">12</span><span class="hour hour_pm">1</span><span class="hour hour_pm">2</span><span class="hour hour_pm">3</span><span class="hour hour_pm">4</span><span class="hour hour_pm">5</span><span class="hour hour_pm">6</span><span class="hour hour_pm">7</span><span class="hour hour_pm">8</span><span class="hour hour_pm">9</span><span class="hour hour_pm">10</span><span class="hour hour_pm">11</span></fieldset></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">September 1979</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr><tr><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th><th class="dow">Su</th></tr></thead><tbody><tr><td class="day old">27</td><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day old">31</td><td class="day">1</td><td class="day">2</td></tr><tr><td class="day">3</td><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td></tr><tr><td class="day">10</td><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td><td class="day active">16</td></tr><tr><td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td></tr><tr><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td><td class="day">30</td></tr><tr><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td><td class="day new">7</td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">1979</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month active">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">1970-1979</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old">1969</span><span class="year">1970</span><span class="year">1971</span><span class="year">1972</span><span class="year">1973</span><span class="year">1974</span><span class="year">1975</span><span class="year">1976</span><span class="year">1977</span><span class="year">1978</span><span class="year active">1979</span><span class="year old">1980</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div></div>
	 <div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 745px; z-index: 2600; display: none; top: 3100.4px;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">21 December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute">15:00</span><span class="minute">15:05</span><span class="minute">15:10</span><span class="minute">15:15</span><span class="minute">15:20</span><span class="minute active">15:25</span><span class="minute">15:30</span><span class="minute">15:35</span><span class="minute">15:40</span><span class="minute">15:45</span><span class="minute">15:50</span><span class="minute">15:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">21 December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span><span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span><span class="hour">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour">14:00</span><span class="hour active">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td class="day old">25</td><td class="day old">26</td><td class="day old">27</td><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day">1</td></tr><tr><td class="day">2</td><td class="day">3</td><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td></tr><tr><td class="day">9</td><td class="day">10</td><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td></tr><tr><td class="day">16</td><td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day active">21</td><td class="day">22</td></tr><tr><td class="day">23</td><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td></tr><tr><td class="day">30</td><td class="day">31</td><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month active">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year active">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr></tfoot></table></div></div>
	 
	 <div class="datetimepicker datetimepicker-dropdown-bottom-left dropdown-menu" style="left: 1137px; z-index: 2420;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">21 December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute">15:00</span><span class="minute">15:05</span><span class="minute">15:10</span><span class="minute">15:15</span><span class="minute">15:20</span><span class="minute active">15:25</span><span class="minute">15:30</span><span class="minute">15:35</span><span class="minute">15:40</span><span class="minute">15:45</span><span class="minute">15:50</span><span class="minute">15:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">21 December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span><span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span><span class="hour">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour">14:00</span><span class="hour active">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td class="day old">25</td><td class="day old">26</td><td class="day old">27</td><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day">1</td></tr><tr><td class="day">2</td><td class="day">3</td><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td></tr><tr><td class="day">9</td><td class="day">10</td><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td></tr><tr><td class="day">16</td><td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day active">21</td><td class="day">22</td></tr><tr><td class="day">23</td><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td></tr><tr><td class="day">30</td><td class="day">31</td><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month active">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year active">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div></div>
	 <div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 1258px; z-index: 2460;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: hidden;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">14 February 2013</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute active">10:00</span><span class="minute">10:10</span><span class="minute">10:20</span><span class="minute">10:30</span><span class="minute">10:40</span><span class="minute">10:50</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: hidden;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">14 February 2013</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour disabled">0:00</span><span class="hour disabled">1:00</span><span class="hour disabled">2:00</span><span class="hour disabled">3:00</span><span class="hour disabled">4:00</span><span class="hour disabled">5:00</span><span class="hour disabled">6:00</span><span class="hour disabled">7:00</span><span class="hour disabled">8:00</span><span class="hour disabled">9:00</span><span class="hour active">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour">14:00</span><span class="hour">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: hidden;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">February 2013</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td class="day old disabled">27</td><td class="day old disabled">28</td><td class="day old disabled">29</td><td class="day old disabled">30</td><td class="day old disabled">31</td><td class="day disabled">1</td><td class="day disabled">2</td></tr><tr><td class="day disabled">3</td><td class="day disabled">4</td><td class="day disabled">5</td><td class="day disabled">6</td><td class="day disabled">7</td><td class="day disabled">8</td><td class="day disabled">9</td></tr><tr><td class="day disabled">10</td><td class="day disabled">11</td><td class="day disabled">12</td><td class="day disabled">13</td><td class="day">14</td><td class="day">15</td><td class="day">16</td></tr><tr><td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day">21</td><td class="day">22</td><td class="day">23</td></tr><tr><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day new">1</td><td class="day new">2</td></tr><tr><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td><td class="day new">6</td><td class="day new">7</td><td class="day new">8</td><td class="day new">9</td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: hidden;"><span class="glyphicon glyphicon-arrow-left disabled"></span> </th><th colspan="5" class="switch">2013</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: hidden;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old disabled">2009</span><span class="year disabled">2010</span><span class="year disabled">2011</span><span class="year active disabled">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div></div>
	 
	 <div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 1258px; z-index: 2500;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">21 December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute">15:00</span><span class="minute">15:05</span><span class="minute">15:10</span><span class="minute">15:15</span><span class="minute">15:20</span><span class="minute active">15:25</span><span class="minute">15:30</span><span class="minute">15:35</span><span class="minute">15:40</span><span class="minute">15:45</span><span class="minute">15:50</span><span class="minute">15:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">21 December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour">0:00</span><span class="hour">1:00</span><span class="hour">2:00</span><span class="hour">3:00</span><span class="hour">4:00</span><span class="hour">5:00</span><span class="hour">6:00</span><span class="hour">7:00</span><span class="hour">8:00</span><span class="hour">9:00</span><span class="hour">10:00</span><span class="hour">11:00</span><span class="hour">12:00</span><span class="hour">13:00</span><span class="hour">14:00</span><span class="hour active">15:00</span><span class="hour">16:00</span><span class="hour">17:00</span><span class="hour">18:00</span><span class="hour">19:00</span><span class="hour">20:00</span><span class="hour">21:00</span><span class="hour">22:00</span><span class="hour">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td class="day old">25</td><td class="day old">26</td><td class="day old">27</td><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day">1</td></tr><tr><td class="day">2</td><td class="day">3</td><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td></tr><tr><td class="day">9</td><td class="day">10</td><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td></tr><tr><td class="day">16</td><td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day active">21</td><td class="day">22</td></tr><tr><td class="day">23</td><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td></tr><tr><td class="day">30</td><td class="day">31</td><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month active">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year active">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">Today</th></tr></tfoot></table></div></div>
	 <div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="left: 1258px; z-index: 2540;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">21 December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><fieldset class="minute"><legend>PM</legend><span class="minute">3:00</span><span class="minute">3:05</span><span class="minute">3:10</span><span class="minute">3:15</span><span class="minute">3:20</span><span class="minute active">3:25</span><span class="minute">3:30</span><span class="minute">3:35</span><span class="minute">3:40</span><span class="minute">3:45</span><span class="minute">3:50</span><span class="minute">3:55</span></fieldset></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">21 December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><fieldset class="hour"><legend>AM</legend><span class="hour hour_am">12</span><span class="hour hour_am">1</span><span class="hour hour_am">2</span><span class="hour hour_am">3</span><span class="hour hour_am">4</span><span class="hour hour_am">5</span><span class="hour hour_am">6</span><span class="hour hour_am">7</span><span class="hour hour_am">8</span><span class="hour hour_am">9</span><span class="hour hour_am">10</span><span class="hour hour_am">11</span></fieldset><fieldset class="hour"><legend>PM</legend><span class="hour hour_pm">12</span><span class="hour hour_pm">1</span><span class="hour hour_pm">2</span><span class="hour active hour_pm">3</span><span class="hour hour_pm">4</span><span class="hour hour_pm">5</span><span class="hour hour_pm">6</span><span class="hour hour_pm">7</span><span class="hour hour_pm">8</span><span class="hour hour_pm">9</span><span class="hour hour_pm">10</span><span class="hour hour_pm">11</span></fieldset></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">December 2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr><tr><th class="dow">Su</th><th class="dow">Mo</th><th class="dow">Tu</th><th class="dow">We</th><th class="dow">Th</th><th class="dow">Fr</th><th class="dow">Sa</th></tr></thead><tbody><tr><td class="day old">25</td><td class="day old">26</td><td class="day old">27</td><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day">1</td></tr><tr><td class="day">2</td><td class="day">3</td><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td></tr><tr><td class="day">9</td><td class="day">10</td><td class="day">11</td><td class="day">12</td><td class="day">13</td><td class="day">14</td><td class="day">15</td></tr><tr><td class="day">16</td><td class="day">17</td><td class="day">18</td><td class="day">19</td><td class="day">20</td><td class="day active">21</td><td class="day">22</td></tr><tr><td class="day">23</td><td class="day">24</td><td class="day">25</td><td class="day">26</td><td class="day">27</td><td class="day">28</td><td class="day">29</td></tr><tr><td class="day">30</td><td class="day">31</td><td class="day new">1</td><td class="day new">2</td><td class="day new">3</td><td class="day new">4</td><td class="day new">5</td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2012</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="month">Jan</span><span class="month">Feb</span><span class="month">Mar</span><span class="month">Apr</span><span class="month">May</span><span class="month">Jun</span><span class="month">Jul</span><span class="month">Aug</span><span class="month">Sep</span><span class="month active">Oct</span><span class="month">Nov</span><span class="month">Dec</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-left"></span> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: visible;"><span class="glyphicon glyphicon-arrow-right"></span> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year active">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year">2015</span><span class="year">2016</span><span class="year">2017</span><span class="year">2018</span><span class="year">2019</span><span class="year old">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today">Today</th></tr></tfoot></table></div></div>
	 
    <!-- end of page level js -->
  
</body>
</html>
