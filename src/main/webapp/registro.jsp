<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
</head>
<body>
	<h2>Usuarios</h2>
	Usuario confirmado:<br>
	Nombre: <%= request.getParameter("nombre") %>
	<br>
	Apellido: <%= request.getParameter("apellido") %>
</body>
</html>