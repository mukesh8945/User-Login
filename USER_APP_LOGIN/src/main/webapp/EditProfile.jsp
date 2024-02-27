<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(to bottom right, #ff7e5f, #feb47b);
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	max-width: 500px;
	padding: 30px;
	background-color: rgba(255, 255, 255, 0.9);
	border-radius: 15px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
	animation: fadeIn 1s ease forwards;
}

@
keyframes fadeIn {from {opacity:0;
	transform: translateY(-50px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
label {
	font-weight: bold;
	color: #555;
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	margin: 8px 0 20px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	transition: border-color 0.3s ease;
}

input[type="text"]:focus {
	border-color: #3498db;
}

input[type="submit"] {
	width: 100%;
	padding: 12px;
	background-color: #3498db;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>

<%
// Get the UserBean object from application scope
UserBean ub = (UserBean) application.getAttribute("ubean");

// Check if ub is not null before accessing its methods
if (ub != null) {
%>
    <div class="container">
        <form action="update" method="post">
            <label for="addr">Address:</label><br>
            <input type="text" id="addr" name="addr" value="<%=ub.getAddr()%>"><br>
            <label for="mid">MailId:</label><br>
            <input type="text" id="mid" name="mid" value="<%=ub.getmId()%>"><br>
            <label for="phno">PhoneNo:</label><br>
            <input type="text" id="phno" name="phno" value="<%=ub.getPhNo()%>"><br>
            <input type="submit" value="Update Profile">
        </form>
    </div>
<%
} else {
    // Handle the case when ub is null
    out.println("User information not available.");
}
%>


</body>
</html>