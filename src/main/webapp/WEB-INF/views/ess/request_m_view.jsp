<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!--MODAL LEAVE REQUEST START-->
	<form:form action="submitReq" id="viewForm" modelAttribute="modelLeaveReq" method="POST">
		<div class="modal fade in" id="modalViewReq" tabindex="-1" role="dialog" aria-hidden="false" style="display:none; overflow:hidden">
        	<div class="modal-dialog modal-md">
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Leave Request</h4>
                    </div>
		            <div class="modal-body">
	            		<fieldset>
							<div class="form-group">
								 <label class="control-label" style="float: left; width:53%">Date Applied</label>
								 <label class="control-label" style="float: left; width:47%">Status:</label>
							</div>
							<div class="form-group">
                                <input class="form-control" style="float: left; width:47%; margin-right: 6%" type="text" id="leaveFile" name="leaveFile" disabled/>
                                <input class="form-control" style="float: left; width:47%" type="text" id="leaveStatus" name="leaveStatus" disabled/>
							</div>
							
							<div class="form-group">
								<label for="select-1">Employee</label>
								<input class="form-control" id="reqEmpName" type="text" disabled/>
							</div>
							<div class="form-group">
								<label for="select-1">Leave Type</label>
								<select class="form-control" id="leaveTypeID" name="leaveTypeID" disabled>
									<option value="" disabled selected>Select leave type</option>								
									<c:forEach var="lve" items="${dropLeave}">
									<option value="${lve.leaveID}">
											${lve.leaveName} 
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label style="float:left; width:75%">Date range:</label>
								<label style="float:left; width:25%">Duration:</label>
							</div>
							<div class="form-group">
								<input class="form-control" type="date" style="float:left; width:33%; margin-right: 2%" id="leaveStart" name="leaveStart" disabled/>
								<label style="float:left; width: 1%; padding-top: 6px; margin-right: 2%">-</label>
								<input class="form-control" type="date" style="float:left; width:33%; margin-right:4%" id="leaveEnd" name="leaveEnd" disabled/>
								<input class="form-control" id="leaveDuration" name="leaveDuration" type="text"  style="float: left; width: 25%" disabled>
							</div>
							
							<script>
							function dateChange () {
								var sDate = new Date();
								var eDate = new Date();
								sDate = document.getElementById('leaveStart');
								eDate = document.getElementById('leaveEnd');
								var days = dateDiff(eDate, sDate, 'days');
								
								document.getElementById('leaveDuration').value = days;
							}	
							</script>
							<div class="form-group">
								<label for="select-1">Reason</label>
								<input class="form-control" id="leaveReason" name="leaveReason" type="text" disabled/>
							</div>
							<div class="form-group">
                                 <label>Remarks</label>
                                 <input class="form-control" type="text" name="leaveRemarks" disabled/>
							</div>
	            		</fieldset>
					</div>
				</div>
			</div>
		</div>
	</form:form>
