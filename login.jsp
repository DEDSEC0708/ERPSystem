<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - College Management System</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Page Body */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #333;
        }

        /* Login Container */
        .login-container {
            background: #f7f7f7;
            color: #555;
            width: 100%;
            max-width: 400px;
            padding: 2rem 2.5rem;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        /* Title Style */
        h2 {
            color: #ff7e5f;
            margin-bottom: 1.5rem;
            font-size: 1.8rem;
        }

        /* Form */
        form {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            margin-bottom: 1.5rem;
        }

        /* Input Field */
        input {
            padding: 0.8rem;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            transition: border 0.3s ease;
        }

        input:focus {
            border-color: #ff7e5f;
        }

        /* Submit Button */
        button {
            background-color: #ff7e5f;
            border: none;
            color: white;
            padding: 0.8rem;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            transition: background 0.3s ease;
        }

        button:hover {
            background-color: #feb47b;
        }

        /* Error Message */
        .error {
            color: red;
            font-size: 0.9rem;
            margin-bottom: 1rem;
        }

        /* Register Link */
        .register-link {
            margin: 1rem 0 0;
            font-size: 0.9rem;
        }

        .register-link a {
            color: #ff7e5f;
            text-decoration: none;
            font-weight: bold;
        }

        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <%-- Display error message if login fails --%>
        <%
            String error = request.getParameter("error");
            if ("invalid".equals(error)) {
        %>
        <div class="error">Invalid username or password. Please try again.</div>
        <%
            }
        %>
        <form action="LoginServlet" method="POST">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Login</button>
        </form>
        <div class="register-link">
            <p>Don't have an account? <a href="register.jsp">Register here</a></p>
        </div>
    </div>
</body>
</html>
