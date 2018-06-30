<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="../includes/head.jsp"%> 
    <title>Registration</title>

<body class="skin-josh">
	<%@ include file="../includes/header.jsp"%> 
	<%@ include file="../includes/sidebar-applicant.jsp"%>     

<div class="wrapper row-offcanvas row-offcanvas left">
<aside class="right-side strech">
        
<!-- Main content -->
    <section class="content-header">
    	<h1>Human Resource Management System</h1>
    <ol class="breadcrumb">
        <li class="active">
            <a href="#">
                <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
					Home 
            </a>
        </li>
        <li class="active">
             <a href="#">
                <i class="livicon" data-name="user" data-size="16" data-color="#333" data-hovercolor="#333"></i>
				    Registration  
             </a>
        </li>
   </ol>
<br>



<div class="panel panel-white">
     <div class="panel-heading">
     	
        


<div class="panel-body">
	<form:form class="form-horizontal" modelAttribute="modelApp" action="submitApp" method="post" name="myForm">
    <fieldset>
    
<h3 class="panel-title">
        	<i class="livicon" data-name="key" data-loop="true" data-color="#333" data-hovercolor="#fff" data-size="18"></i>
            <b>Account Details</b>
        </h3>
    
<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Username:</label>
	<div class="col-md-6">
        <input type="username" id="username" name="username" class="form-control" placeholder="Username"></div>
</div>

<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Password:</label>
	<div class="col-md-6">
        <input type="password" id="password" name="password" class="form-control" placeholder="Password"></div>
</div>

<br>
    
<h3 class="panel-title">
        	<i class="livicon" data-name="user" data-loop="true" data-color="#333" data-hovercolor="#fff" data-size="18"></i>
            <b>Personal Details</b>
        </h3>
    
<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">First Name:</label>
	<div class="col-md-6">
        <input type="" id="fName" name="fName" class="form-control" placeholder="First Name"></div>
</div>

<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Middle Name:</label>
	<div class="col-md-6">
        <input type="" id="mName" name="mName" class="form-control" placeholder="Middle Name"></div>
</div>

<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Last Name:</label>
	<div class="col-md-6">
        <input type="" id="lName" name="lName" class="form-control" placeholder="Last Name"></div>
</div>

<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Suffix:</label>
	<div class="col-md-2">
        <input type="" id="suffix" name="suffix" class="form-control" placeholder="Suffix"></div>
</div>
                                                            
<div class="form-group">
		<label class="col-md-3 control-label" for="example-textarea-input">Date of Birth:</label>
	<div class="col-md-6">
		<input id="bdate" name="bdate" type="date" class="form-control"/>
    </div>
 </div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Place of Birth:</label>
	<div class="col-md-6">
        <input type="pBirth" id="pBirth" name="pBirth" class="form-control" placeholder="Birthplace"></div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="dept">Gender:</label>
	<div class="col-md-2">
		<select id="gender" name="gender" class="form-control">
		<option value="Male">Male</option>
		<option value="Female">Female</option>
		</select>
	</div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="dept">Civil Status:</label>
	<div class="col-md-2">
		<select id="civil" name="civil" class="form-control">
				<option value="Single">Single</option>
				<option value="Married">Married</option>
				<option value="Separated">Separated</option>
				<option value="Widowed">Widowed</option>
		</select>
	</div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="example-textarea-input">Address:</label>
    <div class="col-md-6">
       	<textarea id="address" name="address" rows="2" class="form-control" placeholder="Address"></textarea>
    </div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Contact No.</label>
	<div class="col-md-6">
        <input type="type" id="contact" name="contact" class="form-control"  placeholder="Contact No."></div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Email Address:</label>
	<div class="col-md-6">
        <input type="text" id="emailAdd" name="emailAdd" class="form-control"  placeholder="Email Address"></div>
</div>	

<div class="row">
    <div class="col-md-12">
         <span class="button-checkbox">
         <button type="button" class="btn btn-block btn-default" data-color="info" tabindex="7">I Agree</button>
         <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1"></span>
    </div>
</div>

<div class="col-md-12 padding">
     			By clicking
		<strong class="label label-primary">REGISTER</strong>
        , you agree to the
	<a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a>
      	of Republic Act No. 10173 or known as the "Data Privacy Act of 2012".
</div>		

		
<br>											
<div class="row">
    <div class="col-md-12 text-right">
        <button type="submit" onclick="btnRegister()" class="btn btn-primary">Register</button> 
    </div>
</div>	
							
</fieldset>
</form:form>									
</div>
</div>

</section>
</aside>
</div>

    <%@ include file="../includes/footer.jsp"%> 
</body>
</html>
<script>
function btnRegister() {
	Command: toastr[success]("You have successfully registered.", "Success")

	toastr.options = {
	  "closeButton": true,
	  "debug": false,
	  "positionClass": "toast-top-full-width",
	  "onclick": null,
	  "showDuration": "1000",
	  "hideDuration": "1000",
	  "timeOut": "5000",
	  "extendedTimeOut": "1000",
	  "showEasing": "swing",
	  "hideEasing": "linear",
	  "showMethod": "fadeIn",
	  "hideMethod": "fadeOut"
	}
}
</script>
