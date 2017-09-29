<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<div>
			<input type="radio" name="CatCirculacion" value="Resdiente">Residente <br>
			<input type="radio" name="CatCirculacion" value="Fronterizo">Fronterizo<br>
			<input type="radio" name="CatCirculacion" value="Turista">Turista<br>
		</div>
		<div>
			<select>
				<option value="A">AUTO</option>
				<option value="B">CAMION DE PASAJEROS</option>
				<option value="C">CAMION DE CARGA</option>
				<option value="P">PICKUP</option>
				<option value="Z">TODOS</option> 
			</select>
		</div>
		<div>
			<h2>Variables</h2>
		</div>
		<div>
			<table>
				<tr>
					<th>Cobertura</th>
					<th>Aplica Cobertura</th>
					<th>Deducible</th>
					<th>Suma Asegurada</th>
				</tr>
				<tr>
					<td>Daños Materiales</td>
					<td><input type="checkbox" name="DM" value="Aplica"></td>
					<td><select>
							<option value="5">0</option>
							<option value="5">5</option>
							<option value="5">10</option>
						</select>
					</td>
					<td>
						-
					</td>
				</tr>
				<tr>
					<td>
						Robo Total
					</td>
					<td>
						<input type="checkbox" name="RC" value="Aplica">
					</td>
					<td>
						<select>
							<option value="5">0</option>
							<option value="5">5</option>
							<option value="5">10</option>
						</select>
					</td>
					<td>
						-
					</td>
				</tr>
				
			</table>
		</div>
	</form>
</body>
</html>