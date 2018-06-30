<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!--MODAL LEAVE REQUEST START-->
	<form:form action="updatePost" id="updatePostForm" modelAttribute="modelUpdatePost" method="POST" class="form-horizontal">
		<div class="modal fade in" id="modalUpdatePost" tabindex="-1" role="dialog" aria-hidden="false" style="display:none; overflow:hidden">
        	<div class="modal-dialog modal-md">
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="clickClose(this)">×</button>
                        <h4 class="modal-title">Leave Request</h4>
                    </div>
		            <div class="modal-body"> 
						<fieldset>
							<div class="form-group">
								<label class="col-md-3 control-label">Job Post Title:</label>
								<div class="col-md-8">
									<input type="text" id="postTitle" name="postTitle" class="form-control"  placeholder="Enter job post title" disabled>
								</div>
							</div>	
							<div class="form-group">
								<label class="col-md-3 control-label" for="email">Job</label>
								<div class="col-md-8">
									<select class="form-control" id="postJob" name="postJob" disabled>
										<option value="" disabled selected>Select job</option>
										<c:forEach var="b" items="${listJob}">
										<option value="${b.jobID}">${b.jobName}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<!--description-->
							<div class="form-group">
								<label class="col-md-3 control-label" for="message">Job Post Description</label>
								<div class="col-md-8">
									<textarea class="form-control" id="postDesc" name="postDesc" placeholder="Please enter job description here..." rows="5" disabled></textarea>
								</div>
							</div>
                                        
							<!--job post request-->
							<div class="form-group">
								<label class="col-md-3 control-label" for="email">Requested by</label>
								<div class="col-md-8">
									<input class="form-control" type="text" id="postReq" name="postReq" disabled/>
								</div>
							</div>
							    
							<!-- job post status-->
							<div class="form-group">
								<label class="col-md-3 control-label" for="example-password">Job Post Status:</label>
								<div class="col-md-8">
									<input type="text" id="postStat" name="postStat" class="form-control" readonly>
								</div>
							</div>	
							<input type="text" id="postID" name="postID" class="form-control" style="display:none" readonly>
						</fieldset>
					</div>
					<div class="modal-footer">
						<button id="btnApprove" onclick="clickApprove(this)" type="submit" class="btn btn-responsive btn-success">
								Approve</button>
						<button id="btnDisapprove" onclick="clickDisapprove(this)" type="submit" class="btn btn-danger btn-responsive" >
								Disapprove</button>
						<button type="button" class="btn btn-warning"><i class="glyphicon glyphicon-repeat"></i>
								Repost</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>

	<!-- INSERT VALIDATION -->
	<script type="text/javascript">
	/*function validateForm()
	{
	
		if( document.updateReqForm.leaveRemarks.value == "" )
		   {
		     alert( "Please provide input for leave request" );
		     document.updateReqForm.cn.focus() ;
  
		     return false;
		   }

	}*/
	
	/*********************APPROVE BUTTON*********************/
	var btnApprove = document.getElementById("btnApprove");
	function clickApprove(e) {
		document.getElementById("postStat").value = "Approved"; 
	btnApprove.addEventListener("click", clickApprove, false);
	}
	/********************DISAPPROVE BUTTON********************/
	var btnDisapprove = document.getElementById("btnDisapprove");
	function clickDisapprove(e) {
		document.getElementById("postStat").value = "Disapproved";
	}
	btnDisapprove.addEventListener("click", clickDisapprove, false);
	</script>