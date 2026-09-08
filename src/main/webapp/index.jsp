<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop · friendly commerce</title>
    <!-- Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Inter', system-ui, sans-serif;
            background: #f7f6f3;
            color: #1f1f2a;
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }
        a {
            text-decoration: none;
            color: inherit;
        }
        button {
            cursor: pointer;
            border: none;
            background: none;
            font-family: inherit;
        }
        img {
            max-width: 100%;
            display: block;
        }
        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ----- buttons ----- */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 15px;
            border: 2px solid transparent;
            transition: 0.2s ease;
        }
        .btn-primary {
            background: #d96c4a;
            color: #fff;
            border-color: #d96c4a;
        }
        .btn-primary:hover {
            background: #bf5a3a;
            border-color: #bf5a3a;
            transform: scale(1.02);
            box-shadow: 0 8px 20px rgba(217, 108, 74, 0.25);
        }
        .btn-outline {
            background: transparent;
            color: #1f1f2a;
            border-color: #d0cfcc;
        }
        .btn-outline:hover {
            background: #1f1f2a;
            color: #fff;
            border-color: #1f1f2a;
        }
        .btn-ghost-light {
            background: rgba(255, 255, 255, 0.12);
            color: #fff;
            border-color: rgba(255, 255, 255, 0.25);
        }
        .btn-ghost-light:hover {
            background: rgba(255, 255, 255, 0.22);
            border-color: rgba(255, 255, 255, 0.4);
        }
        .btn-sm {
            padding: 8px 16px;
            font-size: 13px;
        }

        /* ----- header ----- */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.88);
            backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.03);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 0;
            gap: 12px;
            flex-wrap: wrap;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 800;
            font-size: 22px;
            letter-spacing: -0.3px;
        }
        .brand i {
            color: #d96c4a;
            font-size: 24px;
        }
        .brand span {
            color: #1f1f2a;
        }
        .brand .accent {
            color: #d96c4a;
        }

        .nav-links {
            display: flex;
            gap: 4px;
            list-style: none;
        }
        .nav-links a {
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 14px;
            color: #5e5e6e;
            transition: 0.15s;
        }
        .nav-links a:hover,
        .nav-links a.active {
            background: #edece8;
            color: #1f1f2a;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .icon-btn {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 18px;
            color: #4f4f60;
            transition: 0.15s;
        }
        .icon-btn:hover {
            background: #edece8;
            color: #1f1f2a;
        }
        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: #d96c4a;
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }

        .search-box {
            display: flex;
            align-items: center;
            background: #f0efeb;
            border-radius: 60px;
            padding: 2px 4px 2px 18px;
            border: 2px solid transparent;
            transition: 0.15s;
            min-width: 180px;
        }
        .search-box:focus-within {
            border-color: #d96c4a;
            background: #fff;
            box-shadow: 0 0 0 4px rgba(217, 108, 74, 0.08);
        }
        .search-box input {
            border: 0;
            background: transparent;
            padding: 10px 0;
            font-size: 14px;
            width: 100%;
            outline: none;
        }
        .search-box button {
            padding: 8px 12px;
            color: #7a7a8a;
            font-size: 15px;
        }
        .search-box button:hover {
            color: #d96c4a;
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: #edece8;
            font-size: 20px;
            color: #1f1f2a;
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid rgba(0, 0, 0, 0.03);
            padding: 16px 0 24px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        #mobileMenu ul a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 12px 16px;
            border-radius: 12px;
            font-weight: 500;
            color: #1f1f2a;
        }
        #mobileMenu ul a:hover {
            background: #f3f2ef;
        }

        /* ----- hero ----- */
        .hero {
            position: relative;
            background: linear-gradient(145deg, #171724 0%, #2d2d42 100%);
            border-radius: 24px;
            margin: 20px 0 0;
            padding: 56px 0;
            overflow: hidden;
            min-height: 360px;
            display: flex;
            align-items: center;
        }
        .hero::after {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.2;
            z-index: 0;
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero .badge {
            display: inline-block;
            background: rgba(217, 108, 74, 0.18);
            color: #f0b09a;
            padding: 4px 18px;
            border-radius: 40px;
            font-weight: 600;
            font-size: 13px;
            margin-bottom: 14px;
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 44px;
            font-weight: 700;
            color: #fff;
            line-height: 1.1;
            max-width: 560px;
            margin-bottom: 12px;
        }
        .hero p {
            color: rgba(255, 255, 255, 0.75);
            font-size: 17px;
            max-width: 460px;
            margin-bottom: 24px;
        }
        .hero .actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* ----- sections ----- */
        .section {
            padding: 48px 0;
        }
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            flex-wrap: wrap;
            gap: 12px;
            margin-bottom: 28px;
        }
        .section-header h2 {
            font-size: 26px;
            font-weight: 700;
            letter-spacing: -0.2px;
        }
        .section-header p {
            color: #6e6e7e;
            font-size: 15px;
            margin-top: 2px;
        }
        .view-link {
            font-weight: 600;
            color: #d96c4a;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            transition: 0.2s;
            font-size: 14px;
        }
        .view-link:hover {
            gap: 12px;
            color: #bf5a3a;
        }

        /* categories */
        .cat-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: #fff;
            border-radius: 20px;
            padding: 20px 12px;
            text-align: center;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
            transition: 0.2s;
            border: 2px solid transparent;
        }
        .cat-card:hover {
            transform: translateY(-4px);
            border-color: #f0d6cb;
            box-shadow: 0 12px 32px rgba(0, 0, 0, 0.05);
        }
        .cat-card .icon {
            width: 52px;
            height: 52px;
            background: #f5edea;
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 22px;
            color: #d96c4a;
            margin: 0 auto 10px;
            transition: 0.15s;
        }
        .cat-card:hover .icon {
            background: #d96c4a;
            color: #fff;
        }
        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
        }
        .cat-card .count {
            font-size: 13px;
            color: #8a8a9a;
        }

        /* products */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .product-card {
            background: #fff;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
            transition: 0.2s;
            border: 2px solid transparent;
            display: flex;
            flex-direction: column;
        }
        .product-card:hover {
            transform: translateY(-6px);
            border-color: #f0d6cb;
            box-shadow: 0 16px 40px rgba(0, 0, 0, 0.06);
        }
        .product-card .img-wrap {
            background: #f4f2ee;
            aspect-ratio: 1/1;
            position: relative;
            overflow: hidden;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.3s;
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.03);
        }
        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: #d96c4a;
            color: #fff;
            padding: 2px 14px;
            border-radius: 40px;
            font-size: 11px;
            font-weight: 700;
        }
        .product-card .badge.sale {
            background: #e6c86a;
            color: #1f1f2a;
        }
        .product-card .wish {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 34px;
            height: 34px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(4px);
            display: grid;
            place-items: center;
            color: #6e6e7e;
            transition: 0.15s;
        }
        .product-card .wish:hover {
            background: #fff;
            color: #d96c4a;
        }
        .product-card .body {
            padding: 14px 16px 10px;
            flex: 1;
        }
        .product-card .body .category {
            font-size: 12px;
            text-transform: uppercase;
            color: #a0a0b0;
            letter-spacing: 0.3px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 15px;
            font-weight: 600;
            margin: 4px 0 2px;
            line-height: 1.3;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin: 6px 0 4px;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 18px;
        }
        .product-card .body .old {
            color: #a0a0b0;
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .body .rating {
            color: #f5b342;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 4px;
        }
        .product-card .body .rating span {
            color: #6e6e7e;
            font-size: 13px;
        }
        .product-card .footer {
            padding: 0 16px 16px;
        }
        .product-card .footer .add-btn {
            width: 100%;
            padding: 10px;
            border-radius: 60px;
            background: #1f1f2a;
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            transition: 0.15s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .product-card .footer .add-btn:hover {
            background: #d96c4a;
        }
        .product-card .footer .add-btn.added {
            background: #3a8f7a;
        }

        /* deal */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: #fff;
            border-radius: 24px;
            overflow: hidden;
            box-shadow: 0 4px 24px rgba(0, 0, 0, 0.03);
        }
        .deal-wrap .deal-img {
            flex: 0 0 46%;
            background: #eae8e2;
            min-height: 280px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            padding: 36px 40px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            background: #e6c86a;
            padding: 4px 16px;
            border-radius: 40px;
            font-weight: 700;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 0.3px;
            align-self: flex-start;
            margin-bottom: 10px;
            color: #1f1f2a;
        }
        .deal-wrap .deal-content h3 {
            font-size: 26px;
            font-weight: 700;
        }
        .deal-wrap .deal-content .desc {
            color: #5e5e6e;
            margin: 4px 0 12px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 30px;
            font-weight: 800;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 18px;
            font-weight: 400;
            color: #a0a0b0;
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            color: #5e5e6e;
            margin: 4px 0 14px;
        }
        .deal-wrap .deal-content .stock strong {
            color: #d96c4a;
        }
        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 8px 0 18px;
        }
        .timer-box {
            background: #1f1f2a;
            color: #fff;
            padding: 8px 14px;
            border-radius: 12px;
            min-width: 60px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 22px;
            font-weight: 700;
        }
        .timer-box .label {
            font-size: 10px;
            opacity: 0.6;
            text-transform: uppercase;
        }

        /* testimonials */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 6px 2px 18px;
            scroll-snap-type: x mandatory;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: #e0d6cb;
            border-radius: 40px;
        }
        .testimonial-card {
            flex: 0 0 320px;
            background: #fff;
            border-radius: 20px;
            padding: 24px 26px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
            scroll-snap-align: start;
        }
        .testimonial-card .stars {
            color: #f5b342;
            letter-spacing: 2px;
            margin-bottom: 8px;
        }
        .testimonial-card blockquote {
            font-style: italic;
            font-size: 15px;
            color: #1f1f2a;
            line-height: 1.5;
            margin-bottom: 14px;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
            background: #eae8e2;
        }
        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 14px;
        }
        .testimonial-card .author .role {
            font-size: 13px;
            color: #7a7a8a;
        }

        /* newsletter */
        .newsletter {
            background: linear-gradient(135deg, #1f1f2a 0%, #2d2d42 100%);
            border-radius: 24px;
            padding: 40px 48px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 24px;
            color: #fff;
        }
        .newsletter .text h3 {
            font-size: 24px;
            font-weight: 700;
        }
        .newsletter .text p {
            opacity: 0.7;
            font-size: 15px;
        }
        .newsletter form {
            display: flex;
            gap: 10px;
            flex: 1;
            max-width: 480px;
            flex-wrap: wrap;
        }
        .newsletter form input {
            flex: 1;
            min-width: 180px;
            padding: 14px 20px;
            border-radius: 60px;
            border: 0;
            background: rgba(255, 255, 255, 0.08);
            color: #fff;
            font-size: 15px;
            outline: 2px solid transparent;
            transition: 0.15s;
        }
        .newsletter form input::placeholder {
            color: rgba(255, 255, 255, 0.4);
        }
        .newsletter form input:focus {
            outline-color: #d96c4a;
            background: rgba(255, 255, 255, 0.15);
        }
        .newsletter form .btn {
            background: #d96c4a;
            color: #fff;
            border-color: #d96c4a;
            padding: 14px 28px;
        }
        .newsletter form .btn:hover {
            background: #bf5a3a;
            border-color: #bf5a3a;
        }
        #newsletterMsg {
            width: 100%;
            margin-top: 8px;
            font-size: 14px;
            opacity: 0.9;
        }

        /* footer */
        footer {
            padding: 40px 0 24px;
            border-top: 1px solid #e6e4df;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 32px;
            margin-bottom: 28px;
        }
        .footer-grid .brand-col .brand {
            font-size: 20px;
            margin-bottom: 6px;
        }
        .footer-grid .brand-col p {
            color: #5e5e6e;
            font-size: 14px;
            max-width: 280px;
            line-height: 1.6;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 8px;
            margin-top: 12px;
        }
        .footer-grid .brand-col .socials a {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: #edece8;
            display: grid;
            place-items: center;
            color: #4f4f60;
            transition: 0.15s;
        }
        .footer-grid .brand-col .socials a:hover {
            background: #d96c4a;
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 14px;
            margin-bottom: 12px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .footer-grid .col ul a {
            color: #5e5e6e;
            font-size: 14px;
            transition: 0.15s;
        }
        .footer-grid .col ul a:hover {
            color: #d96c4a;
        }
        .footer-bottom {
            text-align: center;
            color: #8a8a9a;
            font-size: 13px;
            padding-top: 16px;
            border-top: 1px solid #e6e4df;
        }

        /* responsive */
        @media (max-width: 1100px) {
            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .cat-grid {
                grid-template-columns: repeat(3, 1fr);
            }
        }
        @media (max-width: 900px) {
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 220px;
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }
        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .product-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 14px;
            }
            .cat-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }
            .hero h1 {
                font-size: 32px;
            }
            .hero {
                padding: 40px 0;
                min-height: 280px;
            }
            .section {
                padding: 32px 0;
            }
            .search-box {
                min-width: 120px;
            }
            .newsletter {
                padding: 28px 20px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter form {
                max-width: 100%;
            }
            .deal-wrap .deal-content {
                padding: 24px 22px;
            }
            .header-inner {
                flex-wrap: nowrap;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 18px;
            }
        }
        @media (max-width: 480px) {
            .product-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .cat-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .container {
                padding: 0 14px;
            }
            .hero h1 {
                font-size: 26px;
            }
            .brand {
                font-size: 18px;
            }
            .timer-box {
                min-width: 48px;
                padding: 6px 8px;
            }
            .timer-box .num {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:8px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
            </div>
            <ul class="nav-links" id="mainNav">
                <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
            </ul>
            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-box">
                    <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
                <div class="header-actions">
                    <button class="icon-btn" aria-label="account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i></button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <!-- hero -->
        <section class="hero">
            <div class="container">
                <div class="badge"><i class="fas fa-sparkles"></i> spring collection</div>
                <h1>Upgrade your <br>everyday style</h1>
                <p>Carefully curated picks, free shipping on first order. Discover timeless quality.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
                    <button class="btn btn-ghost-light" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
                </div>
            </div>
        </section>

        <!-- categories -->
        <section class="section" id="categories">
            <div class="container">
                <div class="section-header">
                    <div><h2>Shop by category</h2><p>Find what speaks to you</p></div>
                    <a href="#" class="view-link">All categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="cat-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- products -->
        <section class="section" id="products">
            <div class="container">
                <div class="section-header">
                    <div><h2>Trending now</h2><p>Popular picks our community loves</p></div>
                    <a href="#" class="view-link">View all <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="product-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- deal -->
        <section class="section" id="deals">
            <div class="container">
                <div class="section-header"><div><h2>⚡ Flash deal</h2><p>Hurry, limited stock</p></div></div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> limited offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Supercharged by the M2 chip — thin, light, and pro‑ready.</p>
                        <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
                        <p class="stock">Only <strong>12</strong> items left — grab yours</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">days</div></div>
                            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">hrs</div></div>
                            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">min</div></div>
                            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">sec</div></div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- testimonials -->
        <section class="section" id="testimonials">
            <div class="container">
                <div class="section-header"><div><h2>What customers say</h2><p>Real stories, real smiles</p></div></div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- newsletter -->
        <section class="section">
            <div class="container">
                <div class="newsletter">
                    <div class="text">
                        <h3>Stay in the loop</h3>
                        <p>New arrivals, exclusive offers, and insider perks</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Your email" aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></div>
                    <p>Modern e‑commerce with a human touch. Quality products, seamless experience.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul></div>
                <div class="col"><h5>Support</h5><ul><li><a href="#">Help</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
                <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
            </div>
            <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
        </div>
    </footer>

    <script>
        (function() {
            // ----- DATA -----
            const CATEGORIES = [
                { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
                { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
                { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
                { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
                { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
                { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
            ];

            const PRODUCTS = [
                { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                    img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                    category: 'Smartphones' },
                { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                    img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                    category: 'Laptops' },
                { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214,
                    badge: 'Sale',
                    img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                    category: 'Accessories' },
                { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                    img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                    category: 'Footwear' },
                { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                    img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                    category: 'Gadgets' },
                { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                    img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                    category: 'Accessories' },
                { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                    img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                    category: 'Accessories' },
                { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                    img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                    category: 'Gadgets' }
            ];

            const TESTIMONIALS = [
                { name: 'Ava Martin', role: 'Verified buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
                    text: 'Fast shipping and excellent support. The product exceeded my expectations!', stars: 5 },
                { name: 'Michael Lee', role: 'Frequent shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
                    text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
                { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
                    text: 'Love the quality and packaging. Everything arrived perfect.', stars: 5 },
                { name: 'James Wilson', role: 'Tech enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
                    text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
            ];

            // ----- STATE -----
            let cartCount = 0;

            // ----- DOM REFS -----
            const categoriesGrid = document.getElementById('categoriesGrid');
            const productsGrid = document.getElementById('productsGrid');
            const cartCountEl = document.getElementById('cartCount');
            const searchInput = document.getElementById('searchInput');
            const searchBtn = document.getElementById('searchBtn');
            const mobileToggle = document.getElementById('mobileToggle');
            const mobileMenu = document.getElementById('mobileMenu');
            const newsletterForm = document.getElementById('newsletterForm');
            const newsletterEmail = document.getElementById('newsletterEmail');
            const newsletterMsg = document.getElementById('newsletterMsg');
            const testimonialsList = document.getElementById('testimonialsList');

            // ----- RENDER -----
            function renderCategories() {
                categoriesGrid.innerHTML = '';
                CATEGORIES.forEach(c => {
                    const el = document.createElement('div');
                    el.className = 'cat-card';
                    el.innerHTML = `
                        <div class="icon"><i class="fas ${c.icon}"></i></div>
                        <h4>${c.name}</h4>
                        <div class="count">${c.count} items</div>
                    `;
                    el.addEventListener('click', () => {
                        searchInput.value = c.name;
                        filterProducts(c.name);
                        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                    });
                    categoriesGrid.appendChild(el);
                });
            }

            function renderProducts(list) {
                productsGrid.innerHTML = '';
                if (!list.length) {
                    productsGrid.innerHTML =
                        `<p style="grid-column:1/-1;text-align:center;padding:30px;color:#6e6e7e;">No products found.</p>`;
                    return;
                }
                list.forEach(p => {
                    const el = document.createElement('div');
                    el.className = 'product-card';
                    const badgeHtml = p.badge ? `<span class="badge ${p.badge === 'Sale' ? 'sale' : ''}">${p.badge}</span>` :
                        '';
                    const oldPriceHtml = p.oldPrice ? `<span class="old">$${p.oldPrice.toLocaleString()}</span>` : '';
                    const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                    el.innerHTML = `
                        <div class="img-wrap">
                            <img src="${p.img}" alt="${p.title}" loading="lazy">
                            ${badgeHtml}
                            <button class="wish" aria-label="wishlist"><i class="far fa-heart"></i></button>
                        </div>
                        <div class="body">
                            <div class="category">${p.category}</div>
                            <h5>${p.title}</h5>
                            <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${oldPriceHtml}</div>
                            <div class="rating">${stars} <span>(${p.reviews})</span></div>
                        </div>
                        <div class="footer">
                            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                        </div>
                    `;
                    productsGrid.appendChild(el);
                });
                productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                    btn.addEventListener('click', function(e) {
                        e.stopPropagation();
                        const id = Number(this.dataset.id);
                        addToCart(id, this);
                    });
                });
            }

            function renderTestimonials() {
                testimonialsList.innerHTML = '';
                TESTIMONIALS.forEach(t => {
                    const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                    const el = document.createElement('div');
                    el.className = 'testimonial-card';
                    el.innerHTML = `
                        <div class="stars">${stars}</div>
                        <blockquote>“${t.text}”</blockquote>
                        <div class="author">
                            <img class="avatar" src="${t.avatar}" alt="${t.name}" loading="lazy">
                            <div><div class="name">${t.name}</div><div class="role">${t.role}</div></div>
                        </div>
                    `;
                    testimonialsList.appendChild(el);
                });
            }

            // ----- HELPERS -----
            function updateCartCount() {
                cartCountEl.textContent = cartCount;
                cartCountEl.style.transform = 'scale(1.25)';
                setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
            }

            function addToCart(productId, btnEl) {
                const p = PRODUCTS.find(x => x.id === productId);
                if (!p) return;
                cartCount++;
                updateCartCount();
                if (btnEl) {
                    const orig = btnEl.innerHTML;
                    btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                    btnEl.classList.add('added');
                    setTimeout(() => {
                        btnEl.innerHTML = orig;
                        btnEl.classList.remove('added');
                    }, 1500);
                }
                const cartBtn = document.getElementById('cartBtn');
                cartBtn.style.color = '#d96c4a';
                setTimeout(() => cartBtn.style.color = '', 400);
            }

            function filterProducts(query) {
                const q = String(query || '').trim().toLowerCase();
                if (!q) { renderProducts(PRODUCTS); return; }
                const filtered = PRODUCTS.filter(p =>
                    p.title.toLowerCase().includes(q) ||
                    p.category.toLowerCase().includes(q)
                );
                renderProducts(filtered);
            }

            // ----- DEAL TIMER -----
            (function() {
                const now = new Date();
                const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

                function tick() {
                    const diff = target - new Date();
                    if (diff <= 0) {
                        document.getElementById('dealDays').textContent = '0';
                        document.getElementById('dealHours').textContent = '00';
                        document.getElementById('dealMinutes').textContent = '00';
                        document.getElementById('dealSeconds').textContent = '00';
                        return;
                    }
                    document.getElementById('dealDays').textContent = Math.floor(diff / (24 * 3600 * 1000));
                    document.getElementById('dealHours').textContent = String(Math.floor((diff % (24 * 3600 * 1000)) / (
                        3600 * 1000))).padStart(2, '0');
                    document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600 * 1000)) / (
                        60 * 1000))).padStart(2, '0');
                    document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60 * 1000)) / 1000))
                        .padStart(2, '0');
                }
                tick();
                setInterval(tick, 1000);
            })();

            // ----- EVENTS -----
            searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
            searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

            mobileToggle.addEventListener('click', () => {
                const isOpen = mobileMenu.style.display === 'block';
                mobileMenu.style.display = isOpen ? 'none' : 'block';
                mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
            });
            mobileMenu.querySelectorAll('a').forEach(link => {
                link.addEventListener('click', () => {
                    mobileMenu.style.display = 'none';
                    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
                });
            });

            document.getElementById('shopNow').addEventListener('click', () => {
                document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
            });
            document.getElementById('exploreDeals').addEventListener('click', () => {
                document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
            });

            document.getElementById('buyDeal').addEventListener('click', function() {
                cartCount++;
                updateCartCount();
                const orig = this.innerHTML;
                this.innerHTML = '<i class="fas fa-check"></i> Added!';
                this.style.background = '#3a8f7a';
                setTimeout(() => {
                    this.innerHTML = orig;
                    this.style.background = '';
                }, 1600);
            });

            document.getElementById('cartBtn').addEventListener('click', () => {
                alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
            });

            newsletterForm.addEventListener('submit', (e) => {
                e.preventDefault();
                const email = newsletterEmail.value.trim();
                if (!email || !email.includes('@')) {
                    newsletterMsg.textContent = 'Please enter a valid email.';
                    newsletterMsg.style.color = '#f7b3b3';
                    newsletterMsg.style.display = 'block';
                    return;
                }
                newsletterMsg.textContent = '🎉 You’re in! Thanks for subscribing.';
                newsletterMsg.style.color = '#b3e6d3';
                newsletterMsg.style.display = 'block';
                newsletterEmail.value = '';
                setTimeout(() => newsletterMsg.style.display = 'none', 3500);
            });

            document.getElementById('year').textContent = new Date().getFullYear();

            // close mobile menu on resize to desktop
            window.addEventListener('resize', () => {
                if (window.innerWidth > 768) {
                    mobileMenu.style.display = 'none';
                    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
                }
            });

            // ----- INIT -----
            renderCategories();
            renderProducts(PRODUCTS);
            renderTestimonials();
            updateCartCount();
        })();
    </script>
</body>
</html>
