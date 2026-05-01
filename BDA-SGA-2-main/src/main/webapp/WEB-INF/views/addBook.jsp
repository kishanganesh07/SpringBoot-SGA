<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book - Library Manager</title>
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
            <h1>New Book</h1>
        </div>

        <div class="card">
            <form action="save" method="post">
                <div class="form-group">
                    <label>Title</label>
                    <input type="text" name="title" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Genre</label>
                    <input type="text" name="genre" class="form-control">
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <input type="number" step="0.01" name="price" class="form-control">
                </div>
                <div class="form-group">
                    <label>Published Date</label>
                    <input type="date" name="publishedDate" class="form-control">
                </div>
                <div class="form-group">
                    <label>Author</label>
                    <select name="author.authorId" class="form-control">
                        <c:forEach items="${authors}" var="author">
                            <option value="${author.authorId}">${author.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div style="margin-top: 1.5rem;">
                    <button type="submit" class="btn btn-primary">Save Book</button>
                    <a href="/books/list" class="btn">Cancel</a>
                </div>
            </form>
        </div>
    </main>
</body>
</html>
