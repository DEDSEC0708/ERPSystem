<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ERP System</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e0f7fa;
            color: #333;
        }
        header {
            background: #ff5722;
            color: #fff;
            padding: 1rem 0;
            text-align: center;
        }
        header h1 {
            margin: 0;
            font-size: 2.5rem;
        }
        nav ul {
            display: flex;
            justify-content: center;
            list-style: none;
            padding: 0;
        }
        nav ul li {
            margin: 0 1rem;
        }
        nav ul li a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
        }
        .welcome {
            padding: 2rem;
            text-align: center;
            background: #ffffff;
            margin: 2rem auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 900px;
        }
        .welcome h2 {
            margin-bottom: 1.5rem;
            font-size: 2rem;
            color: #ff5722;
        }
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin: 2rem 1rem;
        }
        .feature-box {
            background: #ffffff;
            padding: 2rem;
            margin: 1rem;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            flex: 1 1 calc(30% - 2rem);
            max-width: 300px;
            text-align: center;
        }
        .feature-box h3 {
            margin-bottom: 1.5rem;
            font-size: 1.5rem;
            color: #ff5722;
        }
        .feature-box a {
            display: inline-block;
            margin-top: 1rem;
            padding: 0.5rem 1rem;
            background: #ff5722;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s ease;
        }
        .feature-box a:hover {
            background: #e64a19;
        }
        footer {
            text-align: center;
            padding: 1rem 0;
            background: #e64a19;
            color: #fff;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>College ERP System</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="jsp/student.jsp">Student Portal</a></li>
                <li><a href="jsp/faculty.jsp">Faculty Portal</a></li>
                <li><a href="jsp/attendance.jsp">Attendance</a></li>
                <li><a href="jsp/reports.jsp">Reports</a></li>
                <li><a href="jsp/support.jsp">Contact</a></li>
                <li><a href="jsp/register.jsp">Logout</a></li>
            </ul>
        </nav>
    </header>

    <!-- Main Content -->
    <section class="welcome">
        <h2>Welcome to the College Management System</h2>
        <p>Manage academic records, attendance, and reports efficiently. Explore the system for better control and monitoring of student and faculty activities.</p>
    </section>

    <section class="features">
        <div class="feature-box">
            <h3>Academic Records</h3>
            <p>Access and update academic information for students and faculty.</p>
            <a href="jsp/student.jsp">View Records</a>
        </div>
        <div class="feature-box">
            <h3>Attendance Tracker</h3>
            <p>Monitor student attendance and maintain reports.</p>
            <a href="jsp/attendance.jsp">Track Attendance</a>
        </div>
        <div class="feature-box">
            <h3>Generate Reports</h3>
            <p>Create and download performance and attendance reports.</p>
            <a href="jsp/reports.jsp">Generate Reports</a>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 College Management System. Built for the future of education.</p>
    </footer>
</body>
</html>
