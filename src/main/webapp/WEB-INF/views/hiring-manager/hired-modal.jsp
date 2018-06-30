<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!--MODAL LEAVE REQUEST START-->
	<form:form action="updateHired" id="updateHiredForm" modelAttribute="modelHired" method="POST">
		<div class="modal fade in" id="modalHired" tabindex="-1" role="dialog" aria-hidden="false" style="display:none; overflow:hidden">
        	<div class="modal-dialog modal-lg">
		    	<div class="modal-content">	
		            <div class="modal-body">
						<label>Applicant Name</label>
						<div class="form-group">
							<input class="form-control" id="appFName" name="appFName" type="text" style="float: left; width: 31%; margin-right:4%" readonly/>
							<input class="form-control" id="appMName" name="appMName" type="text" style="float: left; width: 31%; margin-right:3%" readonly/>
							<input class="form-control" id="appLName" name="appLName" type="text" style="float: left; width: 31%;" readonly/>
						</div>
						<div class="form-group">
							<label class="control-label" style="float: left; width: 31%; margin-right:4%">Gender</label>
							 <label class="control-label" style="float: left; width: 31%; margin-right:3%">Birth Date</label>
							 <label class="control-label" style="float: left; width: 31%;">Place of Birth</label>
						</div>
						<div class="form-group">
							<input class="form-control" id="appGender" name="appGender" type="text" style="float: left; width: 31%; margin-right:4%" readonly/>
							<input class="form-control" id="appBDate" name="appBDate" type="text" style="float: left; width: 31%; margin-right:3%" readonly/>
							<input class="form-control" id="appPBirth" name="appPBirth" type="text" style="float: left; width: 31%;" readonly/>
						</div>
						
						<div class="form-group">
							 <label class="control-label" style="float: left; width:31%; margin-right:4%">Civil Status</label>
							 <label class="control-label" style="float: left; width:65%">Address</label>
						</div>
						<div class="form-group">
                             <input class="form-control" style="float: left; width:31%; margin-right:4%" type="text" id="appCivil" name="appCivil" readonly/>
                             <input class="form-control" style="float: left; width:65%" id="appAddress" name="appAddress" type="text" readonly/>
						</div>
						<div class="form-group">
							<label class="control-label" style="float: left; width: 31%; margin-right:4%">Contact No.</label>
							 <label class="control-label" style="float: left; width: 31%; margin-right:3%">Email</label>
							 <label class="control-label" style="float: left; width: 31%;">Job Title</label>
						</div>
						<div class="form-group">
							<input class="form-control" id="appContact" name="appContact" type="text" style="float: left; width: 31%; margin-right:4%" readonly/>
							<input class="form-control" id="appEmail" name="appEmail" type="text" style="float: left; width: 31%; margin-right:3%" readonly/>
							<input class="form-control" id="jobTitle" name="jobTitle" type="text" style="float: left; width: 31%;" readonly/>
							<input type="text" id="jobID" name="jobID" style="display:none"/>
							<input type="text" id="deptID" name="deptID" style="display:none"/>
						</div>
						<div class="form-group">
							<label class="control-label" style="float: left; width: 31%; margin-right:4%">Date Evaluated</label>
							 <label class="control-label" style="float: left; width: 31%; margin-right:3%">Evaluator</label>
							 <label class="control-label" style="float: left; width: 31%;">Base Pay</label>
						</div>
						<div class="form-group">
							<input class="form-control" id="scoreDate" name="scoreDate" type="text" style="float: left; width: 31%; margin-right:4%" readonly/>
							<input class="form-control" id="scoreEvaluator" name="scoreEvaluator" type="text" style="float: left; width: 31%; margin-right:3%" readonly/>
							<input class="form-control" id="basePay" name="basePay" type="text" style="float: left; width: 31%;" placeholder="Enter base pay"/>
						</div style="margin-bottom:50px">
						<style>
							.inScore{
								outline:none; 
								border: 0px solid; 
								background-color: transparent;
								width: 20px;
							}
						</style>
						
						<input type="text" id="applicationID" name="applicationID" style="display:none"/>
						<input type="text" id="appUsername" name="appUsername" style="display:none"/>
						<input type="text" id="appPassword" name="appPassword" style="display:none"/>
						<table class="table table-striped table-responsive" id="table1">
							<thead>
								<tr>
									<th>Total Score</th>
									<th>Performance</th>
									<th>Behavioral Dimension</th>
									<th>Education</th>
									<th>Training</th>
									<th>Experience</th>
									<th>Work Attitude</th>
									<th>Work Ethics/Values</th>
									<th>Potentials</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><b><center><input class="inScore" id="scoreAverage" name="scoreAverage" disabled/></b></center></td>
									<td><center><input class="inScore" id="scorePerformance" name="scorePerformance" disabled/></center></td>
									<td><center><input class="inScore" id="scoreBehavioral" name="scoreBehavioral" disabled/></center></td>
									<td><center><input class="inScore" id="scoreEducation" name="scoreEducation" disabled/></center></td>
									<td><center><input class="inScore" id="scoreTraining" name="scoreTraining" disabled/></center></td>
									<td><center><input class="inScore" id="scoreExperience" name="scoreExperience"disabled/></center></td>
									<td><center><input class="inScore" id="scoreAttitude" name="scoreAttitude" disabled/></center></td>
									<td><center><input class="inScore" id="scoreValues" name="scoreValues" disabled/></center></td>
									<td><center><input class="inScore" id="scorePotentials" name="scorePotentials" disabled/></center></td>
								</tr>
							</tbody>
						</table>
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