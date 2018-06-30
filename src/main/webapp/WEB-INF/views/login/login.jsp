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
                        <h3 class="panel-title text-center">Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form:form action="index" modelAttribute="modelLogin" accept-charset="UTF-8" role="form">
                            <fieldset>
                                <div class="form-group input-group">
                                    <div class="input-group-addon">
                                        <i class="livicon" data-name="at" data-size="18" data-c="#000" data-hc="#000" data-loop="true"></i>
                                    </div>
                                    <input class="form-control" name="username" placeholder="Username" type="text" />
                                </div>
                                <div class="form-group input-group">
                                    <div class="input-group-addon">
                                        <i class="livicon" data-name="key" data-size="18" data-c="#000" data-hc="#000" data-loop="true"></i>
                                    </div>
                                    <input class="form-control" name="password" placeholder="Password" type="password" value="" />
                                </div>
                                <div class="form-group">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me" class="minimal-blue">
                                        Remember Me
                                    </label>
                                </div>
                                <button type="submit" class="btn btn-lg btn-primary btn-block" value="Login">Login</button>
                            </fieldset>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	<%@ include file="../includes/footer.jsp" %>
</body>
</html>