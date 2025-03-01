<html>
<head>
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
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
                    <p class="text-gray-500">Welcome back! New here? Create an account to get started!</p>
                </div>

                <c:if test="${not empty error}">
                    <div class="bg-red-100 text-red-600 p-3 rounded mb-6 text-center">
                        ${error}
                    </div>
                </c:if>

            <form action="/register" method="post">
                <div class='mb-4'>
                    <label for='username' class='block text-gray-700'>Username:</label>
                    <input type='text' id='username' name='username' class='border rounded py-2 px-3 w-full' required>
                </div>
                <div class='mb-4'>
                    <label for='password' class='block text-gray-700'>Password:</label>
                    <input type='password' id='password' name='password' class='border rounded py-2 px-3 w-full' required>
                </div>
                <div class='mb-4'>
                    <label for='email' class='block text-gray-700'>Email:</label>
                    <input type='email' id='email' name='email' class='border rounded py-2 px-3 w-full' required>
                </div>
                <div class='flex justify-center'>
                    <button type='submit' class='bg-blue-500 text-white py-2 px-4 rounded'>Register</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
