<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container */
        .container {
            background: #fff;
            padding: 40px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            width: 100%;
            max-width: 400px;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
            font-size: 26px;
            font-weight: bold;
        }

        /* Form */
        .login-form {
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        .login-form input {
            width: 100%;
            padding: 12px 15px;
            margin: 12px 0;
            border: 1px solid #ccc;
            border-radius: 30px;
            outline: none;
            font-size: 16px;
        }

        .login-form input:focus {
            border-color: #007bff;
        }

        /* Nút đăng nhập */
        .login-btn {
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: background 0.3s;
            text-align: center;
            width: 100%;
            font-weight: bold;
            background-color: #007bff;
            color: #fff;
        }

        .login-btn:hover {
            background-color: #0056b3;
        }

        /* Ghi nhớ mật khẩu */
.remember-me {
    display: flex;
    align-items: center; 
    margin-top: 15px;
    font-size: 14px; 
    gap: 8px; 
}

.remember-me input {
    width: 16px;
    height: 16px; 
    cursor: pointer;
}

.remember-me label {
    cursor: pointer;
}
        
   
    </style>
</head>
<body>

    <div class="container">
        <h1>ĐĂNG NHẬP</h1>
        <form class="login-form" action="Dangnhap" method="get">
            <input type="email" placeholder="Email" name="email" required>
            <input type="password" placeholder="Mật khẩu" name="password" required>

            <div class="remember-me">
    <input type="checkbox" id="rememberMe" name="rememberMe">
    <label for="rememberMe">Ghi nhớ mật khẩu</label>
</div>
            

            <button type="submit" class="login-btn">ĐĂNG NHẬP</button>
        </form>
    </div>

</body>
</html>
