<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop · Friendly & Modern</title>
    <!-- Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        /* ===== RESET & BASE ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Plus Jakarta Sans', 'Inter', system-ui, sans-serif;
            background: #f5f7fb;
            color: #1a1a2e;
            line-height: 1.6;
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
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* ===== BUTTONS ===== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 14px 32px;
            border-radius: 12px;
            font-weight: 600;
            font-size: 15px;
            transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
            border: none;
        }
        .btn-primary {
            background: #6366f1;
            color: #fff;
            box-shadow: 0 4px 14px rgba(99, 102, 241, 0.35);
        }
        .btn-primary:hover {
            background: #4f46e5;
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(99, 102, 241, 0.45);
        }
        .btn-secondary {
            background: #1e293b;
            color: #fff;
        }
        .btn-secondary:hover {
            background: #0f172a;
            transform: translateY(-2px);
        }
        .btn-outline {
            background: transparent;
            color: #1e293b;
            border: 2px solid #e2e8f0;
        }
        .btn-outline:hover {
            background: #1e293b;
            color: #fff;
            border-color: #1e293b;
        }
        .btn-soft {
            background: #eef2ff;
            color: #6366f1;
        }
        .btn-soft:hover {
            background: #6366f1;
            color: #fff;
        }
        .btn-success {
            background: #10b981;
            color: #fff;
        }
        .btn-success:hover {
            background: #059669;
        }

        /* ===== HEADER ===== */
        header {
            background: #fff;
            border-bottom: 1px solid #f1f5f9;
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.02);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 14px 0;
            gap: 16px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 24px;
            color: #1a1a2e;
        }
        .brand i {
            color: #6366f1;
            font-size: 28px;
            background: #eef2ff;
            padding: 8px;
            border-radius: 12px;
        }
        .brand span {
            color: #6366f1;
        }

        .nav-links {
            display: flex;
            gap: 4px;
            list-style: none;
        }
        .nav-links a {
            padding: 10px 20px;
            border-radius: 10px;
            font-weight: 500;
            font-size: 14px;
            color: #64748b;
            transition: all 0.2s;
        }
        .nav-links a:hover,
        .nav-links a.active {
            background: #eef2ff;
            color: #6366f1;
        }
        .nav-links a i {
            margin-right: 6px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .icon-btn {
            width: 44px;
            height: 44px;
            border-radius: 12px;
            display: grid;
            place-items: center;
            font-size: 18px;
            color: #64748b;
            transition: all 0.2s;
            background: transparent;
        }
        .icon-btn:hover {
            background: #eef2ff;
            color: #6366f1;
        }
        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: #ef4444;
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }

        .search-box {
            display: flex;
            align-items: center;
            background: #f1f5f9;
            border-radius: 12px;
            padding: 4px 4px 4px 18px;
            border: 2px solid transparent;
            transition: all 0.2s;
            min-width: 200px;
        }
        .search-box:focus-within {
            border-color: #6366f1;
            background: #fff;
            box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.08);
        }
        .search-box input {
            border: 0;
            background: transparent;
            padding: 10px 0;
            font-size: 14px;
            width: 100%;
            outline: none;
            color: #1a1a2e;
        }
        .search-box input::placeholder {
            color: #94a3b8;
        }
        .search-box button {
            padding: 8px 14px;
            border-radius: 8px;
            background: #6366f1;
            color: #fff;
            font-size: 14px;
            transition: all 0.2s;
        }
        .search-box button:hover {
            background: #4f46e5;
        }

        .mobile-toggle {
            display: none;
            width: 44px;
            height: 44px;
            border-radius: 12px;
            background: #f1f5f9;
            font-size: 20px;
            color: #1a1a2e;
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid #f1f5f9;
            padding: 20px 0;
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
            padding: 14px 20px;
            border-radius: 10px;
            font-weight: 500;
            color: #1a1a2e;
            transition: all 0.2s;
        }
        #mobileMenu ul a:hover {
            background: #eef2ff;
            color: #6366f1;
        }
        #mobileMenu ul a i {
            width: 24px;
            color: #64748b;
        }

        /* ===== HERO ===== */
        .hero {
            background: linear-gradient(135deg, #1e1b4b 0%, #312e81 100%);
            border-radius: 24px;
            margin: 24px 0 0;
            padding: 64px 0;
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover;
            opacity: 0.12;
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero .badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(99, 102, 241, 0.2);
            color: #a5b4fc;
            padding: 6px 20px;
            border-radius: 100px;
            font-weight: 600;
            font-size: 13px;
            margin-bottom: 16px;
        }
        .hero h1 {
            font-size: 52px;
            font-weight: 800;
            color: #fff;
            line-height: 1.1;
            max-width: 600px;
            margin-bottom: 16px;
        }
        .hero h1 span {
            color: #a5b4fc;
        }
        .hero p {
            color: rgba(255, 255, 255, 0.75);
            font-size: 18px;
            max-width: 480px;
            margin-bottom: 28px;
            line-height: 1.7;
        }
        .hero .actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* ===== SECTION ===== */
        .section {
            padding: 56px 0;
        }
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            flex-wrap: wrap;
            gap: 16px;
            margin-bottom: 32px;
        }
        .section-header h2 {
            font-size: 28px;
            font-weight: 700;
            color: #1a1a2e;
        }
        .section-header p {
            color: #64748b;
            font-size: 15px;
            margin-top: 4px;
        }
        .section-header .view-all {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            color: #6366f1;
            font-weight: 600;
            font-size: 14px;
            transition: all 0.2s;
        }
        .section-header .view-all:hover {
            gap: 12px;
            color: #4f46e5;
        }

        /* ===== CATEGORIES ===== */
        .cat-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: #fff;
            border-radius: 16px;
            padding: 24px 16px;
            text-align: center;
            transition: all 0.25s;
            border: 2px solid transparent;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.04);
        }
        .cat-card:hover {
            transform: translateY(-4px);
            border-color: #6366f1;
            box-shadow: 0 8px 24px rgba(99, 102, 241, 0.08);
        }
        .cat-card .icon {
            width: 56px;
            height: 56px;
            background: #eef2ff;
            border-radius: 14px;
            display: grid;
            place-items: center;
            font-size: 24px;
            color: #6366f1;
            margin: 0 auto 12px;
            transition: all 0.2s;
        }
        .cat-card:hover .icon {
            background: #6366f1;
            color: #fff;
        }
        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
            color: #1a1a2e;
        }
        .cat-card .count {
            font-size: 13px;
            color: #94a3b8;
            margin-top: 2px;
        }

        /* ===== PRODUCTS ===== */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .product-card {
            background: #fff;
            border-radius: 16px;
            overflow: hidden;
            transition: all 0.3s;
            border: 2px solid transparent;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.04);
        }
        .product-card:hover {
            transform: translateY(-6px);
            border-color: #6366f1;
            box-shadow: 0 12px 40px rgba(99, 102, 241, 0.08);
        }
        .product-card .img-wrap {
            position: relative;
            background: #f8fafc;
            aspect-ratio: 1/1;
            overflow: hidden;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s;
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.05);
        }
        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 4px 14px;
            border-radius: 100px;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        .product-card .badge.new {
            background: #6366f1;
            color: #fff;
        }
        .product-card .badge.sale {
            background: #ef4444;
            color: #fff;
        }
        .product-card .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(4px);
            display: grid;
            place-items: center;
            color: #94a3b8;
            transition: all 0.2s;
            border: 1px solid rgba(0, 0, 0, 0.04);
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: #ef4444;
            transform: scale(1.1);
        }
        .product-card .body {
            padding: 16px 18px 12px;
        }
        .product-card .body .category {
            font-size: 12px;
            color: #94a3b8;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 16px;
            font-weight: 600;
            color: #1a1a2e;
            margin: 4px 0 6px;
            line-height: 1.3;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin: 6px 0 4px;
        }
        .product-card .body .price {
            font-size: 20px;
            font-weight: 700;
            color: #1a1a2e;
        }
        .product-card .body .old-price {
            color: #94a3b8;
            text-decoration: line-through;
            font-size: 15px;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 6px;
            color: #f59e0b;
            font-size: 14px;
        }
        .product-card .body .rating span {
            color: #94a3b8;
            font-size: 13px;
        }
        .product-card .footer {
            padding: 0 18px 18px;
        }
        .product-card .footer .add-btn {
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            background: #f1f5f9;
            color: #1a1a2e;
            font-weight: 600;
            font-size: 14px;
            transition: all 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .product-card .footer .add-btn:hover {
            background: #6366f1;
            color: #fff;
        }
        .product-card .footer .add-btn.added {
            background: #10b981;
            color: #fff;
        }

        /* ===== DEAL SECTION ===== */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: #fff;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.04);
        }
        .deal-wrap .deal-img {
            flex: 0 0 44%;
            background: #f1f5f9;
            min-height: 280px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            padding: 40px 44px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: #fef3c7;
            color: #d97706;
            padding: 4px 16px;
            border-radius: 100px;
            font-weight: 700;
            font-size: 12px;
            text-transform: uppercase;
            align-self: flex-start;
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 28px;
            font-weight: 700;
            color: #1a1a2e;
        }
        .deal-wrap .deal-content .desc {
            color: #64748b;
            margin: 4px 0 12px;
            font-size: 15px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 34px;
            font-weight: 800;
            color: #1a1a2e;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            font-weight: 400;
            color: #94a3b8;
            text-decoration: line-through;
            margin-left: 12px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            color: #64748b;
            margin: 6px 0 16px;
        }
        .deal-wrap .deal-content .stock strong {
            color: #ef4444;
        }
        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 8px 0 20px;
        }
        .timer-box {
            background: #1e293b;
            color: #fff;
            padding: 10px 16px;
            border-radius: 12px;
            min-width: 64px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 24px;
            font-weight: 700;
            line-height: 1.2;
        }
        .timer-box .label {
            font-size: 10px;
            opacity: 0.6;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ===== TESTIMONIALS ===== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 4px 2px 16px;
            scroll-snap-type: x mandatory;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: #cbd5e1;
            border-radius: 100px;
        }
        .testimonial-card {
            flex: 0 0 340px;
            background: #fff;
            border-radius: 16px;
            padding: 28px 30px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.04);
            scroll-snap-align: start;
            transition: all 0.2s;
        }
        .testimonial-card:hover {
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.06);
        }
        .testimonial-card .stars {
            color: #f59e0b;
            font-size: 16px;
            letter-spacing: 2px;
            margin-bottom: 10px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            color: #1a1a2e;
            line-height: 1.6;
            font-style: italic;
            margin-bottom: 16px;
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
            background: #e2e8f0;
        }
        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 14px;
            color: #1a1a2e;
        }
        .testimonial-card .author .role {
            font-size: 13px;
            color: #94a3b8;
        }

        /* ===== NEWSLETTER ===== */
        .newsletter-wrap {
            background: #1e293b;
            border-radius: 20px;
            padding: 48px 56px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-size: 26px;
            font-weight: 700;
            color: #fff;
        }
        .newsletter-wrap .text p {
            color: rgba(255, 255, 255, 0.7);
            font-size: 15px;
            margin-top: 4px;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex: 1;
            max-width: 480px;
            flex-wrap: wrap;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 180px;
            padding: 14px 20px;
            border-radius: 12px;
            border: 2px solid rgba(255, 255, 255, 0.1);
            background: rgba(255, 255, 255, 0.05);
            color: #fff;
            font-size: 15px;
            transition: all 0.2s;
            outline: none;
        }
        .newsletter-wrap form input::placeholder {
            color: rgba(255, 255, 255, 0.4);
        }
        .newsletter-wrap form input:focus {
            border-color: #6366f1;
            background: rgba(255, 255, 255, 0.08);
        }
        .newsletter-wrap form .btn {
            background: #6366f1;
            color: #fff;
            padding: 14px 32px;
            border-radius: 12px;
        }
        .newsletter-wrap form .btn:hover {
            background: #4f46e5;
        }
        #newsletterMsg {
            width: 100%;
            margin-top: 8px;
            font-size: 14px;
            color: #a5b4fc;
        }

        /* ===== FOOTER ===== */
        footer {
            padding: 48px 0 24px;
            border-top: 1px solid #f1f5f9;
            margin-top: 8px;
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 32px;
        }
        .footer-grid .brand-col .brand {
            font-size: 20px;
            margin-bottom: 8px;
        }
        .footer-grid .brand-col p {
            color: #64748b;
            font-size: 14px;
            max-width: 280px;
            line-height: 1.7;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 8px;
            margin-top: 14px;
        }
        .footer-grid .brand-col .socials a {
            width: 40px;
            height: 40px;
            border-radius: 10px;
            background: #f1f5f9;
            display: grid;
            place-items: center;
            color: #64748b;
            transition: all 0.2s;
        }
        .footer-grid .brand-col .socials a:hover {
            background: #6366f1;
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 14px;
            color: #1a1a2e;
            margin-bottom: 12px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .footer-grid .col ul a {
            color: #64748b;
            font-size: 14px;
            transition: all 0.2s;
        }
        .footer-grid .col ul a:hover {
            color: #6366f1;
        }
        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid #f1f5f9;
            color: #94a3b8;
            font-size: 13px;
        }

        /* ===== RESPONSIVE ===== */
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
                flex: 0 0 200px;
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
            .hero h1 {
                font-size: 40px;
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
            }
            .section {
                padding: 36px 0;
            }
            .search-box {
                min-width: 120px;
            }
            .newsletter-wrap {
                padding: 32px 24px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter-wrap form {
                max-width: 100%;
            }
            .deal-wrap .deal-content {
                padding: 24px 20px;
            }
            .header-inner {
                flex-wrap: nowrap;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 20px;
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
            .brand i {
                font-size: 20px;
                padding: 6px;
            }
            .timer-box {
                min-width: 50px;
                padding: 6px 10px;
            }
            .timer-box .num {
                font-size: 18px;
            }
            .product-card .body h5 {
                font-size: 14px;
            }
            .product-card .body .price {
                font-size: 17px;
            }
        }
    </style>
</head>
<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:8px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-store-alt"></i>
                    <span>Nexus<span>Shop</span></span>
                </a>
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
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <div class="badge">
                    <i class="fas fa-sparkles"></i> New Collection 2026
                </div>
                <h1>Discover <span>Premium</span> <br />Everyday Essentials</h1>
                <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow">
                        <i class="fas fa-arrow-right"></i> Shop Now
                    </button>
                    <button class="btn btn-outline" id="exploreDeals">
                        <i class="fas fa-clock"></i> Explore Deals
                    </button>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="cat-title">Browse Categories</h2>
                        <p>Find exactly what you're looking for</p>
                    </div>
                    <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="cat-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="prod-title">Trending Now</h2>
                        <p>What's hot — popular picks from our community</p>
                    </div>
                    <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="product-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="deals-title">⚡ Flash Deal</h2>
                        <p>Grab it before it's gone — limited stock</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Only <strong>12</strong> items left — hurry!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2 id="test-title">What Our Customers Say</h2>
                        <p>Real reviews from real people</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">Stay in the Loop</h3>
                        <p>Get exclusive offers, early access & new arrivals</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand">
                        <i class="fas fa-store-alt"></i>
                        <span>Nexus<span>Shop</span></span>
                    </div>
                    <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Cookies</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusShop. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- ===== SCRIPT ===== -->
    <script>
        // ============================================================
        // DATA
        // ============================================================
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
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
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
            { name: 'Ava Martin', role: 'Verified Buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
                text: 'Fast shipping and excellent support. The product exceeded my expectations!', stars: 5 },
            { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
                text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
            { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
                text: 'Love the quality and the packaging. Everything arrived in perfect condition.', stars: 5 },
            { name: 'James Wilson', role: 'Tech Enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
                text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
        ];

        // ============================================================
        // STATE
        // ============================================================
        let cartCount = 0;

        // ============================================================
        // DOM REFS
        // ============================================================
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

        // ============================================================
        // RENDER FUNCTIONS
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                    `<p style="grid-column:1/-1;text-align:center;padding:40px;color:#94a3b8;">No products found.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : (p.badge === 'New' ? 'new' : '');
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` :
                '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Add to cart listeners
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
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ============================================================
        // UTILITY FUNCTIONS
        // ============================================================
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.3)';
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
            cartBtn.style.color = '#6366f1';
            setTimeout(() => cartBtn.style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ============================================================
        // DEAL TIMER
        // ============================================================
        (function setupDealTimer() {
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
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // ============================================================
        // EVENT BINDINGS
        // ============================================================

        // Search
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // Mobile menu
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

        // Hero buttons
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        // Deal buy
        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = '#10b981';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        // Newsletter
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email address.';
                newsletterMsg.style.color = '#fca5a5';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '🎉 Thanks for subscribing!';
            newsletterMsg.style.color = '#a5b4fc';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => {
                newsletterMsg.style.display = 'none';
            }, 3500);
        });

        // Cart button
        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        // Year in footer
        document.getElementById('year').textContent = new Date().getFullYear();

        // ============================================================
        // INIT
        // ============================================================
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        // Close mobile menu on resize to desktop
        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        console.log('🚀 NexusShop — user‑friendly e‑commerce demo loaded.');
    </script>

</body>
</html>
