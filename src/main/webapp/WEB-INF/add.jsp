<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a new song</title>
</head>
<body>
<h1> Add a new song</h1>
<h2><a href="/dashboard">Back to Dashboard</a></h2>
	<form method="POST" action="/addSong" modelAttribute="song">
        <label>Title: <input type="text" name="title"></label>
        <br>
        <br>
        <label>Artist: <input type="text" name="artist"></label>
        <br>
        <br>
        <label>Rating (1-10): <input type="number" name="rating" min="1" max="10"></label>
        <br>
        <br>
         <label for="embeddedCode">Video Link</label><br>
  	<input type="text" id="embeddedCode" name="embeddedCode" placeholder="optional">
    
    <input type="submit" value="Submit"/>
    </form>
   


  
</body>
</html>