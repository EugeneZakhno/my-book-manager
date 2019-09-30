<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>BookData</title>
    <link href="../../style.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="../images/duke.ico" type="image/x-icon">
</head>
<body>
<h1>Book Details</h1>
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
        <th width="120">Link</th>
    </tr>
    <tr>
        <td>${book.id}</td>
        <td>${book.bookSerialNumber}</td>
        <td>${book.bookAuthor}</td>
        <td>${book.publishingHouse}</td>
        <td>${book.bookYear}</td>
        <td>${book.bookLang}</td>
        <td>${book.bookTitle}</td>
        <td>${book.topics}</td>
        <td>${book.links}</td>
    </tr>
</table>
</body>
</html>