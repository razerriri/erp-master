<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!--MODAL LEAVE REQUEST START-->
	<form:form action="updateReq" id="updateReqForm" modelAttribute="modelUpdateReq" method="POST">
		<div class="modal fade in" id="modalUpdateReq" tabindex="-1" role="dialog" aria-hidden="false" style="display:none; overflow:hidden">
        	<div class="modal-dialog modal-md">
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="clickClose(this)">×</button>
                        <h4 class="modal-title">Leave Request</h4>
                    </div>
		            <div class="modal-body"> 
	            		<fieldset>
	            			<input class="form-control" style="display:none" id="empLeaveReqID" name="empLeaveReqID" readonly/>
							<div class="form-group">
								 <label class="control-label" style="float: left; width:53%">Date Applied</label>
								 <label class="control-label" style="float: left; width:47%">Status:</label>
							</div>
							<div class="form-group">
                                <input class="form-control" style="float: left; width:47%; margin-right: 6%;" type="text" id="leaveFile" name="leaveFile" readonly/>
                                <input class="form-control" style="float: left; width:47%;" type="text" id="leaveStatus" name="leaveStatus" readonly/>
							</div>
							
							<div class="form-group">
								<label for="select-1">Employee</label>
								<input class="form-control" id="reqEmpName" type="text" readonly/>
								<input class="form-control" type="hidden" id="reqEmpID" name="reqEmpID"/>
								<!-- <select class="form-control" id="reqEmpID" name="reqEmpID" readonly="">
									<option value="" disabled selected>Select employee</option>									
									<c:forEach var="emp" items="${dropEmpID}">
									<option value="${emp.empID}">
											${emp.empName}
										</option>
									</c:forEach>
								</select>-->
							</div>
							<div class="form-group">
								<label for="select-1">Leave Type</label>
								<select class="form-control" id="leaveTypeID" name="leaveTypeID" readonly="">
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
								<input class="form-control" id="leaveDays" name="leaveDays" type="text"  style="float: left; width: 25%" readonly>
							</div>
							<div class="form-group">
								<label for="select-1">Reason</label>
								<input class="form-control" type="text" id="leaveReason" name="leaveReason" disabled/>
							</div>
							<div class="form-group">
                                 <label>Remarks</label>
                                 <input class="form-control" type="text" id="leaveRemarks" name="leaveRemarks" disabled/>
							</div>
	            		</fieldset>
					</div>
					<div class="modal-footer" id="mFooter">
						<!-- <button type="submit" id="btnSave" onclick="clickSave(this)" class="btn btn-responsive btn-success" style="visibility:hidden">Save</span></button>
						<button id="btnEdit" class="btn btn-default btn-responsive" type="button" onclick="clickEdit(this)">Edit</button> -->
						<button id="btnLApprove" onclick="clickLApprove(this)" type="submit" class="btn btn-responsive btn-success">Approve</button>
						<button id="btnLDisapprove" onclick="clickLDisapprove(this)" type="submit" class="btn btn-danger btn-responsive" >Disapprove</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>

	<!-- INSERT VALIDATION -->
	<script type="text/javascript">

	/*********************APPROVE BUTTON*********************/
	var btnLApprove = document.getElementById("btnLApprove");
	function clickLApprove(e) {
		document.getElementById("leaveStatus").value = "Approved";
	}
	btnLApprove.addEventListener("click", clickLApprove, false);

	/********************DISAPPROVE BUTTON********************/
	var btnLDisapprove = document.getElementById("btnLDisapprove");
	function clickLDisapprove(e) {
		document.getElementById("leaveStatus").value = "Disapproved";
	}
	btnLDisapprove.addEventListener("click", clickLDisapprove, false);

	
	/***********************EDIT BUTTON**********************
	var btnEdit = document.getElementById('btnEdit');
	function clickEdit(e) {
	  	document.getElementById('btnSave').style.visibility = "visible";
		document.getElementById('leaveType').disabled = false;
		document.getElementById('leaveStart').disabled = false;
		document.getElementById('leaveEnd').disabled = false;  
		document.getElementById('leaveReason').disabled = false;
		document.getElementById('leaveRemarks').disabled = false;
	}
	btnEdit.addEventListener("click", clickEdit, false);

	/***********************SAVE BUTTON**********************
	var btnSave = document.getElementById('btnSave');
	function clickSave(e) {
	  	document.getElementById('btnSave').style.visibility = "hidden";
	}
	btnSave.addEventListener("click", clickSave, false);
	
	/*********************CLOSE BUTTON********************
	var btnClose = document.getElementById('btnClose');
	function clickClose(e) {
		document.getElementById('leaveType').disabled = true;
		document.getElementById('leaveStart').disabled = true;
		document.getElementById('leaveEnd').disabled = true;  
		document.getElementById('leaveReason').disabled = true;
		document.getElementById('leaveRemarks').disabled = true;
	}
	btnClose.addEventListener("click", clickClose, false);**/
	</script>