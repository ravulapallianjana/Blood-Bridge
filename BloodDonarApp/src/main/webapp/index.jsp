<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blood Donor Management System</title>

<style>
body{
    margin:0;
    font-family:Arial, sans-serif;
    background:#f4f4f4;
}

.header{
    background:#d10000;
    color:white;
    text-align:center;
    padding:20px;
}

.container{
    width:500px;
    margin:40px auto;
    background:white;
    padding:25px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

h2{
    text-align:center;
    color:#d10000;
}

input,select{
    width:100%;
    padding:10px;
    margin:8px 0;
    box-sizing:border-box;
}

button{
    width:100%;
    padding:12px;
    background:#d10000;
    color:white;
    border:none;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:#a00000;
}

.link{
    text-align:center;
    margin-top:15px;
}

.link a{
    text-decoration:none;
    color:#d10000;
    font-weight:bold;
}
</style>

</head>
<body>

<div class="header">
    <h1>Blood Donor Management System</h1>
</div>

<div class="container">

    <h2>Donor Registration</h2>

    <form action="Register" method="post">
    
          <input type= "text" name="email"
                placeholder="Enter Donar Email" required>

        <input type="text" name="dname"
               placeholder="Enter Donor Name" required>

        <input type="number" name="age"
               placeholder="Enter Age" required>

        <select name="gender" required>
            <option value="">Select Gender</option>
            <option>Male</option>
            <option>Female</option>
        </select>

        <select name="blood_group" required>
            <option value="">Select Blood Group</option>
            <option>A+</option>
            <option>A-</option>
            <option>B+</option>
            <option>B-</option>
            <option>AB+</option>
            <option>AB-</option>
            <option>O+</option>
            <option>O-</option>
        </select>

        <input type="text" name="phone"
               placeholder="Enter Phone Number" required>

        <input type="text" name="city"
               placeholder="Enter City" required>

        <button type="submit">Register Donor</button>

    </form>

    <div class="link">
        <a href="search.jsp">Search Donors</a>
    </div>

</div>

</body>
</html>