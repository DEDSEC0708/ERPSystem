<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - College Management System</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #74ebd5, #9face6);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        /* Container */
        .container {
            width: 100%;
            max-width: 450px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            padding: 2rem;
            text-align: center;
        }
        /* Title */
        h2 {
            font-size: 1.8rem;
            margin-bottom: 1rem;
            color: #5a5af0;
        }
        /* Form */
        form {
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }
        label {
            font-size: 0.9rem;
            text-align: left;
            color: #444;
            font-weight: bold;
        }
        input {
            padding: 0.8rem;
            font-size: 1rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: box-shadow 0.3s ease, border-color 0.3s ease;
        }
        input:focus {
            outline: none;
            border-color: #5a5af0;
            box-shadow: 0 0 8px rgba(90, 90, 240, 0.3);
        }
        /* Button */
        button {
            padding: 0.8rem;
            font-size: 1rem;
            background: #5a5af0;
            color: #fff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        button:hover {
            background: #4a4ae0;
        }
        /* Back Link */
        .back-link {
            margin-top: 1rem;
            font-size: 0.9rem;
            color: #5a5af0;
        }
        .back-link a {
            text-decoration: none;
            color: #5a5af0;
            font-weight: bold;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Create Your Account</h2>
        <form action="registerServlet" method="POST">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Choose a username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Create a password" required>

            <button type="submit">Sign Up</button>
        </form>
        <div class="back-link">
            <p>Already have an account? <a href="login.jsp">Log in</a></p>
        </div>
    </div>
</body>
</html>
