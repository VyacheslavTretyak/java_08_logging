<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page pageEncoding="UTF-8" %>

<html>
<head>
    <title>Exit User</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col12">
            <div class="alert alert-secondary" role="alert">
                <h1>Exit User</h1>
                <c:if test="${not empty param.login_error}">
                  <span style="color: red; ">
                    Your 'Exit User' attempt was not successful, try again.<br/><br/>
                    Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
                  </span>
                </c:if>
                <h3>Current User:</h3>
                <%
                    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
                    if (auth != null) { %>
                <%= auth.getPrincipal().toString() %>
                <% } %>
                <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>"
                       value="<c:out value="${_csrf.token}"/>"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>
