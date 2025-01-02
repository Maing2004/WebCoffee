<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp" />

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
    }
    .category-list {
        list-style: none;
        padding: 0;
    }
    .category-list li {
        padding: 10px 15px;
        border-bottom: 1px solid #e0e0e0;
        cursor: pointer;
    }
    .category-list li:hover {
        background-color: #f0f0f0;
    }
    .product-card {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-between;
        text-align: center;
        padding: 15px;
        background: white;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        border: 1px solid #e0e0e0;
        border-radius: 8px;
        transition: transform 0.2s;
    }
    .product-card:hover {
        transform: scale(1.05);
    }
    .product-card img {
        width: 100%;
        height: auto;
        border-radius: 8px;
    }
    .product-card h5 {
        font-size: 16px;
        margin: 10px 0;
    }
    .product-card p {
        color: #888;
        margin: 5px 0;
    }
    .product-card .price {
        color: #28a745;
        font-weight: bold;
        font-size: 18px;
    }
    .product-card .original-price {
        color: #ccc;
        text-decoration: line-through;
    }
    .product-card .btn-container {
        display: flex;
        justify-content: space-between;
        width: 100%;
    }
    .product-card button {
        margin: 5px;
        padding: 8px 15px;
        border-radius: 5px;
        flex: 1;
    }
    .btn-outline-success,
    .btn-outline-primary {
        width: auto;
    }
</style>

