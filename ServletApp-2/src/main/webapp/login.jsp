<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Login | Servlet App</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
}

body {
    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    padding: 30px;

    background:
        radial-gradient(circle at top left, #243b55, transparent 40%),
        radial-gradient(circle at bottom right, #141e30, transparent 40%),
        linear-gradient(135deg, #0f2027, #203a43, #2c5364);

    color: white;
}


/* Main Card */

.login-container {

    width: 420px;

    padding: 45px 40px;

    background: rgba(255, 255, 255, 0.10);

    border: 1px solid rgba(255, 255, 255, 0.20);

    border-radius: 25px;

    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);

    box-shadow:
        0 25px 60px rgba(0, 0, 0, 0.45);

}


/* Logo */

.logo {

    width: 70px;
    height: 70px;

    margin: 0 auto 18px;

    display: flex;

    align-items: center;
    justify-content: center;

    border-radius: 50%;

    background:
        linear-gradient(135deg, #00c6ff, #0072ff);

    font-size: 30px;

    font-weight: bold;

    box-shadow:
        0 10px 30px rgba(0, 114, 255, 0.45);
}


/* Heading */

h1 {

    text-align: center;

    font-size: 30px;

    margin-bottom: 8px;
}

.subtitle {

    text-align: center;

    color: #cfd8dc;

    font-size: 14px;

    margin-bottom: 32px;
}


/* Form */

.form-group {

    margin-bottom: 20px;
}

label {

    display: block;

    margin-bottom: 8px;

    font-size: 14px;

    color: #e0e0e0;
}

.input-box {

    position: relative;
}

.input-box span {

    position: absolute;

    left: 15px;
    top: 50%;

    transform: translateY(-50%);

    font-size: 17px;

    color: #b0bec5;
}

input {

    width: 100%;

    padding: 14px 15px 14px 45px;

    border-radius: 11px;

    border: 1px solid rgba(255, 255, 255, 0.25);

    outline: none;

    background: rgba(255, 255, 255, 0.09);

    color: white;

    font-size: 15px;

    transition: 0.3s;
}

input::placeholder {

    color: #b0bec5;
}

input:focus {

    border-color: #00c6ff;

    background: rgba(255, 255, 255, 0.14);

    box-shadow:
        0 0 0 3px rgba(0, 198, 255, 0.12);
}


/* Remember + Forgot */

.options {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-top: -5px;

    margin-bottom: 25px;

    font-size: 13px;
}

.remember {

    display: flex;

    align-items: center;

    gap: 7px;

    color: #cfd8dc;
}

.remember input {

    width: auto;

    accent-color: #00c6ff;
}

.forgot {

    color: #00c6ff;

    text-decoration: none;

    font-weight: bold;
}

.forgot:hover {

    text-decoration: underline;
}


/* Login Button */

button {

    width: 100%;

    padding: 14px;

    border: none;

    border-radius: 11px;

    background:
        linear-gradient(135deg, #00c6ff, #0072ff);

    color: white;

    font-size: 16px;

    font-weight: bold;

    cursor: pointer;

    transition: 0.3s;

    box-shadow:
        0 8px 20px rgba(0, 114, 255, 0.35);
}

button:hover {

    transform: translateY(-3px);

    box-shadow:
        0 12px 30px rgba(0, 114, 255, 0.55);
}


/* Register */

.register-text {

    text-align: center;

    margin-top: 25px;

    color: #cfd8dc;

    font-size: 14px;
}

.register-text a {

    color: #00c6ff;

    text-decoration: none;

    font-weight: bold;
}

.register-text a:hover {

    text-decoration: underline;
}


/* Divider */

.divider {

    display: flex;

    align-items: center;

    gap: 12px;

    margin: 25px 0;

    color: #90a4ae;

    font-size: 12px;
}

.divider::before,
.divider::after {

    content: "";

    flex: 1;

    height: 1px;

    background: rgba(255,255,255,0.18);
}


/* Footer */

.footer {

    text-align: center;

    margin-top: 25px;

    color: #90a4ae;

    font-size: 12px;
}


.error-message {
    width: 100%;
    box-sizing: border-box;
    margin: 20px 0 26px;
    padding: 13px 16px;

    background: rgba(255, 82, 82, 0.12);
    border: 1px solid rgba(255, 82, 82, 0.45);
    border-left: 4px solid #ff5252;
    border-radius: 10px;

    color: #ff6b6b;
    font-size: 17px;
    font-weight: 600;
    text-align: center;

    box-shadow: 0 4px 15px rgba(255, 82, 82, 0.08);
}

.error-message span {
    margin-right: 8px;
    font-size: 18px;
}

/* Mobile */

@media (max-width: 500px) {

    body {
        padding: 20px;
    }

    .login-container {

        width: 100%;

        padding: 35px 25px;
    }

    h1 {
        font-size: 26px;
    }
}

</style>

</head>


<body>

<div class="login-container">

    <!-- Logo -->

    <div class="logo">
        S
    </div>


    <!-- Heading -->

    <h1>Welcome Back</h1>

    <p class="subtitle">
        Login to continue to your account
    </p>


	<% if (request.getAttribute("msg") != null) { %>
    <div class="error-message">
        <span>⚠</span>
        <%= request.getAttribute("msg") %>
    </div>
<% } %>
    <!-- Login Form -->
  <br>
    <form action="login" method="post">


        <!-- Email -->

        <div class="form-group">

            <label for="email">
                Email Address
            </label>

            <div class="input-box">

                <span>✉</span>

                <input
                    type="email"
                    id="email"
                    name="email"
                    placeholder="Enter your email"
                    required>

            </div>

        </div>


        <!-- Password -->

        <div class="form-group">

            <label for="password">
                Password
            </label>

            <div class="input-box">

                <span>🔒</span>

                <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder="Enter your password"
                    required>

            </div>

        </div>


        <!-- Remember / Forgot -->

        <div class="options">

            <label class="remember">

                <input
                    type="checkbox"
                    name="remember">

                Remember me

            </label>


            <a href="#" class="forgot">
                Forgot Password?
            </a>

        </div>


        <!-- Login Button -->

        <button type="submit">
            Login to Account
        </button>

    </form>


    <!-- Divider -->

    <div class="divider">
        OR
    </div>


    <!-- Register -->

    <div class="register-text">

        Don't have an account?

        <a href="register-form">
            Create Account
        </a>

    </div>


    <!-- Footer -->

    <div class="footer">

        © 2026 Servlet App. All rights reserved.

    </div>

</div>

</body>

</html>