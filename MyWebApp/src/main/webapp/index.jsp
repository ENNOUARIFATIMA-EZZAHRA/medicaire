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
                <h2 class="text-2xl font-semibold mt-4">MediCare</h2>
                <p class="text-gray-500">Welcome to the Home Page!</p>
            </div>
            <div class="text-center">
                <button onclick="window.location.href='login.jsp';" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Login</button>
                <button onclick="window.location.href='register.jsp';" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Register</button>
            </div>
        </div>
    </div>
</body>
</html>