<body>
    <div class="container my-4">
        <div class="row">
            <div class="col-md-3">
                <h4>Danh Mục Sản Phẩm</h4>
                <ul class="category-list">
                    <li onclick="filterCategory('Coffee')">Coffee</li>
                    <li onclick="filterCategory('Trà trái cây')">Trà trái cây</li>
                    <li onclick="filterCategory('Trà sữa')">Trà sữa</li>
                    <li onclick="filterCategory('Matcha - Chocolate')">Matcha - Chocolate</li>
                    <li onclick="filterCategory('Thức uống đá xay')">Thức uống đá xay</li>
                    <li onclick="filterCategory('Bánh & Snack')">Bánh & Snack</li>
                    <li onclick="filterCategory('Combo Trà & Bánh')">Combo Trà & Bánh</li>
                </ul>
            </div>


            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img2.jpg" alt="Product">
                            <h5>Sinh tố Mocha</h5>
                            <p>
                                <span class="original-price">65.000đ</span>
                                <span class="price">52.000đ</span>
                            </p>
                            <div class="btn-container">
                                <button onclick="addToCart('1', 'Sinh tố Mocha', 52000)" class="btn btn-outline-success">Thêm vào giỏ</button>

                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img4.jpg" alt="Product">
                            <h5>Cappuchino kem sữa</h5>
                            <p>
                                <span class="original-price">65.000đ</span>
                                <span class="price">52.000đ</span>
                            </p>
                            <div class="btn-container">
                                <button onclick="addToCart('2', 'Cappuchino kem sữa', 52000)" class="btn btn-outline-success">Thêm vào giỏ</button>

                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img1.jpg" alt="Product">
                            <h5>Cà phê sữa đá</h5>
                            <p>
                                <span class="original-price">65.000đ</span>
                                <span class="price">52.000đ</span>
                            </p>
                            <div class="btn-container">
                                <button onclick="addToCart('3', 'Cà phê sữa đá', 52000)" class="btn btn-outline-success">Thêm vào giỏ</button>

                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img5.jpg" alt="Product">
                            <h5>Kem matcha trái cây</h5>
                            <p>
                                <span class="original-price">65.000đ</span>
                                <span class="price">52.000đ</span>
                            </p>
                            <div class="btn-container">
                                 <button onclick="addToCart('4', 'Kem matcha trái cây', 52000)" class="btn btn-outline-success">Thêm vào giỏ</button>

                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>
                    
                     <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img6.jpg" alt="Product">
                            <h5>Trà đen đá</h5>
                            <p>
                                <span class="original-price">40.000đ</span>
                                <span class="price">32.000đ</span>
                            </p>
                            <div class="btn-container">
                                 <button onclick="addToCart('5', 'Trà đen đá', 32000)" class="btn btn-outline-success">Thêm vào giỏ</button>
                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img7.jpg" alt="Product">
                            <h5>Trà trái cây mix</h5>
                            <p>
                                <span class="original-price">50.000đ</span>
                                <span class="price">40.000đ</span>
                            </p>
                            <div class="btn-container">
                                 <button onclick="addToCart('6', 'Trà trái cây mix', 40000)" class="btn btn-outline-success">Thêm vào giỏ</button>
                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img8.jpg" alt="Product">
                            <h5>Trà sữa bạc hà</h5>
                            <p>
                                <span class="original-price">60.000đ</span>
                                <span class="price">48.000đ</span>
                            </p>
                            <div class="btn-container">
                                 <button onclick="addToCart('7', 'Trà sữa bạc hà', 48000)" class="btn btn-outline-success">Thêm vào giỏ</button>
                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img9.jpg" alt="Product">
                            <h5>Bánh trứng chà bông</h5>
                            <p>
                                <span class="original-price">35.000đ</span>
                                <span class="price">28.000đ</span>
                            </p>
                            <div class="btn-container">
                                <button onclick="addToCart('8', 'Bánh trứng chà bông', 28000)" class="btn btn-outline-success">Thêm vào giỏ</button>
                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img3.jpg" alt="Product">
                            <h5>Bánh tiramisu</h5>
                            <p>
                                <span class="original-price">75.000đ</span>
                                <span class="price">60.000đ</span>
                            </p>
                            <div class="btn-container">
                                <button onclick="addToCart('9', 'Bánh tiramisu', 60000)" class="btn btn-outline-success">Thêm vào giỏ</button>
                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img10.jpg" alt="Product">
                            <h5>Bánh tiramisu</h5>
                            <p>
                                <span class="original-price">75.000đ</span>
                                <span class="price">60.000đ</span>
                            </p>
                            <div class="btn-container">
                                <button onclick="addToCart('9', 'Bánh tiramisu', 60000)" class="btn btn-outline-success">Thêm vào giỏ</button>
                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img11.jpg" alt="Product">
                            <h5>Bánh tiramisu</h5>
                            <p>
                                <span class="original-price">75.000đ</span>
                                <span class="price">60.000đ</span>
                            </p>
                            <div class="btn-container">
                               <button onclick="addToCart('9', 'Bánh tiramisu', 60000)" class="btn btn-outline-success">Thêm vào giỏ</button>
                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img12.jpg" alt="Product">
                            <h5>Popcorn latte</h5>
                            <p>
                                <span class="original-price">75.000đ</span>
                                <span class="price">60.000đ</span>
                            </p>
                            <div class="btn-container">
                                <button onclick="addToCart('10', 'Popcorn latte', 60000)" class="btn btn-outline-success">Thêm vào giỏ</button>
                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="image/img13.jpg" alt="Product">
                            <h5>Popcorn latte</h5>
                            <p>
                                <span class="original-price">75.000đ</span>
                                <span class="price">60.000đ</span>
                            </p>
                            <div class="btn-container">
                                <button onclick="addToCart('10', 'Popcorn latte', 60000)" class="btn btn-outline-success">Thêm vào giỏ</button>
                                <button class="btn btn-outline-primary">Xem chi tiết</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <script>
        let cart = JSON.parse(localStorage.getItem('cart')) || [];

        function addToCart(productId, productName, productPrice) {
            const product = { id: productId, name: productName, price: productPrice };
            cart.push(product);
            localStorage.setItem('cart', JSON.stringify(cart));
            updateCartCount();
            alert(`\u0110\u00e3 th\u00eam ${productName} v\u00e0o gi\u1ecf h\u00e0ng.`);
        }

        function updateCartCount() {
            const cartCount = cart.length;
            document.getElementById('cart-count').innerText = cartCount;
        }

        function filterCategory(category) {
            alert(`Filter by category: ${category}`);
            // Add logic to dynamically filter products
        }

        // Example of dynamically loading products
        const products = [
            { id: '1', name: 'Sinh tố Mocha', price: 52000, image: 'image/img2.jpg', originalPrice: 65000 },
            { id: '2', name: 'Cappuchino kem sữa', price: 52000, image: 'image/img4.jpg', originalPrice: 65000 },
            // Add more products here
        ];

        function loadProducts() {
            const productList = document.getElementById('product-list');
            productList.innerHTML = '';
            products.forEach(product => {
                productList.innerHTML += `
                    <div class="col-md-4 mb-4">
                        <div class="product-card">
                            <img src="${product.image}" alt="${product.name}">
                            <h5>${product.name}</h5>
                            <p>
                                <span class="original-price">${product.originalPrice.toLocaleString()}\u0111</span>
                                <span class="price">${product.price.toLocaleString()}\u0111</span>
                            </p>
                            <div class="btn-container">
                                <button onclick="addToCart('${product.id}', '${product.name}', ${product.price})" class="btn btn-outline-success">Th\u00eam v\u00e0o gi\u1ecf</button>
                                <button class="btn btn-outline-primary">Xem chi ti\u1ebft</button>
                            </div>
                        </div>
                    </div>`;
            });
        }

        loadProducts();
    </script>
</body>