<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>My Profile</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {

    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    background:
        radial-gradient(circle at top left, #243b55, transparent 40%),
        radial-gradient(circle at bottom right, #141e30, transparent 40%),
        linear-gradient(135deg, #0f2027, #203a43, #2c5364);

    color: white;
}

.profile-card {

    width: 450px;

    padding: 40px;

    border-radius: 25px;

    background: rgba(255,255,255,0.10);

    border: 1px solid rgba(255,255,255,0.20);

    backdrop-filter: blur(18px);

    box-shadow: 0 25px 60px rgba(0,0,0,0.45);

}

.avatar {

    width: 90px;
    height: 90px;

    margin: 0 auto 20px;

    border-radius: 50%;

    display: flex;
    justify-content: center;
    align-items: center;

    background: linear-gradient(135deg, #00c6ff, #0072ff);

    font-size: 35px;
    font-weight: bold;

    box-shadow: 0 10px 30px rgba(0,114,255,0.45);
}

h1 {

    text-align: center;

    margin-bottom: 30px;

}

.info {

    margin-bottom: 18px;

    padding: 15px;

    border-radius: 10px;

    background: rgba(255,255,255,0.08);

}

.label {

    font-size: 12px;

    color: #b0bec5;

    margin-bottom: 5px;

}

.value {

    font-size: 17px;

    font-weight: bold;

}

.logout {

    display: block;

    text-align: center;

    margin-top: 25px;

    padding: 13px;

    border-radius: 10px;

    background: linear-gradient(135deg, #00c6ff, #0072ff);

    color: white;

    text-decoration: none;

    font-weight: bold;

}

</style>

</head>


<body>

<div class="profile-card">

    <div class="avatar">
        ${firstName.substring(0,1)}
    </div>

    <h1>
        Welcome, ${firstName}!
    </h1>


    <div class="info">

        <div class="label">
            User ID
        </div>

        <div class="value">
            ${id}
        </div>

    </div>


    <div class="info">

        <div class="label">
            Full Name
        </div>

        <div class="value">
            ${firstName} ${lastName}
        </div>

    </div>


    <div class="info">

        <div class="label">
            Email Address
        </div>

        <div class="value">
            ${email}
        </div>

    </div>


    <div class="info">

        <div class="label">
            Mobile Number
        </div>

        <div class="value">
            ${mobileNo}
        </div>

    </div>


    <a href="login.jsp" class="logout">
        Logout
    </a>

</div>

</body>

</html>