<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String user=request.getParameter("login"); %>
    <%String perf=request.getParameter("perfil"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	body{
		background-color: White;
	}
	div{
		vertical-align:middle;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header</title>
</head>
<body>
	<div>
		<img src="img/img_header.jpg" height="60" width="500" align="middle"/>
		<table align="right">
			<tr>
				<td>Usuario:</td><td><%=user%></td>
			</tr>
			<tr>
				<td>Perfil:</td><td><%=perf%></td>
			</tr>
		</table>
	</div>
</body>
</html>