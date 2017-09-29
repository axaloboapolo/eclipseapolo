<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
dl, dt, dd, ul, li {
margin: 0;
padding: 0;
list-style-type: none;
}
#menu {
position: absolute;
top: 1em;
left: 1em;
width: 10em;
}

#menu dt {
cursor: pointer;
background: #A9BFCB;
height: 20px;
line-height: 20px;
margin: 2px 0;
border: 1px solid gray;
text-align: center;
font-weight: bold;
}

#menu dd {
position: absolute;
z-index: 100;
left: 8em;
margin-top: -1.4em;
width: 10em;
background: #A9BFCB;
border: 1px solid gray;
}

#menu ul {
padding: 2px;
}
#menu li {
text-align: center;
font-size: 85%;
height: 18px;
line-height: 18px;
}
#menu li a, #menu dt a {
color: #000;
text-decoration: none;
display: block;
}

#menu li a:hover {
text-decoration: underline;
}

#mentions {
font-family: verdana, arial, sans-serif;
position: absolute;
bottom : 200px;
left : 10px;
color: #000;
background-color: #ddd;
}
#mentions a {text-decoration: none;
color: #222;
}
#mentions a:hover{text-decoration: underline;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>menu</title>
</head>
<body>
	<dl id="menu">
  <dt onmouseover="javascript:montre('smenu1');"><a href="incicio.jsp">Inicio</a></dt>
  <dd id="smenu1" onmouseover="javascript:montre('smenu1');" onmouseout="javascript:montre();">
  </dd>
  <dt onmouseover="javascript:montre('smenu2');" onmouseout="javascript:montre();">Catalogos</dt>
  <dd id="smenu2" onmouseover="javascript:montre('smenu2');" onmouseout="javascript:montre();">
   <ul>
    <li><a href="#">Administracion</a></li>
    <li><a href="#">Consulta</a></li>
   </ul>
  </dd>
  <dt onmouseover="javascript:montre('smenu3');" onmouseout="javascript:montre();">Tarifa</dt>
  <dd id="smenu3" onmouseover="javascript:montre('smenu3');" onmouseout="javascript:montre();">
   <ul>
    <li><a href="#">Mantenimiento tablas</a></li>
    <li><a href="#">Consulta tablas</a></li>
    <li><a href="#">Carga fichero</a></li>
    <li><a href="#">Consulta fichero</a></li>
   </ul>
  </dd>
  <dt onmouseover="javascript:montre('smenu4');" onmouseout="javascript:montre();">Cotizador</dt>
  <dd id="smenu4" onmouseover="javascript:montre('smenu4');" onmouseout="javascript:montre();">
   <ul>
    <li><a href="#">Carga por archivo</a></li>
    <li><a href="Cotizacion.jsp" target="central">Cotizar parque</a></li>
   </ul>
  </dd>
</dl>

<script type="text/javascript">
window.onload=montre;
function montre(id) {
var d = document.getElementById(id);
for (var i = 1; i<=10; i++) {
if (document.getElementById('smenu'+i)) {document.getElementById('smenu'+i).style.display='none';}
}
if (d) {d.style.display='block';}
}
</script>
</body>
</html>