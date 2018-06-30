<!DOCTYPE html>
<html>

<head>
    <%@ include file="../includes/head.jsp" %>
</head>

<body class="skin-josh">
    <%@ include file="../includes/header.jsp" %>
    <div class="wrapper row-offcanvas row-offcanvas-left">
       <%@include file="../includes/sidebar-hr-manager.jsp" %>
	   
        <aside class="right-side">
			<!-- Main Content -->
            <section class="content-header">
                <h1>ERP</h1>
                <ol class="breadcrumb">
                    <li>
                        <a href="#">
                            <i class="livicon" data-name="dashboard" data-size="16" data-color="#fff" data-hovercolor="#fff"></i>
							Home
                        </a>
                    </li>
                </ol>
            </section>
            <section class="content"></section>
        </aside>
        <!-- right-side -->
    </div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
	<%@ include file="../includes/footer.jsp" %>
</body>
</html>
