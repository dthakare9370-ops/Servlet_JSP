<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Create Account | Servlet App</title>

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

.container {
    width: 500px;

    padding: 40px;

    background: rgba(255, 255, 255, 0.10);

    border: 1px solid rgba(255, 255, 255, 0.20);

    border-radius: 25px;

    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);

    box-shadow: 0 25px 60px rgba(0, 0, 0, 0.45);
}

/* Header */

.logo {
    width: 65px;
    height: 65px;

    margin: 0 auto 15px;

    display: flex;
    align-items: center;
    justify-content: center;

    border-radius: 50%;

    background: linear-gradient(135deg, #00c6ff, #0072ff);

    font-size: 27px;
    font-weight: bold;

    box-shadow: 0 10px 30px rgba(0, 114, 255, 0.45);
}

h1 {
    text-align: center;

    font-size: 30px;

    margin-bottom: 8px;
}

.subtitle {
    text-align: center;

    color: #cfd8dc;

    font-size: 14px;

    margin-bottom: 30px;
}

/* Form */

.form-group {
    margin-bottom: 18px;
}

label {
    display: block;

    margin-bottom: 7px;

    font-size: 14px;

    color: #e0e0e0;
}

input {
    width: 100%;

    padding: 13px 15px;

    border-radius: 10px;

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

    box-shadow: 0 0 0 3px rgba(0, 198, 255, 0.12);
}

/* Two columns */

.row {
    display: flex;

    gap: 15px;
}

.row .form-group {
    flex: 1;
}

/* Register Button */

button {
    width: 100%;

    margin-top: 8px;

    padding: 14px;

    border: none;

    border-radius: 11px;

    background: linear-gradient(135deg, #00c6ff, #0072ff);

    color: white;

    font-size: 16px;

    font-weight: bold;

    cursor: pointer;

    transition: 0.3s;

    box-shadow: 0 8px 20px rgba(0, 114, 255, 0.35);
}

button:hover {
    transform: translateY(-3px);

    box-shadow: 0 12px 30px rgba(0, 114, 255, 0.55);
}

/* Login link */

.login-text {
    text-align: center;

    margin-top: 22px;

    color: #cfd8dc;

    font-size: 14px;
}

.login-text a {
    color: #00c6ff;

    text-decoration: none;

    font-weight: bold;
}

.login-text a:hover {
    text-decoration: underline;
}

/* Mobile */

@media (max-width: 600px) {

    .container {
        width: 100%;

        padding: 30px 25px;
    }

    .row {
        flex-direction: column;

        gap: 0;
    }
}

</style>

</head>

<body>

<div class="container">

    <div class="logo">
        S
    </div>

    <h1>Create Account</h1>

    <p class="subtitle">
        Register yourself and get started
    </p>
	

    <form action="registeration" method="post">

		<p style="color:green">${msg}</p>
        <!-- Name -->

        <div class="row">

            <div class="form-group">

                <label for="firstName">
                    First Name
                </label>

                <input
                    type="text"
                    id="firstName"
                    name="firstName"
                    placeholder="Enter first name"
                    required>

            </div>


            <div class="form-group">

                <label for="lastName">
                    Last Name
                </label>

                <input
                    type="text"
                    id="lastName"
                    name="lastName"
                    placeholder="Enter last name"
                    required>

            </div>

        </div>


        <!-- Email -->

        <div class="form-group">

            <label for="email">
                Email Address
            </label>

            <input
                type="email"
                id="email"
                name="email"
                placeholder="example@gmail.com"
                required>

        </div>


        <!-- Mobile -->

        <div class="form-group">

            <label for="mobile">
                Mobile Number
            </label>

            <input
                type="tel"
                id="mobile"
                name="mobile"
                placeholder="Enter mobile number"
                pattern="[0-9]{10}"
                required>

        </div>


        <!-- Password -->

        <div class="row">

            <div class="form-group">

                <label for="password">
                    Password
                </label>

                <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder="Create password"
                    required>

            </div>


                    </div>


        <!-- Button -->

        <button type="submit">
            Create Account
        </button>

    </form>


    <div class="login-text">

        Already have an account?

        <a href="login-form">
            Login
        </a>

    </div>

</div>

</body>
</html>