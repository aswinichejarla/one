<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E-Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        /* ===== CSS VARIABLES ===== */
        :root {
            --primary: #0f172a;
            --primary-light: #1e293b;
            --accent: #6366f1;
            --accent-light: #818cf8;
            --accent-gradient: linear-gradient(135deg, #6366f1, #8b5cf6);
            --bg: #f8fafc;
            --card: #ffffff;
            --surface: #f1f5f9;
            --success: #22c55e;
            --warning: #f59e0b;
            --danger: #ef4444;
            --text: #0f172a;
            --text-secondary: #64748b;
            --text-light: #94a3b8;
            --shadow-sm: 0 1px 3px rgba(0,0,0,0.06);
            --shadow-md: 0 4px 20px rgba(0,0,0,0.08);
            --shadow-lg: 0 10px 40px rgba(99,102,241,0.15);
            --shadow-xl: 0 20px 60px rgba(0,0,0,0.12);
            --radius: 16px;
            --radius-sm: 10px;
            --radius-full: 9999px;
            --container: 1240px;
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        /* ===== RESET & BASE ===== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            display: block;
            max-width: 100%;
        }

        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
        }

        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ===== SCROLLBAR ===== */
        ::-webkit-scrollbar {
            width: 8px;
            height: 8px;
        }
        ::-webkit-scrollbar-track {
            background: var(--bg);
        }
        ::-webkit-scrollbar-thumb {
            background: var(--accent);
            border-radius: 10px;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: var(--accent-light);
        }

        /* ===== HEADER ===== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255,255,255,0.85);
            backdrop-filter: blur(16px) saturate(180%);
            -webkit-backdrop-filter: blur(16px) saturate(180%);
            border-bottom: 1px solid rgba(0,0,0,0.04);
            transition: var(--transition);
        }

        header.scrolled {
            box-shadow: var(--shadow-sm);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 12px 0;
            height: 72px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-weight: 800;
            font-size: 22px;
            color: var(--primary);
            letter-spacing: -0.5px;
        }

        .brand-icon {
            width: 38px;
            height: 38px;
            background: var(--accent-gradient);
            border-radius: var(--radius-sm);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 18px;
        }

        .brand .accent {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* Navigation */
        .main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            align-items: center;
        }

        .main-nav li a {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            font-size: 14px;
            color: var(--text-secondary);
            transition: var(--transition);
            position: relative;
        }

        .main-nav li a:hover,
        .main-nav li a.active {
            color: var(--text);
            background: var(--surface);
        }

        .main-nav li a .badge-nav {
            background: var(--danger);
            color: white;
            font-size: 10px;
            font-weight: 700;
            padding: 2px 8px;
            border-radius: var(--radius-full);
            margin-left: 4px;
        }

        /* Search */
        .search-wrapper {
            position: relative;
            flex: 1;
            max-width: 400px;
        }

        .search-wrapper input {
            width: 100%;
            padding: 10px 16px 10px 44px;
            border-radius: var(--radius-full);
            border: 2px solid transparent;
            background: var(--surface);
            font-size: 14px;
            transition: var(--transition);
            outline: none;
        }

        .search-wrapper input:focus {
            border-color: var(--accent);
            background: white;
            box-shadow: 0 0 0 4px rgba(99,102,241,0.1);
        }

        .search-wrapper .search-icon {
            position: absolute;
            left: 14px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--text-light);
            pointer-events: none;
        }

        .search-wrapper .clear-search {
            position: absolute;
            right: 14px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--text-light);
            cursor: pointer;
            display: none;
            padding: 4px;
            border-radius: 50%;
            transition: var(--transition);
        }

        .search-wrapper .clear-search:hover {
            background: var(--surface);
            color: var(--text);
        }

        /* Header Actions */
        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .header-actions .icon-btn {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--text-secondary);
            transition: var(--transition);
            position: relative;
            font-size: 18px;
        }

        .header-actions .icon-btn:hover {
            background: var(--surface);
            color: var(--text);
        }

        .cart-btn {
            position: relative;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            background: var(--accent-gradient);
            color: white;
            transition: var(--transition);
            font-size: 18px;
        }

        .cart-btn:hover {
            transform: scale(1.05);
            box-shadow: var(--shadow-lg);
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--danger);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 2px solid white;
            transition: var(--transition);
        }

        .cart-count.pulse {
            animation: pulse 0.3s ease;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.4); }
            100% { transform: scale(1); }
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: var(--radius-sm);
            align-items: center;
            justify-content: center;
            font-size: 20px;
            color: var(--text);
            transition: var(--transition);
        }

        .mobile-toggle:hover {
            background: var(--surface);
        }

        /* Mobile Menu */
        #mobileMenu {
            display: none;
            background: white;
            border-top: 1px solid rgba(0,0,0,0.04);
            padding: 16px 0;
        }

        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        #mobileMenu ul li a {
            display: block;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--text-secondary);
            transition: var(--transition);
        }

        #mobileMenu ul li a:hover {
            background: var(--surface);
            color: var(--text);
        }

        /* ===== HERO ===== */
        .hero {
            position: relative;
            padding: 60px 0 80px;
            background: linear-gradient(135deg, #0f172a 0%, #1e1b4b 50%, #312e81 100%);
            border-radius: 0 0 40px 40px;
            overflow: hidden;
            margin-bottom: 24px;
        }

        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%23ffffff' fill-opacity='0.03'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
        }

        .hero .container {
            position: relative;
            z-index: 1;
        }

        .hero-content {
            max-width: 620px;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(8px);
            padding: 6px 14px 6px 6px;
            border-radius: var(--radius-full);
            font-size: 13px;
            font-weight: 500;
            color: rgba(255,255,255,0.8);
            margin-bottom: 20px;
        }

        .hero-badge .badge-dot {
            width: 8px;
            height: 8px;
            background: var(--success);
            border-radius: 50%;
            animation: blink 1.5s infinite;
        }

        @keyframes blink {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.3; }
        }

        .hero h1 {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-weight: 800;
            font-size: 48px;
            line-height: 1.1;
            color: white;
            letter-spacing: -1.5px;
            margin-bottom: 16px;
        }

        .hero h1 .highlight {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            color: rgba(255,255,255,0.7);
            font-size: 18px;
            max-width: 480px;
            margin-bottom: 28px;
            line-height: 1.7;
        }

        .hero-actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 14px 28px;
            border-radius: var(--radius-full);
            font-weight: 600;
            font-size: 15px;
            transition: var(--transition);
            border: none;
        }

        .btn-primary {
            background: var(--accent-gradient);
            color: white;
            box-shadow: 0 4px 20px rgba(99,102,241,0.35);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 30px rgba(99,102,241,0.45);
        }

        .btn-secondary {
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(8px);
            color: white;
            border: 1px solid rgba(255,255,255,0.15);
        }

        .btn-secondary:hover {
            background: rgba(255,255,255,0.2);
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            color: var(--text);
            border: 2px solid var(--surface);
        }

        .btn-outline:hover {
            border-color: var(--accent);
            color: var(--accent);
        }

        .hero-stats {
            display: flex;
            gap: 40px;
            margin-top: 40px;
            padding-top: 32px;
            border-top: 1px solid rgba(255,255,255,0.08);
        }

        .hero-stats .stat {
            text-align: left;
        }

        .hero-stats .stat-number {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-weight: 800;
            font-size: 28px;
            color: white;
        }

        .hero-stats .stat-label {
            font-size: 14px;
            color: rgba(255,255,255,0.5);
        }

        /* Floating elements */
        .hero-float {
            position: absolute;
            right: 10%;
            top: 50%;
            transform: translateY(-50%);
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .hero-float .float-card {
            background: rgba(255,255,255,0.08);
            backdrop-filter: blur(16px);
            padding: 16px 20px;
            border-radius: var(--radius);
            border: 1px solid rgba(255,255,255,0.06);
            min-width: 180px;
            animation: float 3s ease-in-out infinite;
        }

        .hero-float .float-card:nth-child(2) {
            animation-delay: 0.5s;
            margin-left: 30px;
        }

        .hero-float .float-card:nth-child(3) {
            animation-delay: 1s;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-8px); }
        }

        .hero-float .float-card .float-label {
            font-size: 12px;
            color: rgba(255,255,255,0.5);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .hero-float .float-card .float-value {
            font-size: 20px;
            font-weight: 700;
            color: white;
            margin-top: 4px;
        }

        /* ===== SECTION COMMON ===== */
        .section {
            padding: 56px 0;
        }

        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 32px;
            flex-wrap: wrap;
        }

        .section-header .title-group h2 {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-weight: 700;
            font-size: 28px;
            letter-spacing: -0.5px;
            color: var(--text);
        }

        .section-header .title-group p {
            color: var(--text-secondary);
            margin-top: 4px;
        }

        .section-header .view-all {
            color: var(--accent);
            font-weight: 600;
            font-size: 14px;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            transition: var(--transition);
            white-space: nowrap;
        }

        .section-header .view-all:hover {
            gap: 10px;
            color: var(--accent-light);
        }

        /* ===== CATEGORIES ===== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .cat-card {
            background: var(--card);
            padding: 24px 16px;
            border-radius: var(--radius);
            text-align: center;
            transition: var(--transition);
            border: 2px solid transparent;
            cursor: pointer;
            position: relative;
            overflow: hidden;
        }

        .cat-card::after {
            content: '';
            position: absolute;
            inset: 0;
            background: var(--accent-gradient);
            opacity: 0;
            transition: var(--transition);
            border-radius: var(--radius);
        }

        .cat-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-md);
            border-color: var(--accent);
        }

        .cat-card:hover::after {
            opacity: 0.04;
        }

        .cat-card .icon-wrap {
            width: 56px;
            height: 56px;
            margin: 0 auto 12px;
            background: var(--surface);
            border-radius: var(--radius-sm);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 24px;
            color: var(--accent);
            transition: var(--transition);
            position: relative;
            z-index: 1;
        }

        .cat-card:hover .icon-wrap {
            background: var(--accent-gradient);
            color: white;
            transform: scale(1.05);
        }

        .cat-card h4 {
            font-size: 14px;
            font-weight: 600;
            position: relative;
            z-index: 1;
        }

        .cat-card .cat-count {
            font-size: 12px;
            color: var(--text-light);
            margin-top: 4px;
            position: relative;
            z-index: 1;
        }

        /* ===== PRODUCTS ===== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product-card {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid rgba(0,0,0,0.04);
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-lg);
            border-color: var(--accent);
        }

        .product-image {
            position: relative;
            padding-top: 75%;
            background: var(--surface);
            overflow: hidden;
        }

        .product-image img {
            position: absolute;
            inset: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .product-card:hover .product-image img {
            transform: scale(1.04);
        }

        .product-image .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 4px 12px;
            border-radius: var(--radius-full);
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            z-index: 2;
        }

        .badge-new {
            background: var(--accent-gradient);
            color: white;
        }

        .badge-sale {
            background: var(--danger);
            color: white;
        }

        .badge-hot {
            background: var(--warning);
            color: white;
        }

        .product-image .wishlist-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(255,255,255,0.9);
            backdrop-filter: blur(4px);
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--text-secondary);
            transition: var(--transition);
            z-index: 2;
            border: none;
        }

        .product-image .wishlist-btn:hover {
            background: white;
            color: var(--danger);
            transform: scale(1.1);
        }

        .product-image .wishlist-btn.liked {
            color: var(--danger);
        }

        .product-body {
            padding: 16px 18px 14px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .product-body .product-category {
            font-size: 12px;
            color: var(--text-light);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-weight: 600;
        }

        .product-body h5 {
            font-size: 15px;
            font-weight: 600;
            margin: 0;
            line-height: 1.3;
        }

        .product-body .rating {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 13px;
        }

        .product-body .rating .stars {
            color: var(--warning);
        }

        .product-body .rating .count {
            color: var(--text-light);
        }

        .product-body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 4px;
        }

        .product-body .price-row .current {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-weight: 700;
            font-size: 20px;
            color: var(--text);
        }

        .product-body .price-row .old {
            font-size: 14px;
            color: var(--text-light);
            text-decoration: line-through;
        }

        .product-body .price-row .discount {
            font-size: 12px;
            font-weight: 700;
            color: var(--success);
            background: rgba(34,197,94,0.1);
            padding: 2px 10px;
            border-radius: var(--radius-full);
        }

        .product-footer {
            padding: 12px 18px 18px;
            display: flex;
            gap: 10px;
        }

        .product-footer .add-btn {
            flex: 1;
            padding: 10px 16px;
            border-radius: var(--radius-sm);
            background: var(--accent-gradient);
            color: white;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .product-footer .add-btn:hover {
            transform: scale(1.02);
            box-shadow: var(--shadow-lg);
        }

        .product-footer .add-btn.added {
            background: var(--success);
        }

        /* ===== FLASH SALE ===== */
        .flash-sale {
            background: linear-gradient(135deg, #0f172a 0%, #1e1b4b 100%);
            border-radius: var(--radius);
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 0;
            position: relative;
        }

        .flash-sale .sale-image {
            height: 100%;
            min-height: 320px;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80') center/cover no-repeat;
            position: relative;
        }

        .flash-sale .sale-image .sale-overlay {
            position: absolute;
            inset: 0;
            background: linear-gradient(90deg, rgba(15,23,42,0.9) 0%, transparent 100%);
        }

        .flash-sale .sale-content {
            padding: 40px 48px;
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .flash-sale .sale-content .sale-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(239,68,68,0.2);
            color: var(--danger);
            padding: 4px 14px 4px 10px;
            border-radius: var(--radius-full);
            font-size: 13px;
            font-weight: 600;
            width: fit-content;
            margin-bottom: 12px;
        }

        .flash-sale .sale-content .sale-badge .pulse-dot {
            width: 8px;
            height: 8px;
            background: var(--danger);
            border-radius: 50%;
            animation: blink 1s infinite;
        }

        .flash-sale .sale-content h3 {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 30px;
            font-weight: 700;
            margin-bottom: 6px;
        }

        .flash-sale .sale-content .sale-desc {
            color: rgba(255,255,255,0.6);
            margin-bottom: 20px;
        }

        .flash-sale .sale-content .price-group {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 16px;
        }

        .flash-sale .sale-content .price-group .current {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 32px;
            font-weight: 800;
        }

        .flash-sale .sale-content .price-group .old {
            font-size: 18px;
            color: rgba(255,255,255,0.4);
            text-decoration: line-through;
        }

        .flash-sale .sale-content .price-group .discount-badge {
            background: var(--danger);
            padding: 4px 12px;
            border-radius: var(--radius-full);
            font-weight: 700;
            font-size: 14px;
        }

        /* Timer */
        .timer {
            display: flex;
            gap: 12px;
            margin: 12px 0 20px;
        }

        .timer .time-box {
            background: rgba(255,255,255,0.06);
            backdrop-filter: blur(8px);
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            min-width: 72px;
            text-align: center;
            border: 1px solid rgba(255,255,255,0.06);
        }

        .timer .time-box .time-value {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 28px;
            font-weight: 700;
            line-height: 1;
        }

        .timer .time-box .time-label {
            font-size: 11px;
            color: rgba(255,255,255,0.4);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-top: 4px;
        }

        /* ===== TESTIMONIALS ===== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 20px;
            scroll-snap-type: x mandatory;
        }

        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }

        .testimonials-scroll::-webkit-scrollbar-thumb {
            border-radius: 10px;
        }

        .testimonial-card {
            min-width: 340px;
            flex: 0 0 auto;
            background: var(--card);
            padding: 24px 28px;
            border-radius: var(--radius);
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(0,0,0,0.04);
            scroll-snap-align: start;
            transition: var(--transition);
        }

        .testimonial-card:hover {
            box-shadow: var(--shadow-md);
        }

        .testimonial-card .quote {
            color: var(--accent);
            font-size: 28px;
            line-height: 1;
            margin-bottom: 8px;
            opacity: 0.3;
        }

        .testimonial-card p {
            color: var(--text-secondary);
            font-size: 15px;
            line-height: 1.7;
            margin-bottom: 16px;
        }

        .testimonial-card .user {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .testimonial-card .user .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: var(--surface);
            object-fit: cover;
        }

        .testimonial-card .user .name {
            font-weight: 600;
            font-size: 14px;
        }

        .testimonial-card .user .role {
            font-size: 13px;
            color: var(--text-light);
        }

        .testimonial-card .stars {
            color: var(--warning);
            font-size: 14px;
            margin-bottom: 8px;
        }

        /* ===== NEWSLETTER ===== */
        .newsletter-section {
            background: linear-gradient(135deg, #0f172a, #1e1b4b);
            border-radius: var(--radius);
            padding: 56px 48px;
            text-align: center;
            color: white;
        }

        .newsletter-section h3 {
            font-family: 'Plus Jakarta Sans', sans-serif;
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 6px;
        }

        .newsletter-section p {
            color: rgba(255,255,255,0.6);
            margin-bottom: 24px;
        }

        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            max-width: 500px;
            margin: 0 auto;
        }

        .newsletter-form input {
            flex: 1;
            min-width: 240px;
            padding: 14px 20px;
            border-radius: var(--radius-full);
            border: none;
            font-size: 15px;
            background: rgba(255,255,255,0.08);
            color: white;
            outline: none;
            transition: var(--transition);
        }

        .newsletter-form input::placeholder {
            color: rgba(255,255,255,0.3);
        }

        .newsletter-form input:focus {
            background: rgba(255,255,255,0.14);
        }

        .newsletter-form .btn-subscribe {
            padding: 14px 32px;
            border-radius: var(--radius-full);
            background: var(--accent-gradient);
            color: white;
            font-weight: 600;
            font-size: 15px;
            transition: var(--transition);
            border: none;
        }

        .newsletter-form .btn-subscribe:hover {
            transform: scale(1.02);
            box-shadow: var(--shadow-lg);
        }

        #newsletterMsg {
            margin-top: 16px;
            font-size: 14px;
            display: none;
        }

        /* ===== FOOTER ===== */
        footer {
            margin-top: 24px;
            padding: 48px 0 32px;
            border-top: 1px solid rgba(0,0,0,0.04);
            background: white;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 32px;
        }

        .footer-brand p {
            color: var(--text-secondary);
            font-size: 14px;
            max-width: 300px;
            margin: 8px 0 16px;
        }

        .footer-social {
            display: flex;
            gap: 8px;
        }

        .footer-social a {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            background: var(--surface);
            color: var(--text-secondary);
            transition: var(--transition);
        }

        .footer-social a:hover {
            background: var(--accent);
            color: white;
            transform: translateY(-2px);
        }

        .footer-col h5 {
            font-weight: 600;
            font-size: 14px;
            margin-bottom: 12px;
        }

        .footer-col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .footer-col ul li a {
            color: var(--text-secondary);
            font-size: 14px;
            transition: var(--transition);
        }

        .footer-col ul li a:hover {
            color: var(--text);
        }

        .footer-bottom {
            padding-top: 24px;
            border-top: 1px solid rgba(0,0,0,0.04);
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 12px;
            font-size: 13px;
            color: var(--text-light);
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 1200px) {
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
           
