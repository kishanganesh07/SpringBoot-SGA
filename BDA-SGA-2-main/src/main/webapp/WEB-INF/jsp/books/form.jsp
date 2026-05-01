<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
            <li><a href="/authors">Authors</a></li>
            <li><a href="/books">Books</a></li>
        </ul>
    </nav>

    <main class="container">
        <div class="page-header">
            <h1>${empty book.bookId ? 'Add New' : 'Edit'} Book</h1>
        </div>

        <spring:hasBindErrors name="book">
            <div class="error" style="background: #fee2e2; color: #b91c1c; padding: 1rem; border-radius: var(--radius); margin-bottom: 2rem; border: 1px solid #fecaca;">
                <strong>Please fix the errors below:</strong>
                <ul style="margin-top: 0.5rem; margin-left: 1.5rem;">
                    <c:forEach items="${errors.allErrors}" var="error">
                        <li><spring:message code="${error.code}" text="${error.defaultMessage}"/></li>
                    </c:forEach>
                </ul>
            </div>
        </spring:hasBindErrors>

        <form:form action="/books/save" modelAttribute="book" method="POST">
            <form:hidden path="bookId"/>
            
            <div class="form-group">
                <label>Title</label>
                <form:input path="title" cssClass="form-control" />
                <form:errors path="title" cssClass="error" />
            </div>

            <div class="form-group">
                <label>Genre</label>
                <form:input path="genre" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label>Price</label>
                <form:input path="price" type="number" step="0.01" cssClass="form-control" />
                <form:errors path="price" cssClass="error" />
            </div>

            <div class="form-group">
                <label>Published Date</label>
                <form:input path="publishedDate" type="date" cssClass="form-control" />
                <form:errors path="publishedDate" cssClass="error" />
            </div>

            <div class="form-group">
                <label>Author</label>
                <form:select path="author.authorId" cssClass="form-control">
                    <form:option value="" label="-- Select Author --"/>
                    <form:options items="${authors}" itemValue="authorId" itemLabel="name"/>
                </form:select>
                <form:errors path="author" cssClass="error" />
            </div>

            <div style="margin-top: 1.5rem;">
                <button type="submit" class="btn btn-primary">Save Book</button>
                <a href="/books" class="btn">Cancel</a>
            </div>
        </form:form>
    </main>
</body>
</html>