<html>
<head>
    <title>Login Success</title>
</head>
<body>
    <h1>Welcome to the Application!</h1>
    <p>You have successfully logged in.</p>
    <form action="/saveUserData" method="post">
        <input type="text" name="username" value="${param.username}" readonly>
        <button type="submit">Save</button>
    </form>
    <a href="index.jsp">Go to Home</a>
</body>
</html>
