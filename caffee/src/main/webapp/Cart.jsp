<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .cart-container {
            max-width: 900px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
        }
        .cart-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .cart-table th, .cart-table td {
            text-align: center;
            vertical-align: middle;
        }
        .cart-footer {
            text-align: right;
            margin-top: 20px;
        }
        .btn-back {
            margin-right: 10px;
        }
    </style>
</head>

 <script>
 document.addEventListener('DOMContentLoaded', (event) => {
	    const cart = JSON.parse(localStorage.getItem('cart')) || [];
	    const cartContainer = document.getElementById('cart-container');
	    const totalPriceElement = document.getElementById('total-price');
	    let totalPrice = 0;

	    if (cart.length === 0) {
	        cartContainer.innerHTML = '<p>Giỏ hàng trống</p>';
	    } else {
	        cartContainer.innerHTML = cart.map(product => {
	            totalPrice += product.price;
	            return `
	                <div class="product-card">
	                    <h5>${product.name}</h5>
	                    <p>Giá: ${product.price.toLocaleString('vi-VN', {style: 'currency', currency: 'VND'})}</p>
	                </div>
	            `;
	        }).join('');
	    }

	    // Cập nhật tổng tiền
	    totalPriceElement.innerText = totalPrice.toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});
	});

</script>
<body>
    <div class="cart-container">
        <h2 class="cart-header">Giỏ hàng của bạn</h2>

        <table class="table table-bordered cart-table">
            <thead class="thead-dark">
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>Hình ảnh</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tổng</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${cartProducts}">
                    <tr>
                        <td>${product.name}</td>
                        <td><img src="path/to/image.jpg" alt="Product" style="width: 80px; height: auto;"></td>
                        <td>${product.price} đ</td>
                        <td>
                            <input type="number" value="1" min="1" class="form-control" style="width: 80px; margin: auto;">
                        </td>
                        <td>${product.price} đ</td>
                        <td>
                            <button class="btn btn-danger btn-sm">Xóa</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Cart Container -->
        <div class="cart-container" id="cart-container">
            <!-- Giỏ hàng sẽ được hiển thị tại đây -->
        </div>

        <div class="cart-footer">
            <!-- Tổng cộng -->
            <h5>Tổng cộng: <span id="total-price">0 đ</span></h5>
            
            <button class="btn btn-secondary btn-back" onclick="location.href='productnv.jsp'">Quay lại mua sắm</button>
            <button class="btn btn-primary">Thanh toán</button>
        </div>
    </div>
</body>

</html>
