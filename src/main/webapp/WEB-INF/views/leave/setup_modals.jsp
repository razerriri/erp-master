<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
								<!---MODAL ADD LEAVE TYPE START--->
								<form:form action="submitLeave" modelAttribute="modelLeaveSetup" method="POST" class="form-horizontal">
									<fieldset>
										<div class="modal fade in" id="mAddLeave" tabindex="-1" role="dialog" aria-hidden="false" style="display:none; overflow:hidden">
											<div class="modal-dialog modal-md">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
														<h4 class="modal-title">Add Leave Type</h4>
													</div>
													<div class="modal-body" style="height: 460px; overflow-y:auto">
	                           							<div id="tabAddLeave" class="tab-content">
															<!-- TAB DETAILS START -->
	                                 						<div class="tab-pane fade active in" id="tabDetails" style="margin-left:30px">
																<br/>
																<h4 style="margin-left:10px">Leave Details</h4>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Name</label>
																	<div class="col-md-7">
																	<input id="leaveName" name="leaveName" type="text" class="form-control input-md" required/>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Code</label>
																	<div class="col-md-7">
																	<input id="leaveCode" name="leaveCode" type="text" class="form-control input-md" required/>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Type</label>
																	<div class="col-md-7">
																	<select class="form-control" name="leaveType" id="leaveType" required>
																		<option disabled selected>Select leave type</option>
																		<option value="All">All leave types</option>
																		<option value="Paid">Paid</option>
																		<option value="Unpaid">Unpaid</option>
																	</select>
																	</div>
																</div>
																
																<hr/>
																<h4 style="margin-left:10px">Applicability</h4>	
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Applicability</label>
																	<div class="col-md-7">
																	<select class="form-control" id="leaveApp" name="leaveApp" onchange="changeApplicability(this)" required>
																		<option disabled selected>Select applicability</option>
																		<option value="All">All</option>
																		<option value="Role">Role</option>
																		<option value="Location">Location</option>
																		<option value="Gender">Gender</option>
																		<option value="Marital">Marital Status</option>
																	</select>
																	</div>
																</div>	
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Role</label>
																	<div class="col-md-7">
																	<select class="form-control" id="leaveRole" name="leaveRole" required disabled="true">
																		<option disabled selected>Select role</option>
																		<option value="All">All roles</option>
																		<c:forEach var="lve" items="${listJob}">
																		<option value="${lve.jobID}">${lve.jobName}</option>
																		</c:forEach>
																	</select>
																	</div>
																</div>	
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Location</label>
																	<div class="col-md-7">
																	<select class="form-control" id="leaveLocation" name="leaveLocation" required disabled>
																		<option disabled selected>Select location</option>
																		<option value="All">All locations</option>
																		<c:forEach var="lve" items="${listDept}">
																			<option value="${lve.deptID}">${lve.deptName}</option>
																		</c:forEach>
																	</select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Gender</label>
																	<div class="col-md-7">
																	<select class="form-control" id="leaveGender" name="leaveGender" required disabled>
																		<option value="All">All</option>
																		<option value="Male">Male</option>
																		<option value="Female">Female</option>
																	</select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Marital Status</label>
																	<div class="col-md-7">
																	<select class="form-control" id="leaveMarital" name="leaveMarital" required disabled>
																		<option value="All">All marital status</option>
																		<option value="Single">Single</option>
																		<option value="Married">Married</option>
																	</select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Leave Count</label>
																	<div class="col-md-7">
																	<input id="leaveCount" name="leaveCount" type="text" class="form-control input-md"/>
																	</div>
																</div>
															</div>
															<!--TAB DETAILS END-->
	                          							</div>
														<!--TABS END-->							                            
									                </div>
									                <div class="modal-footer">
														<button type="button" data-dismiss="modal" class="btn">Cancel</button>
														<button type="submit" class="btn btn-responsive btn-success">Submit</button>
														<button type="reset" class="btn btn-responsive btn-danger">Reset</button>
													</div>
												</div>
											</div>
										</div>
									</fieldset>
								</form:form>
								<!---MODAL ADD LEAVE TYPE END--->
<script>								
function changeApplicability(element)
	{
	   if(element.value == "Role"){
		   document.getElementById('leaveRole').removeAttribute('disabled');
	   }
	   else {
		   document.getElementById('leaveRole').setAttribute('disabled', '');
	   }
	   
	   if(element.value == "Gender"){
		   document.getElementById('leaveGender').removeAttribute('disabled');
	   }
	   else {
		   document.getElementById('leaveGender').setAttribute('disabled', '');
	   }
	   
	   if(element.value == "Marital"){
		   document.getElementById('leaveMarital').removeAttribute('disabled');
	   }
	   else {
		   document.getElementById('leaveMarital').setAttribute('disabled', '');
	   }
	   
	   if(element.value == "Location"){
		   document.getElementById('leaveLocation').removeAttribute('disabled');
	   }
	   else {
		   document.getElementById('leaveLocation').setAttribute('disabled', '');
	   }
	}
</script>