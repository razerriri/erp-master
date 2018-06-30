<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/select2.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/pages/tables.css" />
	<!-- advanced dataTables -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.colReorder.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendors/datatables/css/dataTables.scroller.min.css" />
</head>
<body>
    <table class="table table-striped table-bordered table-hover" id="tableExpense" role="grid">
        <thead>
            <tr style="backgroung-color: #D3D3D3;" role="row">
                <th>Date Purchased</th>
                <th>Receipt No.</th>
                <th>Description</th>
                <th>Unit Price</th>
                <th>Quantity</th>                                          
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="r" items="${listExp}"> 
            <tr role="row">
            	<td id="expDate">${r.expDate}</td>
            	<td id="expReceipt">${r.expReceipt}</td>
            	<td id="expDesc">${r.expDesc}</td>
            	<td id="expPrice">${r.expPrice}</td>
            	<td id="expQty">${r.expQty}</td>
            	<td id="expTotal">${r.expTotal}</td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/select2.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advance.js"></script>
</body>
</html>