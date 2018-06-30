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

	<%@include file="../includes/sidebar-hiring-manager.jsp" %>
	
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1>Human Resources Management System</h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="user" data-size="16" data-color="#333" data-hovercolor="#333"></i>
							Job Post Request
                        </a>
                    </li>
                </ol>
            </section>
			<section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <!-- BEGIN SAMPLE TABLE PORTLET-->
                        <div class="panel panel-primary ">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <i class="livicon" data-name="user" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                Job Post Requests
                            </h4>
                        </div>
                        <br />
                        <div class="panel-body">
                            <table class="table table-bordered " id="table">
                                <thead>
                                    <tr class="filters">
                                        <th>Job Post Title</th>
                                        <th>Description</th>
                                        <th>Job Title</th>
                                        <th>Requested by</th>
                                        <th>Date Requested</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                	<c:forEach var="job" items="${viewJobReq}">
                                    <tr>
                                        <td>${job.postTitle}</td>
                                        <td>${job.postDesc}</td>
                                        <td>${job.postJobName}</td>
                                        <td>${job.postReqName}</td>
                                        <td>${job.postStat}</td>
                                       <td>
	                                        <input type="text" name="postID" value="${job.postID}" style="display:none"/>
                                        	<center>                                          
                                            <a href="#modalUpdatePost" class="btn btn-success" data-toggle="modal" data-target="#modalUpdatePost" pTitle="${job.postTitle}" pDesc="${job.postDesc}" pJob="${job.postJobName}" pJobID="${job.postJob}" pReq="${job.postReqName}" pStat="${job.postStat}" pID="${job.postID}">
													<span class="glyphicon glyphicon-eye"></span> 
													</a>
											</center>
                                         </td>   
                                   	</tr>
									</c:forEach>
                                </tbody>
								</table>
		
                              </div>
                              <%@ include file="jobPost-modal.jsp" %>
							</div>
						</div>

					</section>
			</aside>
			</div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
   <%@include file="../includes/footer.jsp" %>
   <script>
	
	$('#modalUpdatePost').on('show.bs.modal', function (e) {
  		// get information to update quickly to modal view as loading begins
  		var opener=e.relatedTarget;//this holds the element who called the modal
 	   
	//we get details from attributes
	var pTitle=$(opener).attr('pTitle');
	var pDesc=$(opener).attr('pDesc');
	var pJob=$(opener).attr('pJob');
	var pJobID=$(opener).attr('pJobID');
	var pReq=$(opener).attr('pReq');
	var pStat=$(opener).attr('pStat');
	var pID=$(opener).attr('pID');
  	  	  

	//set what we got to our form
  	$('#updatePostForm').find('[id="postTitle"]').val(pTitle);
  	$('#updatePostForm').find('[id="postDesc"]').val(pDesc);
  	$('#updatePostForm').find('[id="postJob"]').val(pJobID);
  	$('#updatePostForm').find('[id="postReq"]').val(pReq);
  	$('#updatePostForm').find('[id="postStat"]').val(pStat); 
   	$('#updatePostForm').find('[id="postID"]').val(pID);
  	
  	
 	});
   </script>
</body>
</html>
