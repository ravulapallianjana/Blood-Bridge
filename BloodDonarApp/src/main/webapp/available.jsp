<%@ page import="java.util.List"%>
<%@ page import="com.blooddonar.model.BloodModel"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Donors</title>

<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background: linear-gradient(135deg, #ff416c, #ff4b2b);
}

.container {
	width: 90%;
	margin: 50px auto;
	background: white;
	padding: 30px;
	border-radius: 15px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
}

h2 {
	text-align: center;
	color: #d10000;
	margin-bottom: 25px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th {
	background: #d10000;
	color: white;
	padding: 12px;
}

td {
	padding: 12px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background: #f5f5f5;
}

.no-data {
	text-align: center;
	color: red;
	font-size: 22px;
	font-weight: bold;
	padding: 30px;
}

.back-btn {
	display: block;
	width: 180px;
	margin: 25px auto;
	text-align: center;
	text-decoration: none;
	background: #d10000;
	color: white;
	padding: 12px;
	border-radius: 8px;
	font-weight: bold;
}

.back-btn:hover {
	background: #a00000;
}
</style>

</head>
<body>

	<div class="container">

		<h2> Available Donors</h2>

		<%
		List<BloodModel> donors = (List<BloodModel>) request.getAttribute("donors");

		if (donors != null && !donors.isEmpty()) {
		%>

		<table>

			<tr>
			<th>email</th>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Blood Group</th>
				<th>Phone</th>
				<th>City</th>
				<th> Book</th>
			</tr>

			<%
			for (BloodModel d : donors) {
			%>

			<tr>
		         <td><%=d.getemail() %></td>
				<td><%=d.getDname()%></td>
				<td><%=d.getAge()%></td>
				<td><%=d.getGender()%></td>
				<td><%=d.getBlood_group()%></td>
				<td><%=d.getPhone()%></td>
				<td><%=d.getCity()%></td>
				<td><button type="button" >BOOK</button></td>
			</tr>

			<%
			}
			%>

		</table>

		<%
		} else {
		%>

		<div class="no-data"> No Donors Found</div>

		<%
		}
		%>

		

	</div>

</body>
</html>