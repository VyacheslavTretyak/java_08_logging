<%@ include file="/WEB-INF/views/include.jsp" %>

<html>
<head>
    <title>Index page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col12">
            <h6>This is secondPage page (webapp\WEB-INF\views\secondPage.jsp).
            Without login you can't see it</h6>
            <form action="<c:url value="/logout"/>" method="post">
                <button type="submit"  class="btn btn-primary"  value="Logoff">Logoff</button>
                <small>(also clears any remember-me cookie)</small>
                <security:csrfInput/>
            </form>
        </div>
    </div>
</div>

</body>
</html>
