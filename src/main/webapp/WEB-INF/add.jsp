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
<form action="/add" method = "post">
  <label for="title">Title</label><br>
  <input type="text" id="title" name="title"><br>
  <label for="artist">Artist</label><br>
  <input type="text" id="artist" name="artist">
  <label for="rating">Rating:</label>
  <select name="rating" id="rating">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
  </select>
   <label for="embeddedCode">Video Link</label><br>
  <input type="text" id="embeddedCode" name="embeddedCode" placeholder="optional">
  <br><br>
   <input type="submit" value="Add Song">
</form>
</body>
</html>