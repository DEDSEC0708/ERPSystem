<%@ page import="java.util.*" %>
<%
    // Handle session-based login and roles
    String userRole = (String) session.getAttribute("userRole");
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Attendance Monitoring</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #e8f5e9; /* Soft green background */
        }

        h2, h3, h4, h5 {
            color: #2e7d32; /* Dark green */
        }

        /* Navigation Bar */
        .nav {
            background-color: #4caf50; /* Rich green */
            padding: 10px;
            color: white;
            text-align: center;
            border-radius: 5px;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        /* Forms and Buttons */
        form {
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f1fff1; /* Very light green */
            border: 1px solid #81c784; /* Soft green border */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        input[type="text"],
        input[type="password"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #66bb6a; /* Green border */
            border-radius: 5px;
            transition: border-color 0.2s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #2e7d32;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            color: white;
            background-color: #2e7d32; /* Dark green */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #66bb6a; /* Lighter green */
        }

        /* Display Areas */
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #c8e6c9; /* Light green */
            border: 1px solid #81c784;
            border-radius: 8px;
            box-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            padding: 8px;
            border-bottom: 1px solid #66bb6a;
        }

        /* Error/Info Messages */
        .error {
            color: #e53935; /* Red */
            text-align: center;
            font-weight: bold;
        }

        .success {
            color: #2e7d32; /* Dark green */
            text-align: center;
            font-weight: bold;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            form,
            .container {
                padding: 15px;
            }

            input[type="text"],
            input[type="password"],
            input[type="date"] {
                padding: 8px;
            }

            input[type="submit"] {
                padding: 8px;
            }
        }
    </style>
</head>
<body>
    <div class="nav">Attendance Monitoring System</div>

    <%
        // Handle login
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String action = request.getParameter("action");

            if ("login".equals(action)) {
                String user = request.getParameter("username");
                String pass = request.getParameter("password");
                if ("faculty".equals(user) && "password".equals(pass)) {
                    session.setAttribute("userRole", "faculty");
                    session.setAttribute("username", user);
                    response.sendRedirect("attendance.jsp");
                } else if ("student".equals(user) && "password".equals(pass)) {
                    session.setAttribute("userRole", "student");
                    session.setAttribute("username", user);
                    response.sendRedirect("attendance.jsp");
                } else {
                    out.println("<p class='error'>Invalid Login. Try again.</p>");
                }
            }

            if ("submitAttendance".equals(action)) {
                String studentName = request.getParameter("studentName");
                String attendanceDate = request.getParameter("attendanceDate");

                Map<String, String> attendanceRecords = (Map<String, String>) session.getAttribute("attendanceRecords");
                if (attendanceRecords == null) {
                    attendanceRecords = new HashMap<>();
                }
                attendanceRecords.put(studentName, attendanceDate);
                session.setAttribute("attendanceRecords", attendanceRecords);
                out.println("<p class='success'>Attendance for " + studentName + " added on " + attendanceDate + "</p>");
            }
        }

        // Determine roles
        if ("faculty".equals(userRole)) {
    %>
    <h3>Faculty - Add Attendance</h3>
    <form action="attendance.jsp" method="post">
        <input type="hidden" name="action" value="submitAttendance">
        <label>Student Name:</label>
        <input type="text" name="studentName" required>
        <label>Date (e.g. 2023-12-08):</label>
        <input type="text" name="attendanceDate" required>
        <input type="submit" value="Add Attendance">
    </form>
    <%
        } else if ("student".equals(userRole)) {
            Map<String, String> attendanceRecords = (Map<String, String>) session.getAttribute("attendanceRecords");
            if (attendanceRecords == null) {
                attendanceRecords = new HashMap<>();
            }
    %>
    <h3>Student Attendance View</h3>
    <div class="container">
        <h4>Hello, <%= session.getAttribute("username") %></h4>
        <h5>Attendance Records:</h5>
        <ul>
            <% 
                if (attendanceRecords.isEmpty()) {
                    out.println("<li>No records available.</li>");
                } else {
                    String studentName = (String) session.getAttribute("username");
                    if (attendanceRecords.containsKey(studentName)) {
                        out.println("<li>Attendance Date: " + attendanceRecords.get(studentName) + "</li>");
                    } else {
                        out.println("<li>No attendance record found for your name.</li>");
                    }
                }
            %>
        </ul>
    </div>
    <%
        } else {
    %>
    <h3>Login to Continue</h3>
    <form action="attendance.jsp" method="POST">
        <label>Username (faculty/student):</label>
        <input type="text" name="username" required>
        <label>Password:</label>
        <input type="password" name="password" required>
        <input type="hidden" name="action" value="login">
        <input type="submit" value="Login">
    </form>
    <%
        }
    %>
</body>
</html>
