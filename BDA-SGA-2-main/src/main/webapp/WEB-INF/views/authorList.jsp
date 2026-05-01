<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Authors - Library Manager</title>
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
            <h1>Authors Directory</h1>
            <a href="/authors/add" class="btn btn-primary">Add Author</a>
        </div>

        <div class="box">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Country</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${authors}" var="author">
                        <tr>
                            <td>${author.authorId}</td>
                            <td><strong>${author.name}</strong></td>
                            <td>${author.email}</td>
                            <td>${author.country}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>
</body>
</html>
