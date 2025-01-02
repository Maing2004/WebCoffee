<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Ký Tài Khoản</title>
<link rel="stylesheet" href="/webapp/css/Style.css">
</head>

<style>
/* Same styles as before */
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

.container {
    background: #fff;
    padding: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    width: 100%;
    max-width: 400px;
}
h1 {
    color: blue;
    text-align: center;
    margin-bottom: 20px; 
    font-size: 24px;
}
.register-form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.register-form input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ddd;
    border-radius: 25px;
    outline: none;
    font-size: 14px;
}

.button-group {
    display: flex;
    gap: 10px;
    width: 100%;
    justify-content: center;
}

.register-btn,
.login-btn {
    flex: 1;
    padding: 10px 0;
    border: none;
    border-radius: 25px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s;
    text-align: center;
}

.register-btn {
    background-color: #007bff;
    color: #fff;
}

.register-btn:hover {
    background-color: #0056b3;
}

.login-btn {
    background-color: #6c757d;
    color: #fff;
}

.login-btn:hover {
    background-color: #5a6268;
}
</style>

<body>
 <div class="container">
 <h1>ĐĂNG KÝ TÀI KHOẢN</h1>
 
 <% 
    if (request.getAttribute("successMessage") != null) { 
%>
    <p style="color: green; text-align: center;">
        <%= request.getAttribute("successMessage") %>
    </p>
<% 
    } else if (request.getAttribute("errorMessage") != null) { 
%>
    <p style="color: red; text-align: center;">
        <%= request.getAttribute("errorMessage") %>
    </p>
<% 
    } 
%>

 
    <form class="register-form" action="Dangky" method="post">
        <input type="text" placeholder="Tên đăng nhập" name="fullname" required>
        <input type="email" placeholder="Email" name="email" required>
        <input type="password" placeholder="Mật khẩu" name="password" required>
        <input type="password" placeholder="Nhập lại mật khẩu" name="confirmPassword" required>
        <div class="button-group">
            <button type="submit" class="register-btn">ĐĂNG KÝ</button>
        </div>
        <p>Bạn đã có tài khoản? <a href="Dangnhap.jsp" class="login-link">Đăng nhập ngay</a></p>
    </form>
 </div>
</body>
</html>
