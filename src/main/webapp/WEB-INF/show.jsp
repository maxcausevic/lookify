<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Song</title>
</head>
<body>
<h2><a href="/dashboard">Dashboard</a></h2>

<h3>Title </h3>
	<h4><c:out value="${song.title}"></c:out></h4>
    <h4><c:out value="${song.artist}"></c:out></h4>
    <h4><c:out value="${song.rating}"></c:out></h4>
    <h4><form action="/songs/delete/${song.id}" method="post">
                <input type="hidden" value="delete" name="_method">

                <input type="submit" value="Delete Song">
            </form></h4>
    <iframe class="col mx-auto" width="1695" height="717" src="https://www.youtube.com/embed/${song.embeddedCode}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</body>
</html>