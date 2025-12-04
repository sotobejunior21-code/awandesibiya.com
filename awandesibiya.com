<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Awande Sibiya - Premium Pots</title>
    <link rel="icon" href="logo.png" type="image/png">
    <style>
        /* Reset and base */
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Arial', sans-serif; }
        body { background-color: #111; color: #fff; }

        /* Header */
        header {
            background: linear-gradient(90deg, #ff0000, #000);
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 50px;
        }
        header img { height: 60px; }
        nav a {
            color: #fff;
            text-decoration: none;
            margin-left: 20px;
            font-weight: bold;
            transition: color 0.3s;
        }
        nav a:hover { color: #ffcc00; }

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 100px 20px;
            background: url('hero-bg.jpg') no-repeat center center/cover;
            position: relative;
        }
        .hero::after {
            content: '';
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            background-color: rgba(0,0,0,0.6);
        }
        .hero-content {
            position: relative;
            z-index: 1;
            color: #fff;
        }
        .hero h1 { font-size: 48px; margin-bottom: 20px; color: #ff0000; }
        .hero p { font-size: 20px; margin-bottom: 40px; }
        .hero button {
            background-color: #ff0000;
            border: none;
            padding: 15px 30px;
            color: #fff;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }
        .hero button:hover { background-color: #ff6600; }

        /* Products Section */
        .products {
            padding: 80px 50px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }
        .product-card {
            background-color: #1a1a1a;
            border: 2px solid #ff0000;
            border-radius: 15px;
            overflow: hidden;
            transition: transform 0.3s, border-color 0.3s;
        }
        .product-card:hover { transform: scale(1.05); border-color: #ffcc00; }
        .product-card img { width: 100%; height: 250px; object-fit: cover; }
        .product-card h3 { padding: 15px; color: #ff0000; }
        .product-card p { padding: 0 15px 15px; color: #fff; }
        .product-card button {
            margin: 0 15px 15px;
            background-color: #ff0000;
            border: none;
            padding: 10px 20px;
            color: #fff;
            cursor: pointer;
        }
        .product-card button:hover { background-color: #ff6600; }

        /* Footer */
        footer {
            background-color: #000;
            padding: 40px 50px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            color: #fff;
        }
        .footer-section { margin-bottom: 20px; }
        .footer-section h4 { color: #ff0000; margin-bottom: 15px; }
        .footer-section a {
            display: block;
            color: #fff;
            text-decoration: none;
            margin-bottom: 10px;
            transition: color 0.3s;
        }
        .footer-section a:hover { color: #ffcc00; }
        .social-icons img { width: 35px; margin-right: 10px; }

        /* Responsive */
        @media (max-width: 768px) {
            header { flex-direction: column; text-align: center; }
            nav { margin-top: 10px; }
            .hero h1 { font-size: 36px; }
            .hero p { font-size: 18px; }
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <img src="logo.png" alt="Awande Sibiya Logo">
        <nav>
            <a href="#products">Products</a>
            <a href="#contact">Contact</a>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Awande Sibiya Pots</h1>
            <p>Premium handmade pots delivered with care.</p>
            <button onclick="document.getElementById('products').scrollIntoView({behavior:'smooth'})">Shop Now</button>
        </div>
    </section>

    <!-- Products Section -->
    <section class="products" id="products">
        <div class="product-card">
            <img src="pot1.jpg" alt="Pot 1">
            <h3>Red Ceramic Pot</h3>
            <p>Beautifully crafted red ceramic pot for home decor.</p>
            <button>Buy Now</button>
        </div>
        <div class="product-card">
            <img src="pot2.jpg" alt="Pot 2">
            <h3>Black Clay Pot</h3>
            <p>Handmade black clay pot, perfect for plants or decoration.</p>
            <button>Buy Now</button>
        </div>
        <div class="product-card">
            <img src="pot3.jpg" alt="Pot 3">
            <h3>Decorative Pot</h3>
            <p>Stylish decorative pot to enhance your living space.</p>
            <button>Buy Now</button>
        </div>
    </section>

    <!-- Footer -->
    <footer id="contact">
        <div class="footer-section">
            <h4>Contact Us</h4>
            <a href="https://www.instagram.com/Sotope_Junior" target="_blank">Instagram</a>
            <a href="https://www.tiktok.com/@Sotope_Junior" target="_blank">TikTok</a>
            <a href="https://wa.me/27720978122" target="_blank">WhatsApp: 072-097-8122</a>
        </div>
        <div class="footer-section">
            <h4>About Awande Sibiya</h4>
            <p>Premium handmade pots for your home and garden. Quality and style guaranteed.</p>
        </div>
        <div class="footer-section social-icons">
            <h4>Follow Us</h4>
            <a href="https://www.instagram.com/Sotope_Junior" target="_blank"><img src="instagram.png" alt="Instagram"></a>
            <a href="https://www.tiktok.com/@Sotope_Junior" target="_blank"><img src="tiktok.png" alt="TikTok"></a>
        </div>
    </footer>

</body>
</html># awandesibiya.com
Become a mentor on our website 
