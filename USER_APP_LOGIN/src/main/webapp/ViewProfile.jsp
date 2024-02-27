<%@page import="test.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
        /* Button styles */
        
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        /* Button hover effect */
        
        .btn:hover {
            background-color: #2980b9;
        }
        /* Animation for buttons */
        
        .btn-animated {
            animation: pulse 1s infinite alternate;
        }
        /* Keyframe animation */
        
        @keyframes pulse {
            from {
                transform: scale(1);
            }
            to {
                transform: scale(1.1);
            }
        }
    </style>


</head>
<body>

	<%
	String fName = (String) request.getAttribute("fName");

	UserBean ub = (UserBean) application.getAttribute("ubean");
	out.println("Page belongs to " + "fName" + "<br>");

	out.println(ub.getfName() + "&nbsp&nbsp" + ub.getlName() + "&nbsp&nbsp" + ub.getAddr() + "&nbsp&nbsp" +

			ub.getmId() + "&nbsp&nbsp" + ub.getPhNo() + "<br>");
	%>

	<!-- Edit Profile button -->
	<a href="edit" class="btn btn-animated">Edit Profile</a>

	<!-- Logout button -->
	<a href="logout" class="btn btn-animated">Logout</a>

</body>
</html>