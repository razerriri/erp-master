<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas offcanvas-left" style="background-color:#7f8c8d;">
   <section class="sidebar">
      <div class="page-sidebar  sidebar-nav">
         <div class="clearfix">
         </div>
         <center>
         <div style="margin-top: 25px">
            <img src="${pageContext.request.contextPath}/resources/img/jmari.jpg" class="img-responsive img-circle" width="100px" height="100px" alt="User Image">
            <h5 class="topprofiletext" style="color:white;">${viewName}</h5>
            <p>
               <span class="topprofiletext" style="color:white; font-size:11px;">${viewRole}</span>
               <input type="text" id="employeeID" name="employeeID" value="${getID}" disabled hidden />
         </div>
         </center>

         <!-- BEGIN SIDEBAR MENU -->
					<ul id="menu" class="page-sidebar-menu">
                       
                       
                       <!-- GENERAL Menu-->
						<li>
							<a href="/erp/ess/schedule/">
							<i class="livicon"  data-name="calendar" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Schedule</span>
							</a>
						</li>
						<li>
							<a href="/erp/Attendance_">
							<i class="livicon"  data-name="alarm" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Timesheet</span>
                            </a>
                        </li>
						<li>
							<a href="/erp/leaveRequest">
							<i class="livicon"  data-name="edit" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Leave Request</span>
                            </a>
                        </li>
                        <li>
							<a href="/erp/Reimbursement">
							<i class="livicon"  data-name="download" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Reimbursement Request</span>
							</a>
                        </li>
                        <li>
							<a href="/erp/hrms/hr_performance_management/evaluatee_queries_evaluation/">
							<i class="livicon"  data-name="barchart" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Personal Score</span>
                            </a>
                        </li>
						<li>
							<a href="/erp/hrms/hr_social_recognition/employee_sc/">
							<i class="livicon"  data-name="pin-on" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Announcements</span>
                            </a>
                        </li>
						<li>
							<a href="/ess/Payslip">
							<i class="livicon"  data-name="money" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Payslip</span>
                            </a>
                        </li>	                                    
                       	<li>
                            <a href="#">
							<i class="livicon" data-name="printer" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Reports</span>
                            </a>
                        </li>
					</ul>
                     <!-- END SIDEBAR MENU -->
                    <!-- END SIDEBAR MENU -->
      </div>
   </section>
</aside>