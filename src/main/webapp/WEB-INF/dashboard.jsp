<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>
<form method="POST" action="/search/artist">
        <label><input type="text" name="artist"></label>
        <button>Search Artist</button>
    </form>
<h2><a href="/addSong">Add New</a><a href="/search/topTen">Top Songs</a></h2>

<table>
 
 
  <tr>
  
    <th>"Title"</th>
    <th>"Artist"</th>
    <th>"Rating"</th>
    <th>"Actions"</th>
  </tr>
  <c:forEach items="${songs}" var="song">
  <tr>
    <td><a href="/song/${song.id}"><c:out value="${song.title}"/></a></td>
    <td><c:out value="${song.artist}"/></td>
    <td><c:out value="${song.rating}"/></td>
   	<td><form action="/songs/delete/${song.id}" method="post">
                <input type="hidden" value="delete" name="_method">
				<input type="submit" value="Delete Song">
        </form></td>
    
  </tr>
  </c:forEach>
 </table>
</body>
</html>