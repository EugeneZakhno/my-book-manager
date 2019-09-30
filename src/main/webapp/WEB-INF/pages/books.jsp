<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Books Page</title>
    <link href="../../style.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="../images/duke.ico" type="image/x-icon">
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>

<h1>Java Book List</h1>

<c:if test="${!empty listBooks}">
    <table class="tg">
        <tr>
            <th>ID</th>
            <th>SN</th>
            <th width="120">Author</th>
            <th width="120">Publishing House</th>
            <th width="120">Year</th>
            <th width="120">Lang</th>
            <th width="500">Title</th>
            <th width="120">Topic</th>
            <th width="120">Links</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listBooks}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.bookSerialNumber}</td>
                <td>${book.bookAuthor}</td>
                <td>${book.publishingHouse}</td>
                <td>${book.bookYear}</td>
                <td>${book.bookLang}</td>
                <td><a href="/bookdata/${book.id}" target="_blank">${book.bookTitle}</a></td>
                <td>${book.topics}</td>
                <td>${book.links}</td>
                <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${book.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<h2>Add a Book</h2>

<c:url var="addAction" value="/books/add"/>
<form:form action="${addAction}" commandName="book">
    <table>
        <c:if test="${!empty book.bookTitle}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="bookSerialNumber">
                    <spring:message text="SerialNumber"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookSerialNumber"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookAuthor">
                    <spring:message text="Author"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookAuthor"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="publishingHouse">
                    <spring:message text="Publishing House"/>
                </form:label>
            </td>
            <td>
                <form:input path="publishingHouse"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookYear">
                    <spring:message text="Year"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookYear"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookLang">
                    <spring:message text="Lang"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookLang"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="bookTitle">
                    <spring:message text="Title"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookTitle"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="topics">
                    <spring:message text="Topic"/>
                </form:label>
            </td>
            <td>
                <form:input path="topics"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="links">
                    <spring:message text="Links"/>
                </form:label>
            </td>
            <td>
                <form:input path="links"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty book.bookTitle}">
                    <input type="submit"
                           value="<spring:message text="Edit Book"/>"/>
                </c:if>
                <c:if test="${empty book.bookTitle}">
                    <input type="submit"
                           value="<spring:message text="Add Book"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
