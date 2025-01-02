<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CAFE</title>
    <link 
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" 
        rel="stylesheet"
    >
    <script 
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js">
    </script>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #fdfcfb;
        }
        .navbar {
            background-color: #6f4e37; 
            padding: 10px 15px;
        }
        .navbar-brand img {
            height: 60px;  /* sz logo */
        }
        .navbar-nav .nav-link {
            color: #f8f9fa !important; 
            font-weight: bold;
            font-size: 18px;
            margin-right: 15px; 
        }
        .navbar-nav .nav-link:hover {
            color: #f5c99b !important; 
        }
        .dropdown-menu {
            background-color: #6f4e37; 
            border: none;
        }
        .dropdown-item {
            color: #f8f9fa;
        }
        .dropdown-item:hover {
            background-color: #9d7463; 
        }
        .form-control {
            border-radius: 50px;
        }
        .btn-outline-success {
            border-radius: 50px; 
            border-color: #f5c99b;
            color: #f5c99b;
        }
        .btn-outline-success:hover {
            background-color: #f5c99b;
            color: #6f4e37;
        }
        footer {
            background-color: #6f4e37;
            color: #f8f9fa;
            padding: 10px 0;
            text-align: center;
        }
        footer a {
            color: #f5c99b;
            text-decoration: none;
        }
        footer a:hover {
            text-decoration: underline;
        }
        
       #cart-count {
    position: absolute;
    top: -5px; /* Điều chỉnh để căn số lượng nằm phía trên */
    right: -10px; /* Căn lề bên phải của biểu tượng */
    background-color: red;
    color: white;
    font-size: 12px;
    font-weight: bold;
    border-radius: 50%;
    padding: 2px 6px;
    min-width: 20px; /* Đảm bảo kích thước đủ lớn */
    height: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 10; /* Đảm bảo nó nằm trên tất cả */
}

        
    </style>
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="image/logo.jpg" alt="Logo">
            </a>
            <button 
                class="navbar-toggler" 
                type="button" 
                data-bs-toggle="collapse" 
                data-bs-target="#navbarSupportedContent" 
                aria-controls="navbarSupportedContent" 
                aria-expanded="false" 
                aria-label="Toggle navigation"
            >
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="Home.jsp">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Giới thiệu</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a 
                            class="nav-link dropdown-toggle" 
                            href="#" 
                            id="navbarDropdown" 
                            role="button" 
                            data-bs-toggle="dropdown" 
                            aria-expanded="false" >Danh mục</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Coffee</a></li>
                            <li><a class="dropdown-item" href="#">Trà trái cây</a></li>
                            <li><a class="dropdown-item" href="#">Trà sữa</a></li>
                            <li><a class="dropdown-item" href="#">Thức uống đá say</a></li>
                            <li><a class="dropdown-item" href="#">Bánh & Snack</a></li>
                            <li><a class="dropdown-item" href="#">Matcha - Chocolate</a></li>
                            <li><a class="dropdown-item" href="#">Combo Trà & Bánh</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="productnv.jsp">Sản phẩm</a>
                    </li>
                </ul>
                <form class="d-flex">
                   <div style="position: relative; display: inline-block;">
    <button class="btn btn-outline-success" type="button" onclick="location.href='Cart.jsp'">
        <i class="fas fa-shopping-cart" style="font-size: 24px;"></i>
        <span id="cart-count" class="badge"><%= session.getAttribute("cartCount") != null ? session.getAttribute("cartCount") : 0 %></span>
    </button>
</div>
                   
                    


                 
                    <button class="btn btn-outline-danger ms-3" type="button" onclick="location.href='logout.html'">Đăng xuất</button>
                </form>
            </div>
        </div>
    </nav>
    <img src="image/nenn.jpg" style="width: 100%; height: auto; alt="">
    
</body>
</html>
