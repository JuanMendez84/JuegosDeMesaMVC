<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/recursos/css/chatgpt.css">
<title>Insert title here</title>
</head>
<body>

	<form:form action="procesarFormJuego" modelAttribute="juegoNuevo">
<!-- 	En path poner los getters sin el get y con la primera minuscula -->
		Nombre: <form:input path="nombre" /><br><br>
		Numero minimo de jugadores: <form:input path="minJugadores" /><form:errors path="minJugadores" /><br><br>
		Numero maximo de jugadores: <form:input path="maxJugadores" /><form:errors path="maxJugadores" /><br><br>
		Categor�a <form:input path="categoria" /><br><br>
		Es cooperativo? <form:select path="esCooperativo">
							<form:option value="Si" label="Si"/>
							<form:option value="No" label="No"/>
						</form:select><br><br>
		Tem�ticas:<br>
					Fantas�a <form:checkbox path="tematica" value="Fantasia"/>
					Terror <form:checkbox path="tematica" value="Terror"/>
					Ciencia Ficci�n<form:checkbox path="tematica" value="Ciencia Ficci�n"/><br><br>
					
		<input type="submit" value="Enviar">
	
	</form:form>

</body>
</html>