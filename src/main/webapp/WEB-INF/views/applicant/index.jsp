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
    <%@ include file="../includes/header-applicant.jsp" %>	
	
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <%@include file="../includes/sidebar-applicant.jsp" %>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side strech">
            <!-- Main content -->
            <section class="content-header">
                <h1>Application</h1>
            </section>
			        <section class="content">
                <!--main content-->
                <div class="row">
                    <div class="col-md-8">
                        <!-- BEGIN FEATURED POST -->
                       
                        <c:forEach var="job" items="${viewJobReq}">
                         <form:form action="submitApplication" modelAttributte="modelApplication" method="POST">
	                        <div class="featured-post-wide">
	                            
	                            <div class="featured-text relative-left">
	                            	<input type="text" id="postID" name="postID" style="display:none" value="${job.postID}"/>
	                                <h2>
	                                    ${job.postJobName}
	                                </h2>
	                                <p class="date"><b>Description:</b></p>
	                                <p>
	                                    ${job.postDesc}
	                                </p>
	                                <br><br>
	                                <p class="additional-post-wrap">
	                                    <span class="additional-post">
	                                        <i class="livicon" data-name="clock" data-size="13" data-loop="true" data-c="#5bc0de" data-hc="#5bc0de"></i>
	                                        <a href=""> ${job.postDate}</a>
	                                    </span>
	                                    <span class="additional-post">
	                                        <i class="livicon" data-name="money" data-size="13" data-loop="true" data-c="#5bc0de" data-hc="#5bc0de"></i>
	                                        <a href=""> ${job.payMin} - ${job.payMax}</a>
	                                    </span>
	                                </p>
	                                <hr>
	                                <p class="text-right">
	                                    <button type="submit" onclick="confirmApplication()" id="btnApply" class="btn btn-primary">Apply</button>
	                                </p>
	                            </div>
	                        </div>
	                        </form:form>
                        </c:forEach>
                        
                        <!-- /.featured-post-wide -->
                        <!-- END FEATURED POST -->
                       </div>
						<div class="col-md-4">
                        <!-- BEGIN POPULAR POST -->
                         <!-- BEGIN JOIN NEWSLETTER -->
                        <div class="the-box no-border text-center signup-newsletter">
                            <h4 class="small-heading more-margin-bottom">SEARCH JOBS</h4>
                            <p>Search for jobs that you are interested with</p>
                            <form role="form">
                                <div class="row">
                                    <div class="col-xs-8">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="...">
                                        </div>
                                    </div>
                                    <!-- /.col-xs-8 -->
                                    <div class="col-xs-4 col-full-width-left">
                                        <button type="submit" class="btn btn-info btn-block">Search</button>
                                    </div>
                                    <!-- /.col-xs-4 -->
                                </div>
                                <!-- /.row -->
                            </form>
                        </div>
                        <!-- /.the-box .no-border -->
                        <!-- END JOIN NEWSLETTER -->
                      </div>
                    <!-- /.col-md-4 -->
                </div>
                <!--main content ends-->
            </section>
			</aside>
			</div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <%@ include file="../includes/footer.jsp" %>	
  
</body>
</html>
<script>
 	function confirmApplication(x){
 		if(confirm("Are you sure you want to submit this application?") == true){
 			var id = document.getElementById('postID').value;
 			window.location = '/erp/index';
 		}
 		else{
 			
 		}
 	}
</script>