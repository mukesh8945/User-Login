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
	margin: 0;
	padding: 0;
	overflow: hidden;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background:
		url('https://images.pexels.com/photos/796620/pexels-photo-796620.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
		no-repeat center center fixed;
	background-size: cover;
	background-color: #f4f4f4;
	/* Replace 'background_image.jpg' with your image path */
	background-size: cover;
	background-color: #f4f4f4;
	/* Fallback background color */
	transition: background-position 0.5s ease;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background:
		url('https://images.pexels.com/photos/796620/pexels-photo-796620.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
		no-repeat center center fixed;
	background-size: cover;
	background-color: #f4f4f4;
}
/* Navigation bar styles */
.navbar {
	background-color: #3498db;
	overflow: hidden;
	position: fixed;
	width: 100%;
	z-index: 1000;
}

.navbar a {
	float: left;
	display: block;
	color: #fff;
	text-align: center;
	padding: 14px 20px;
	text-decoration: none;
	transition: background-color 0.3s ease;
}

.navbar a:hover {
	background-color: #2980b9;
}
/* Dropdown container */
.dropdown {
	float: left;
	overflow: hidden;
	position: relative;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #3498db;
	width: 100%;
	left: 0;
	z-index: 100;
}

.dropdown-content a {
	float: none;
	color: #fff;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}
/* Animation for dropdown content */
@
keyframes rain { 0% {
	background-position: 0px 0px;
}

100




%
{
background-position




:




500px




500px


;
}
}
/* Add animation to dropdown content */
.dropdown-content {
	animation: rain 10s infinite linear;
}
/* Show dropdown content on hover */
.dropdown:hover .dropdown-content {
	display: block;
}
/* Footer styles */
.footer {
	position: fixed;
	bottom: 0;
	width: 100%;
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 10px 0;
	z-index: 1000;
}
</style>
</head>
<body>

	<%
	String fName = (String) request.getAttribute("fName");
	String ms = (String) request.getAttribute("msg");
	out.println("Page belongs to " + fName + "<br>");
	out.println(ms);
	%>

	<!-- Navigation bar -->
	<div class="navbar">
		<a href="view">View Profile</a> <a href="edit">Edit Profile</a>
		<div class="dropdown">
			<a href="#">More</a>
			<div class="dropdown-content">
				<a href="logout">Logout</a>
				<!-- Add more dropdown items as needed -->
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="footer">
		<p>This is the footer</p>
	</div>



</body>
</html>