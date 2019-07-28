<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>

<html>
<head>
    <title>Access Denied</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col12">
            <div class="alert alert-danger" role="alert">
                <h1>Sorry, access is denied</h1>
            </div>
        </div>
    </div>
</div>

</body>
</html>
