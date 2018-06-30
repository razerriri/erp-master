<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!--MODAL LEAVE REQUEST START-->
	<form:form action="updateReimbReq" modelAttribute="modelReimbReq" method="POST" id="updateReimbForm">
		<div class="modal fade in" id="modalReimbView" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
        	<div class="modal-dialog modal-lg" >
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Reimbursement Request</h4>
                    </div>
		            <div class="modal-body">
	            		<fieldset>
	            			<input type="text" id="reimbID" name="reimbID" style="display:none"/>
	            			<div class="form-group">
								<label class="control-label">Employee</label>
								<input class="form-control" type="text" id="reimbEmpName" name="reimbEmpName" readonly/>
							</div>
							<div class="form-group">
								 <label class="control-label" style="float: left; width:53%">Date Applied</label>
								 <label class="control-label" style="float: left; width:47%">Status:</label>
							</div>
							<div class="form-group">
                                <input class="form-control disabled" readonly="" style="float: left; width:47%; margin-right: 6%" type="text" id="reimbDate" name="reimbDate"/>
                                <input class="form-control disabled" readonly="" style="float: left; width:47%" type="text" id="reimbStatus" name="reimbStatus"/>
							</div>
							<div class="form-group">
								<label class="control-label">Purpose</label>
								<input class="form-control" rows="1" type="text" id="reimbPurpose" name="reimbPurpose" readonly/>
							</div>
							<br>
							<div id="divExpense" class="">
                                   
                             </div>
	            		</fieldset>
					</div>
					<div class="modal-footer" id="mFooter">
						<button id="btnApprove" onclick="clickApprove(this)" type="submit" class="btn btn-responsive btn-success">Approve</button>
						<button id="btnDisapprove" onclick="clickDisapprove(this)" type="submit" class="btn btn-danger btn-responsive" >Disapprove</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>
<script type="text/javascript">
/*********************APPROVE BUTTON*********************/
var btnApprove = document.getElementById("btnApprove");
function clickApprove(e) {
	document.getElementById("reimbStatus").value = "Approved";
}
btnApprove.addEventListener("click", clickLApprove, false);

/********************DISAPPROVE BUTTON********************/
var btnDisapprove = document.getElementById("btnDisapprove");
function clickDisapprove(e) {
	document.getElementById("reimbStatus").value = "Disapproved";
}
btnDisapprove.addEventListener("click", clickLDisapprove, false);
</script>