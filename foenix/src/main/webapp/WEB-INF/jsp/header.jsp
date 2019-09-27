<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Foenix</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
   <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
   <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #3d6388!important;">
  <a class="navbar-brand" href="#">Foenix</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#foenixNavDropdown" aria-controls="foenixNavDropdown" aria-expanded="false" aria-label="Toggle Foenix">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="foenixNavDropdown">
    <ul class="navbar-nav">
    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/country/">Country, Well& Sample selector</a></li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#"  id="projectDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Project</a>
        <div class="dropdown-menu" aria-labelledby="projectDropdown">
          <a class="dropdown-item" href="#">New Project</a>
          <a class="dropdown-item" href="#">Load Project</a>
          <a class="dropdown-item" href="#">Refresh Project</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#"  id="databaseDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Database</a>
         <div class="dropdown-menu" aria-labelledby="databaseDropdown">
         <c:forEach  items="${dbList}" var="dbname">
          <a class="dropdown-item" href="<%=request.getContextPath()%>/db/">${dbname}</a>
          </c:forEach>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#"  id="moduleDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Modules</a>
         <div class="dropdown-menu" aria-labelledby="moduleDropdown">
         <c:forEach  items="${modules}" var="module">
          <a class="dropdown-item" href="#">${module}</a>
          </c:forEach>
        </div>
      </li>
      <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/sample_edit/">Edit Sample</a></li>
    </ul>
  </div>
</nav>
</body>
</html>
