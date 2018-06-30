<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


            <!--- EDIT APP MODAL STARTS HERE -->
   			<form:form action="updateAppPool" id="editApp" modelAttribute="modelAppPool" method="POST">
                <div class="modal fade in" id="EditAppModal" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                                <h4 class="modal-title">Update Applicant</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                	<div class="col-lg-12">
                          				<fieldset>
                          					<input type="text" style="display:none" id="applicationID" name="applicationID"/>
                          					<div class="form-group">
                                                <label class="col-md-4 control-label">Applicant Name</label>
												<div class="col-md-6">
												<input class="form-control" type="text" id="appName" name="appName" readonly/>
												</select>
												</div>
                                           	</div>
									       <br><br>
									       <div class="form-group">
                                                <label class="col-md-4 control-label">Job Title:</label>
												<div class="col-md-6">
												<input class="form-control" type="text" id="jobTitle" name="jobTitle" readonly/>
												</div>
                                           	</div>
									       <br><br>
									         <div class="form-group">
												<label class="col-md-4 control-label">Date Applied:</label>
												<div class="col-md-6">
												<input class="form-control" type="text" id="appDate" name="appDate" readonly/>
												</div>
										   </div>
										   <br> <br>
									       <div class="form-group">
										      <label class="col-md-4 control-label">Phase:</label>
										      <div class="col-md-6">
										      <select class="form-control" id="appPhase" name="appPhase">
												  <option value="Preliminaries">Preliminaries</option>		
												  <option value="Initial Interview">Initial Interview</option>
										          <option value="Written Exam">Written Exam</option>
										          <option value="Skilled Test">Skilled Test</option>
										          <option value="Final Interview">Final Interview</option>
											  </select>
										      </div>
									       </div>
									       <br><br>
									       <div class="form-group">
										      <label class="col-md-4 control-label">Status:</label>
										      <div class="col-md-6">
										      <input class="form-control" type="text" id="appStatus" name="appStatus" readonly/>
										      </div>
									       </div>
										   <br>
									      
                                    	</fieldset>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">  
                            	<button type="submit" class="btn btn-responsive btn-success">
                            	Save</span></button>
                            	<button type="button" data-dismiss="modal" class="btn">
                            	Cancel</button>
                            </div>
                        </div>
                    </div>
                </div>
          	</form:form>
            <!-- EDIT ADD APP MODAL ENDS HERE-->
