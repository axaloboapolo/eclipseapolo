<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login - Apolo</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>	
  <section class="container">
    <div align="center">
    	<table>
    		<tr>
    			<td align="center">
					<img src="img/logoaxacentroreinv.jpg" height="150" width="450"/>
    			</td>
    		</tr>
    	</table>
    <br>
    <br>
    </div>
    <div class="login">
      <h1>Administrador de tarifa Apolo</h1>
      <form method="post" action="inicio.jsp">
        <p><input type="text" name="login" value="" placeholder="Usuario o e-mail"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>
        <p class="submit"><input type="submit" name="commit" value="Entrar"></p>
      </form>
    </div>
  </section>
</body>
</html>