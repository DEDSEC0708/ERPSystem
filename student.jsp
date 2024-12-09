<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Student Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 60%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        h2 {
            color: #4CAF50;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Portal</h2>
        <h3>Your Marks</h3>
        <table>
            <tr>
                <th>Course</th>
                <th>Marks</th>
            </tr>
            <%-- Populate marks dynamically from database --%>
        </table>
        <hr>
        <h3>Your Attendance</h3>
        <table>
            <tr>
                <th>Course</th>
                <th>Attendance</th>
            </tr>
            <%-- Populate attendance dynamically from database --%>
        </table>
    </div>
</body>
</html>
