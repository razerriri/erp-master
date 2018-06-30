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
         </div>
         </center>
         
		<!-- BEGIN SIDEBAR MENU -->
		<ul id="menu" class="page-sidebar-menu">
			<li>
				<a href="">
				<i class="livicon"  data-name="home" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
				<span class="title">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="/erp/JobRequestApproval">
				<i class="livicon"  data-name="laptop" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
				<span class="title">Job Post Requests</span>
				</a>
			</li>
			<li>
				<a href="/erp/AppPool">
				<i class="livicon"  data-name="users" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
				<span class="title">Application Pool</span>
				</a>
			</li>			
			<li>
				<a href="/erp/PSB">
				<i class="livicon"  data-name="address-book" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
				<span class="title">Personal Selection Board</span>
				</a>
			</li>
			<li>
				<a href="/erp/Scoring">
				<i class="livicon"  data-name="table" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
				<span class="title">Score Sheet</span>
				</a>
			</li>
			<li>
				<a href="/erp/Hired">
				<i class="livicon"  data-name="address-book" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
				<span class="title">Hiring</span>
				</a>
			</li>
			<li>
				<a href="/erp/NewHire">
				<i class="livicon"  data-name="users" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
				<span class="title">New Hire on Board</span>
				</a>
			</li>			
			<li>
				<a href="">
				<i class="livicon"  data-name="list" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
				<span class="title">Queries</span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="/erp/appPool">
						<i class="fa fa-angle-double-right"></i>
						<span class="title">Applicant Pool</span>
						</a>
					</li>
					<li>
						<a href="">
						<i class="fa fa-angle-double-right"></i>
						<span class="title">Query 2</span>
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="">
				<i class="livicon"  data-name="printer" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
				<span class="title">Reports</span>
				</a>
				<ul class="sub-menu">
					<li>
						<a href="">
						<i class="fa fa-angle-double-right"></i>
						<span class="title">Report 1</span>
						</a>
					</li>
					<li>
						<a href="">
						<i class="fa fa-angle-double-right"></i>
						<span class="title">Report 2</span>
						</a>
					</li>
				</ul>
			</li>
		</ul>
		<!-- END SIDEBAR MENU -->
      </div>
   </section>
</aside>