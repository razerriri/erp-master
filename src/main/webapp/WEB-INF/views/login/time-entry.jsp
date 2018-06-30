<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="${pageContext.request.contextPath}/resources/stylesheet" type="text/css" href="css/pages/login.css" /> 
	<%@ include file="../includes/head.jsp" %>
</head>

<body>
    <div class="container">
        <div class="row vertical-offset-100">
            <div class=" col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3  col-md-5 col-md-offset-4 col-lg-4 col-lg-offset-4">
                <div class="panel panel-default" style="margin-top: 30%;">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center"><div id="clockbox" class="clockStyle">
							<script type="text/javascript">
								tday=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
								tmonth=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

								function GetClock(){
                                      var d=new Date();
                                      var nday=d.getDay(),nmonth=d.getMonth(),ndate=d.getDate(),nyear=d.getFullYear();
                                      var nhour=d.getHours(),nmin=d.getMinutes(),nsec=d.getSeconds(),ap;

                                      if(nhour==0){ap=" AM";nhour=12;}
                                      else if(nhour<12){ap=" AM";}
                                      else if(nhour==12){ap=" PM";}
                                      else if(nhour>12){ap=" PM";nhour-=12;}

                                      if(nmin<=9) nmin="0"+nmin;
                                      if(nsec<=9) nsec="0"+nsec;

                                      document.getElementById('clockbox').innerHTML=""+tday[nday]+", "+tmonth[nmonth]+" "+ndate+", "+nyear+"<br>"+nhour+":"+nmin+":"+nsec+ap+"";
								}

								window.onload=function(){
								GetClock();
								setInterval(GetClock,1000);
								}
							</script>
						</div></h3>
                    </div>
                    <div class="panel-body">
						
                        <div class="form-group input-group">
                            <div class="input-group-addon">
                                <i class="livicon" data-name="at" data-size="18" data-c="#000" data-hc="#000" data-loop="true"></i>
                            </div>
                            <input class="form-control" id="emp_user" name="emp_user" placeholder="Username" type="text" />
                        </div>
                        <div class="form-group input-group">
                            <div class="input-group-addon">
                                <i class="livicon" data-name="key" data-size="18" data-c="#000" data-hc="#000" data-loop="true"></i>
                            </div>
                            <input class="form-control" id="emp_pass" name="emp_pass" placeholder="Password" type="password" value="" />
                        </div>
                        <a href="#timein_confirm" class="btn btn-lg btn-success" style="width:49%; margin-right:1%" data-toggle="modal" data-href="#timein_confirm" >
                        	<i class="livicon" data-name="sign-in" data-c="#fff" data-hc="#fff"></i>Time In
                        </a>
                        <a href="#timeout_confirm" class="btn btn-lg btn-info" style="width:49%" data-toggle="modal" data-href="#timeout_confirm" >
                        	<i class="livicon" data-name="sign-out" data-c="#fff" data-hc="#fff"></i>Time Out
                        </a>
                        <%@include file="time-modal.jsp" %>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	<%@ include file="../includes/footer.jsp" %>
</body>
</html>
<script>
$('#timein_confirm').on('show.bs.modal', function (e) {
 	var opener=e.relatedTarget;
	var emp_user=$('#emp_user').val();
	var emp_pass=$('#emp_pass').val();
  	$('#timeInForm').find('[id="emp_user"]').val(emp_user);
  	$('#timeInForm').find('[id="emp_pass"]').val(emp_pass);

    });
    
$('#timeout_confirm').on('show.bs.modal', function (e) {
 	var opener=e.relatedTarget;
	var emp_user=$('#emp_user').val();
	var emp_pass=$('#emp_pass').val();
  	$('#timeOutForm').find('[id="emp_user"]').val(emp_user);
	$('#timeOutForm').find('[id="emp_pass"]').val(emp_pass);
    });
</script>