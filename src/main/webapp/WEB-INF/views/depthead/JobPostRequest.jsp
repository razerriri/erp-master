<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
	<%@ include file="../includes/head.jsp" %>
    <title>Human Resources Management System</title>

</head>

<body class="skin-josh">
    <%@ include file="../includes/header.jsp" %>	
	
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
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
			<section class="content">
                <div class="row">
				<div class="col-lg-12">
                   <div class="panel panel-primary" id="hidepanel1">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="pin-on" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                    Job Post Request
                                </h3>
                                
                            </div>
                            <div class="panel-body">
                                <form:form class="form-horizontal" action="submitJobReq" modelAttribute="modelJobReq" method="POST">
									<fieldset>
										<div class="form-group">
											<label class="col-md-2 control-label">Job Post Title:</label>
											<div class="col-md-9">
												<input type="text" id="postTitle" name="postTitle" class="form-control"  placeholder="Enter job post title">
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label" for="email">Job</label>
											<div class="col-md-9">
												<select class="form-control" id="postJob" name="postJob">
													<option value="" disabled selected>Select job</option>
													<c:forEach var="b" items="${listJob}">
													<option value="${b.jobID}">${b.jobName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<!--description-->
										<div class="form-group">
											<label class="col-md-2 control-label" for="message">Job Post Description</label>
											<div class="col-md-9">
												<textarea class="form-control" id="postDesc" name="postDesc" placeholder="Please enter job description here..." rows="5"></textarea>
											</div>
										</div>
			                                        
										<!--job post request-->
										<div class="form-group">
											<label class="col-md-2 control-label" for="email">Requested by</label>
											<div class="col-md-9">
												<input class="form-control" type="text" value="${viewName}" readonly/>
												<input class="form-control" type="text" id="postReq" name="postReq" value="${getID}" style="display:none" readonly/>
											</div>
										</div>
										    
										<!-- job post status-->
										<div class="form-group">
										<label class="col-md-2 control-label" for="example-password" style="display:none">Job Post Status:</label>
										<div class="col-md-9">
											<input type="text" id="postStat" name="postStat" class="form-control"  value="Pending" style="display:none">
										</div>
										</div>	
											
											
										<!-- Form actions -->
										<div class="form-group">
											<div class="col-md-11 text-right">
												<button type="submit" class="btn btn-responsive btn-primary btn-sm">Submit</button>
											</div>
										</div>
									</fieldset>
                                </form:form>
                            </div> <!-- end panel body -->
                        </div>

						</div>
						</div>
						
						</section>
			</aside>
			</div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
	
<%@include file="../includes/footer.jsp" %> 
</body>
</html>
