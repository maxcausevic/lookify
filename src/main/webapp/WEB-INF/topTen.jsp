<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Top Ten Songs</title>
</head>
<body>
<h2><a href="/dashboard">Dashboard</a></h2>
<table>
    <thead>
        <tr>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${songs}" var="song">
        <tr>
            <td><c:out value="${song.rating} - "/><a href="/songs/${song.id}">${song.title}</a><c:out value=" -${song.artist}"/></td>
        </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>