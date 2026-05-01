<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Library Manager</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
    <nav>
        <a href="/" class="nav-brand">Welcome to Library Manager</a>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/authors">Authors</a></li>
            <li><a href="/books">Books</a></li>
        </ul>
    </nav>

    <main class="container">
        <div class="card">
            <h1 style="font-size: 2.5rem; margin-bottom: 1rem;">Welcome to Library Management System</h1>
            <p style="font-size: 1.1rem; margin-bottom: 2rem; color: var(--text-muted);">Use the navigation to manage authors and catalog.</p>
            <a href="/books" class="btn btn-primary" style="padding: 12px 24px;">View Catalog</a>
        </div>
    </main>
</body>
</html>