<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!--MODAL LEAVE REQUEST START-->
	<form:form id="reimbPrint" runat="server">
		<div class="modal fade in" id="modalReimbPrint" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
        	<div class="modal-dialog modal-lg" >
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Reimbursement Voucher</h4>
                    </div>
                    <style>
                    .noInput {
					    border: 0;
					    outline: 0;
					    background: transparent;
					    border-radius: 0;
					    -webkit-appearance: none;
					}
					
					.bInput {
						border: 0;
					    border-bottom: 1px solid black;
					    outline: 0;
					    background: transparent;
					    border-radius: 0;
					    -webkit-appearance: none;
					    width: 150px;
					    height: 16px;
					}
					
					.bInputText {
						font-size: 12px;
						float: left;
					}
                    </style>
		            <div class="modal-body">
	            		<fieldset>
	            			<!-- <input type="text" id="reimbID" name="reimbID" class="form-control"/> -->
	            			<div class="row">
	            				<div class="form-group" style="float: left;">
									<label class="control-label" style="float: left;">Employee</label>
									<input class="noInput" style="float: left;" type="text" id="reimbEmpName" name="reimbEmpName"/>
								</div>
								<div class="form-group" style="float: left;">
									<label class="control-label" style="float: left;">Date Applied</label>
									<input class="noInput" style="float: left;" type="text" id="reimbDate" name="reimbDate"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label">Purpose</label>
								<input class="noInput" rows="1" type="text" id="reimbPurpose" name="reimbPurpose"/>
							</div>
							<div id="divPrint" class="">
                                   
                            </div>
                            <div class="form-group pull-right">
								 <label class="control-label" style="float: left; width:100px">Grand Total</label>
								 <input class="noInput" style="float: left; width:100px" type="text" id="reimbTotal" name="reimbTotal"/>
							</div>
							<label class="control-label pull-left" style="float: left; width:100%; text-decoration: underline">Approvals</label>
							<label class="control-label pull-left bInputText" style="float: left; margin-bottom: 5px; width:100%;"><i>The release of stated amount must be approved by the following:</i></label>
							<div class="row" style="margin-bottom: 5px">
								<div style="float: left;">
									 <label class="bInputText">Department head's name (print):</label>
									 <input class="bInput" style="width: 250px; margin-right:10px" type="text"/>
								</div>
								<div style="float: left; ">
									 <label class="bInputText">Signature</label>
									 <input class="bInput" style="margin-right:10px" type="text"/>
								</div>
								<div style="float: left; ">
									 <label class="bInputText">Date</label>
									 <input class="bInput" type="text"/>
								</div>
							</div>
							<div class="row" style="margin-bottom: 5px">
								<div style="float: left; ">
									 <label class="bInputText">Internal audit's name (print):</label>
									 <input class="bInput" style="width: 250px; margin-right:10px" type="text"/>
								</div>
								<div style="float: left; ">
									 <label class="bInputText">Signature</label>
									 <input class="bInput" style="margin-right:10px" type="text"/>
								</div>
								<div style="float: left; ">
									 <label class="bInputText">Date</label>
									 <input class="bInput" type="text"/>
								</div>
							</div>
							<div class="row" style="margin-bottom: 5px">
								<div style="float: left; ">
									 <label class="bInputText">Finance Manager's name (print):</label>
									 <input class="bInput" style="width: 250px; margin-right:10px" type="text"/>
								</div>
								<div style="float: left; ">
									 <label class="bInputText">Signature</label>
									 <input class="bInput" style="margin-right:10px" type="text"/>
								</div>
								<div style="float: left; ">	
									 <label class="bInputText">Date</label>
									 <input class="bInput" type="text"/>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="form-group" style="float: left; ">
									 <label class="control-label bInputText">Check Number:</label>
									 <input class="bInput" style="margin-right:10px" type="text"/>
								</div>
								<div class="form-group" style="float: left; ">
									 <label class="control-label bInputText">Check Date</label>
									 <input class="bInput" style="margin-right:10px" type="text"/>
								</div>
							</div>
							
							
	            		</fieldset>
					</div>
					<div class="modal-footer" id="mFooter">
						<input onclick="javascript:printDiv('modalReimbPrint')" type="button" class="btn btn-responsive btn-success" value="Print Voucher">
					</div>
				</div>
			</div>
		</div>
	</form:form>