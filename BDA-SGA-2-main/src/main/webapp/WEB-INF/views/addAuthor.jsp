<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Author - Library Manager</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
    <nav>
        <a href="/" class="nav-brand">Welcome to Library Manager</a>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/authors/list">Authors</a></li>
            <li><a href="/books/list">Books</a></li>
        </ul>
    </nav>

    <main class="container">
        <div class="page-header">
            <h1>New Author</h1>
        </div>

        <div class="card">
            <form action="save" method="post">
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Country</label>
                    <input type="text" name="country" class="form-control" required>
                </div>
                <div style="margin-top: 1.5rem;">
                    <button type="submit" class="btn btn-primary">Save Author</button>
                    <a href="/authors/list" class="btn">Cancel</a>
                </div>
            </form>
        </div>
    </main>
</body>
</html>
