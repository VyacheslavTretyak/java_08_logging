<%@ include file="/WEB-INF/views/include.jsp" %>

<html>
<head>
    <title>Welcome page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col12">
            <h1>This is welcome file page </h1>
            <div class="alert alert-light" role="alert">
                <p>(webapp\WEB-INF\views\welcomePage.jsp)</p>
                <p>
                    <small>(link handle by MainController)</small>
                </p>
            </div>

            <a href="<c:url value="/second"/>" class="btn btn-primary">Click me to go inside app!</a>
            <a href="<c:url value="/admin"/>" class="btn btn-primary"><p>AdminPage</p> <small>This link for admin only! Try it</small></a>

        </div>
    </div>
</div>

</body>
</html>
