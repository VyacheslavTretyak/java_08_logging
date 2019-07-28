<%@ include file="/WEB-INF/views/include.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col12">
            <h1>This is admin page</h1>
            <form name="frm" action="<c:url value="/logout"/>" method="post">
                <button type="submit" class="btn btn-primary" value="Logoff">Logoff</button>
                <security:csrfInput/>
            </form>
        </div>
    </div>
</div>
</body>
</html>
