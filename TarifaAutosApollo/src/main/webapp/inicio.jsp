<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String usuario = request.getParameter("login"); %>
<% String passe = request.getParameter("password"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="Apollo_Entra">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
<script type="text/javascript" src="/js/serve.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apollo tarifa</title>
</head>
<body style="background-color:WhiteSmoke;">
	<div style="background-color: White; vertical-align:middle;" >
		<img src="img/img_header.jpg" height="60" width="500" align="middle"/>
		<table align="right">
			<tr>
				<td>Usuario:</td><td><%=usuario%></td>
			</tr>
			<tr>
				<td>Perfil:</td><td><%=passe%></td>
			</tr>
		</table>
	</div>
	<iframe src="menu.jsp" frameborder="0" scrolling="no" align="left"></iframe>
	<iframe	frameborder="1" scrolling="no" align="middle" name="central" height="400" width="700"></iframe>
	
</body>
</html>