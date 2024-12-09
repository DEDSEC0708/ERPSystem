<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Faculty - Attendance & Marks</title>
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
        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Faculty Portal</h2>
        <form action="FacultyServlet" method="POST">
            <label for="studentId">Student ID:</label>
            <input type="text" id="studentId" name="studentId" required><br><br>

            <label for="marks">Enter Marks:</label>
            <input type="number" id="marks" name="marks" required><br><br>

            <button type="submit">Submit Marks</button>
        </form>
        <hr>
        <h3>Attendance Records</h3>
        <table>
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Attendance</th>
            </tr>
            <%-- Populate attendance records dynamically from database --%>
        </table>
    </div>
</body>
</html>
