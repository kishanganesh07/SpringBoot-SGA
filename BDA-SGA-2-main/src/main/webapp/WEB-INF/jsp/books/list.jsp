<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Books - Library Manager</title>
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
        <div class="page-header">
            <h1>Book Catalog</h1>
            <a href="/books/new" class="btn btn-primary">Add Book</a>
        </div>

        <div class="box">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Price</th>
                        <th>Author</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${books}" var="book">
                        <tr>
                            <td>${book.bookId}</td>
                            <td><strong>${book.title}</strong></td>
                            <td>${book.genre}</td>
                            <td>$${book.price}</td>
                            <td>${book.author.name}</td>
                            <td>
                                <a href="/books/edit/${book.bookId}" class="btn">Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>
</body>
</html>