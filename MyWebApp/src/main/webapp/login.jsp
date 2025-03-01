<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MediCare - Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
    <header class='flex items-center justify-between p-4 bg-blue-500 shadow'>
        <span class='text-white font-bold'>Medicare</span>
        <nav>
            <ul class='flex space-x-4'>
                <li><a href='index.jsp' class='text-white hover:text-blue-300'>Home</a></li>
                <li><a href='register.jsp' class='text-white hover:text-blue-300'>Register</a></li>
                <li><a href='login.jsp' class='text-white hover:text-blue-300'>Login</a></li>
            </ul>
        </nav>
    </header>
    <div class="flex justify-center items-center min-h-screen">
        <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-sm">
            <div class="text-center mb-8">
                <i class="fas fa-hospital-user text-5xl text-blue-600"></i>
                <h2 class="text-2xl font-bold mt-4">LOGIN</h2>
                <p class="text-gray-500">Welcome back! Please login to your account.</p>
            </div>

            <c:if test="${not empty error}">
                <div class="bg-red-100 text-red-600 p-3 rounded mb-6 text-center">
                    ${error}
                </div>
            </c:if>

            <form action='/login' method='post' class='bg-white p-8 rounded-lg shadow-lg'>
                <div class='mb-4'>
                    <label for='username' class='block text-gray-700'>Username:</label>
                    <input type='text' id='username' name='username' class='border rounded py-2 px-3 w-64' required>
                </div>
                <div class='mb-4'>
                    <label for='password' class='block text-gray-700'>Password:</label>
                    <input type='password' id='password' name='password' class='border rounded py-2 px-3 w-64' required>
                </div>
                <div class='flex justify-center'>
                    <button type='submit' class='bg-blue-500 text-white py-2 px-4 rounded'>Login</button>
                </div>
            </form>
            <script>
                document.querySelector('form').addEventListener('submit', function(event) {
                    event.preventDefault();
                    // Here you would normally handle the login logic
                    // For demonstration, we will redirect to the home page
                    window.location.href = 'home.jsp';
                });
            </script>

            <div class="text-center mt-4">
                <a href="${pageContext.request.contextPath}/register" class="text-blue-600 hover:text-blue-800 text-sm">
                    Don't have an account? Register here
                </a>
            </div>
        </div>
    </div>
</body>
</html>
