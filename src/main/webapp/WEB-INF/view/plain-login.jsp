<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>
	<h3>My Custom Login Form</h3>
	
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
		
		<!--  Check for Login error -->
		<c:if test="${param.error != null}">
			<i>Sorry! you entered invalid username/password.</i>
		</c:if>
	
		<p>
			User Name : <input type="text" name="username">
		</p>
		<p>
			Password : <input type="password" name="password">
		</p>
		<input type="submit" value="Login">
	</form:form>
</body>
</html>