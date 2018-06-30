<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas offcanvas-left" style="background-color:#7f8c8d">
   <section class="sidebar">
      <div class="page-sidebar sidebar-nav">
         <div class="clearfix">
         </div>
         <center>
         <div style="margin-top: 25px">
            <img src="${pageContext.request.contextPath}/resources/img/jmari.jpg" class="img-responsive img-circle" width="100px" height="100px" alt="User Image">
            <h5 class="topprofiletext" style="color:white;">${viewName}</h5>
            <p>
               <span class="topprofiletext" style="color:white; font-size:11px;">${viewRole}</span>
         </div>
         </center>
         <!-- BEGIN SIDEBAR MENU -->
         <ul id="menu" class="page-sidebar-menu">
            <li id="syscon">
               <a href="">
               <i  class="livicon"  data-name="gears" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
               <span class="title">System Configuration</span>
               <span class="fa arrow"></span>
               </a>
               <ul class="sub-menu">
                  <li id="sbhr">
                     <a href="">
                     <i class="fa fa-angle-double-right"></i>
                     <span class="title">Human Resource</span>
                     </a>
                     <ul class="sub-menu">
                        <li>
                           <a href="/erp/system-setup/compensation-type/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Compensation Type</span>
                           </a>
                        </li>
                        <li>
                           <a href="/erp/system-setup/deductions/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Deductions</span>
                           </a>
                        </li>
                        <li>
                           <a href="/erp/system-setup/department/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Department</span>
                           </a>
                        </li>
                        <li>
                           <a href="/erp/system-setup/employee/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Employee</span>
                           </a>
                        </li>
                        <li>
                           <a href="/erp/system-setup/job-title/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Job Title</span>
                           </a>
                        </li>
                        <li>
                           <a href="/erp/system-setup/pay-grade/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Pay Grade</span>
                           </a>
                        </li>
                        <li>
                           <a href="/erp/system-setup/salary-type/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Salary Type</span>
                           </a>
                        </li>
                        <li>
                           <a href="/erp/system-setup/old-employee/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Old Employee</span>
                           </a>
                        </li>
                        <!-- <li>
                           <a href="/erp/system-setup/other-deductions/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Other deductions</span>
                           </a>
                        </li> -->
                        <li>
                           <a href="/erp/system-setup/withholding-tax/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Withholding tax</span>
                           </a>
                        </li>
                        <li>
                           <a href="/erp/system-setup/time-work/">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Time Work</span>
                           </a>
                        </li>
                        <li>
                           <a href="/erp/leaveSetup">
                           <i class="fa fa-angle-double-right"></i>
                           <span class="title">Leave Types</span>
                           </a>
                        </li>
                     </ul>
                  </li>
               </ul>
               <ul class="sub-menu">
                  <li>
                     <a href="">
                     <i class="fa fa-angle-double-right"></i>
                     <span class="title">Logistics</span>
                     </a>
                  </li>
               </ul>
               <ul class="sub-menu">
                  <li>
                     <a href="">
                     <i class="fa fa-angle-double-right"></i>
                     <span class="title">Financials</span>
                     </a>
                  </li>
               </ul>
            </li>
            <li>
               <a href="/erp/manage-users">
               <i class="livicon"  data-name="settings" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
               <span class="title">User Management</span>
               </a>
            </li>
            
            <li>
               <a href="">
               <i class="livicon" data-name="printer" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
               <span class="title">Reports</span>
               </a>
            </li>
            <br>
         </ul>
         <!-- END SIDEBAR MENU -->
      </div>
   </section>
</aside>