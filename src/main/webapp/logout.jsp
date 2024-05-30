<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	    session.invalidate();
	    response.sendRedirect("index.jsp");
	%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CERRANDO SESIÓN</title>
</head>
<body>
	<h1>VUELVE PRONTO</h1>
</body>
</html>