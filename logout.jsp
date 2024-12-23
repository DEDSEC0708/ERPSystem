<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - College Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f9;
        }
        .container {
            max-width: 400px;
            margin: 5% auto;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 2rem;
            text-align: center;
        }
        h2 {
            margin-bottom: 1.5rem;
            color: #4CAF50;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin: 0.5rem 0 0.2rem;
            text-align: left;
            font-weight: bold;
            color: #333;
        }
        input {
            padding: 0.5rem;
            font-size: 1rem;
            margin-bottom: 1rem;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            background: #4CAF50;
            color: #fff;
            border: none;
            padding: 0.8rem;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
            transition: background 0.3s ease;
        }
        button:hover {
            background: #45a049;
        }
        .register-link {
            margin-top: 1rem;
            font-size: 0.9rem;
        }
        .register-link a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="loginServlet" method="POST">
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
