<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Search Donors</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #ff416c, #ff4b2b);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.search-box {
    background: white;
    padding: 40px;
    border-radius: 20px;
    width: 420px;
    text-align: center;
    box-shadow: 0px 10px 30px rgba(0,0,0,0.3);
}

.search-box h2 {
    color: #d10000;
    margin-bottom: 20px;
}

.search-box input {
    width: 90%;
    padding: 12px;
    margin: 10px 0;
    border: 2px solid #ff4b2b;
    border-radius: 10px;
    font-size: 16px;
    outline: none;
}

.search-box button {
    margin-top: 15px;
    padding: 12px 25px;
    border: none;
    border-radius: 10px;
    background: linear-gradient(90deg, #ff512f, #dd2476);
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

.search-box button:hover {
    transform: scale(1.05);
    background: linear-gradient(90deg, #24c6dc, #514a9d);
}
</style>

</head>

<body>

<div class="search-box">
    <h2> Search Donors</h2>

    <form action="SearchServlet" method="post">

        <!-- Blood Group -->
        <input type="text" 
               name="bloodgroup" 
               placeholder="Enter Blood Group (A+, O-, B+,AB+,B-)" 
               required>

        <!-- Location -->
        <input type="text" 
               name="location" 
               placeholder="Enter Nearby Place (City / Village)" 
               required>

        <button type="submit"> Search Donors</button>

    </form>
</div>

</body>
</html>