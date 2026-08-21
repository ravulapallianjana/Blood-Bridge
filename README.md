# 🩸 Blood Bridge

## 📌 Project Overview

Blood Bridge is a web-based Blood Donor Management System developed using **Java, JSP, Servlets, JDBC, and MySQL**.

The main purpose of this project is to connect people who need blood with registered blood donors. Users can search for donors based on **blood group and location**, making it easier to find suitable donors quickly.

---

## 🎯 Objectives

- Register and manage blood donor information.
- Allow users to search for blood donors.
- Search donors based on blood group and location.
- Store donor information securely in a MySQL database.
- Provide a simple and user-friendly web interface.
- Reduce the time required to find suitable blood donors.

---

## 🛠️ Technologies Used

### Backend
- Java
- Servlets
- JDBC

### Frontend
- JSP
- HTML
- CSS
- Bootstrap

### Database
- MySQL

### Server
- Apache Tomcat

### Tools
- Eclipse IDE
- Git
- GitHub

---

## 🏗️ Project Architecture

```text
User
  │
  ▼
JSP / HTML
  │
  ▼
Servlets
  │
  ▼
JDBC
  │
  ▼
MySQL Database



✨ Key Features
👤 Donor Registration

Donors can register by providing their required personal and blood-related information.

🔍 Donor Search

Users can search for available donors based on:

Blood Group
Location
🗄️ Database Management

Donor information is stored and managed using MySQL.

🔗 JDBC Connectivity

JDBC is used to establish communication between the Java application and MySQL database.

🌐 Web Interface

JSP pages provide the user interface for donor registration and searching

Blood Bridge/
│
├── src/
│   └── main/
│       └── java/
│           └── Servlets/
│
├── WebContent/
│   ├── index.jsp
│   ├── register.jsp
│   ├── search.jsp
│   ├── css/
│   └── images/
│
├── WEB-INF/
│   └── web.xml
│
└── README.md

User
 │
 ├── Register as Donor
 │        │
 │        ▼
 │     Servlet
 │        │
 │        ▼
 │       JDBC
 │        │
 │        ▼
 │     MySQL
 │
 └── Search Donor
          │
          ▼
       Servlet
          │
          ▼
         JDBC
          │
          ▼
       MySQL
          │
          ▼
    Matching Donors

🚀 Future Enhancements
User authentication and login.
Email/SMS notifications to donors.
Donor availability status.
Admin dashboard.
Location-based donor search.
Online blood request functionality.
Improved security and password encryption
## 👩‍💻 Developer

**Ravulapalli Anjana**

Java Developer | Java Full Stack Enthusiast

GitHub:  
https://github.com/ravulapallianjana
