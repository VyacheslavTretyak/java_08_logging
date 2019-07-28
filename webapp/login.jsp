<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Title Login Page</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col12">
      <h1>Login page</h1>
      <c:if test="${not empty param.login_error}">
  <span style="color: red; ">
    Your login attempt was not successful, try again.<br/><br/>
    Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
  </span>
      </c:if>
      <form name="frm" action="<c:url value='login'/>" method="post">
        <div class="form-group">
          <label for="exampleInputEmail1">User name</label>
          <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username" placeholder="User name">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
        </div>
        <small id="emailHelp" class="form-text text-muted">
          <p>Valid users:
          <p>username: <b>user</b>, password: <b>user</b></p>
          <p>username: <b>admin</b>, password: <b>adminp</b></p>
          <p>username: <b>guest</b>, password: <b>guest</b></p>
        </small>
        <button name="submit" type="submit" class="btn btn-primary">Submit</button>
        <button name="reset" type="reset" class="btn btn-primary">Reset</button>
        <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>"
               value="<c:out value="${_csrf.token}"/>"/>
      </form>
    </div>
  </div>
</div>



</body>

</html>
