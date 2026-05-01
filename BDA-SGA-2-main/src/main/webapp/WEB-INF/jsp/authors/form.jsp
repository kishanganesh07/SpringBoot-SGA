<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
            <li><a href="/authors">Authors</a></li>
            <li><a href="/books">Books</a></li>
        </ul>
    </nav>

    <main class="container">
        <div class="page-header">
            <h1>${empty author.authorId ? 'New' : 'Edit'} Author</h1>
        </div>

        <spring:hasBindErrors name="author">
            <div class="error" style="background: #fee2e2; color: #b91c1c; padding: 1rem; border-radius: var(--radius); margin-bottom: 2rem; border: 1px solid #fecaca;">
                <strong>Please fix the errors below:</strong>
                <ul style="margin-top: 0.5rem; margin-left: 1.5rem;">
                    <c:forEach items="${errors.allErrors}" var="error">
                        <li><spring:message code="${error.code}" text="${error.defaultMessage}"/></li>
                    </c:forEach>
                </ul>
            </div>
        </spring:hasBindErrors>

        <c:if test="${not empty error}">
            <div class="error" style="background: #fff8f8; padding: 1rem; border: 1px solid var(--danger); border-radius: var(--radius); margin-bottom: 1rem;">
                ${error}
            </div>
        </c:if>

        <form:form action="/authors/save" modelAttribute="author" method="POST">
            <form:hidden path="authorId"/>

            <div class="form-group">
                <label>Name</label>
                <form:input path="name" cssClass="form-control" />
                <form:errors path="name" cssClass="error" />
            </div>

            <div class="form-group">
                <label>Email</label>
                <form:input path="email" cssClass="form-control" />
                <form:errors path="email" cssClass="error" />
            </div>

            <div class="form-group">
                <label>Country</label>
                <form:input path="country" cssClass="form-control" />
            </div>

            <div style="margin-top: 1.5rem;">
                <button type="submit" class="btn btn-primary">Save Author</button>
                <a href="/authors" class="btn">Cancel</a>
            </div>
        </form:form>
    </main>
</body>
</html>