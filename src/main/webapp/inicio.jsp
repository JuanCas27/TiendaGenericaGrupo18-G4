<%@page import="paqueteJava.Calculos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Primer JSP</title>
<style>
	body{
		background-color: lightblue;	
		color: white;	
	}
	
	h1{
		color: white;
	}
	
	span{
		color: red;
	}
</style>
</head>
<body>
	<h1>Primer JSP</h1>
	<a href = "index.html">Volver</a><br>
	La fecha del sistema es: <span><%= new java.util.Date() %></span><br>
	Convertir a mayúsculas: <%= new String ("Juancho").toUpperCase() %><br>
	La suma de 5 y 7 es: <%= 5+7 %><br>
	¿10 es mayor que 100? <%= 10>100 %><br>
	<%
		for (int i=0; i<10; i++){
			out.println("<br>Este es el mensaje "+i);
		}	
	%>
	
	<%!
		private int resultado;
		
		public int metodoSuma(int num1, int num2){
			resultado = num1+num2;
			return resultado;			
		}	
	%>
	<br>
	<%= metodoSuma(5,7) %><br>
	La resta de 8 y 3 es: <%= Calculos.metodoResta(8, 3) %><br>
	Petición datos del navegador: <%= request.getHeader("User-Agent") %><br>
	Petición de idioma utilizado: <%= request.getLocale() %><br>
	
	<jsp:include page="contenido.jsp"></jsp:include>
	<jsp:include page="contenido.jsp"></jsp:include>
	<jsp:include page="contenido.jsp"></jsp:include>
	
</body>
</html>