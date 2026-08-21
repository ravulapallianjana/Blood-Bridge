<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>

<style>
body {
	font-family: Arial;
	background: #f4f4f4;
	text-align: center;
	padding-top: 100px;
}

.card {
	width: 500px;
	margin: auto;
	background: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px gray;
}

h2 {
	color: green;
}
</style>

</head>
<body>

	<div class="card">

		<%
		String name = (String) request.getAttribute("dname");
		%>

		<h2>Thank You For Donating Blood </h2>

		<p>
			Dear <b><%=name%></b>, your registration was completed
			successfully.
		</p>

		<a href="index.jsp">Go Home</a>

	</div>

</body>
</html>