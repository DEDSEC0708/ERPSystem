<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Manage Attendance</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        h2 {
            color: #4CAF50;
        }
        form {
            margin-top: 10px;
        }
        input[type="text"],
        input[type="number"] {
            padding: 8px;
            margin-bottom: 10px;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Portal - Attendance Update</h2>
        <form action="AdminServlet" method="POST">
            <label for="studentId">Student ID:</label>
            <input type="text" id="studentId" name="studentId" required><br>

            <label for="attendance">Attendance (%):</label>
            <input type="number" id="attendance" name="attendance" min="0" max="100" required><br>

            <button type="submit">Submit Attendance</button>
        </form>
    </div>
</body>
</html>
