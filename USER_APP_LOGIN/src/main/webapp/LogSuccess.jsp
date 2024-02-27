<%@page import="test.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.links {
	display: flex;
	justify-content: space-between;
	margin-bottom: 20px;
}

.links a {
	text-decoration: none;
	color: #333;
	padding: 10px 20px;
	border-radius: 4px;
	transition: background-color 0.3s ease, transform 0.3s ease;
}

.links a:hover {
	background-color: #ffcc00;
	/* Change to the desired background color */
	transform: scale(1.1);
}
</style>

</head>
<body>

	<%
	UserBean ub = (UserBean)application.getAttribute("ubean");
	out.println("Welcome User :"+ub.getfName()+"<br>");
	%>

	<div class="container">
		<div class="links">
			<a href="view">View Profile</a> <a href="edit">Edit Profile</a> <a
				href="logout">Logout</a>
		</div>
		<!-- Your profile content here -->
	</div>

</body>
</html>