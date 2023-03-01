# conversion-grados
Se ha descubierto vida en el planeta Marte, pero los marcianos no utilizan para sus calculos valores en grados sino valores en radianes, ayuda a los marcianos con un programa que les permita convertir valores de estos dos tipos.

aplicacion web con java, html y css 

Bryan Rodríguez Barrientos

Yojahn Hair Leon Salamanca

Santiago Rojas Rovar


INDEX.HTML

<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
<head>
    <title>Conversion de grados y radianes</title>
  
    <style>
   h1 {
  font-size: 70px;
}
        form {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
        h1 {
            text-align: center;
  color: greenyellow;
}

    body {
  background-image: url(https://img.freepik.com/fotos-premium/marciano-cuela-detras-astronauta-marte-astronauta-encuentra-marciano-marte-primer-contacto_557878-1192.jpg?w=1480);
  background-position: downcenter ;
  background-repeat: no-repeat;
  background-size: cover;
}

  </style>
	
</head>
<body>
	<h1>CONVERSION DE GRADOS A RADIANES</h1>
        

	<form action="convertir.jsp" method="post" align="center" style="width: 500px; height: 400px;" >
		<label for="valor">Valor:</label>
		<input type="number" name="valor" id="valor" required>
		<br>
		<label for="grados">Grados a radianes:</label>
		<input type="radio" name="conversion" id="grados" value="grados" checked>
		<br>
		<label for="radianes">Radianes a grados:</label>
		<input type="radio" name="conversion" id="radianes" value="radianes">
		<br>
		<button type="submit">Convertir</button>
	</form>
            
</body>
</html>




CONVERTIR.JSP

<%-- 
    Document   : convertir
    Created on : 1/03/2023, 5:21:11 p. m.
    Author     : User
--%>

<%@ page language="java" %>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
    
	<title>Resultado de la conversión</title>
        <style>
  
        
        h1 {
            text-align: center;
  color: greenyellow;
  font-size: 70px;
}

p {
        text-align: center;
        color: lightblue;
        font-size: 50px;
      }
    body {
  background-image: url(https://img.freepik.com/fotos-premium/antecedentes-astronauta-marte-mirando-planeta_665346-5257.jpg?w=1480);
  background-position: down center ;
  background-repeat: no-repeat;
  background-size: cover;
}

  </style>

</head>
<body>
	<h1>Resultado de la conversión</h1>
	<%
		double valor = Double.parseDouble(request.getParameter("valor"));
		String conversion = request.getParameter("conversion");
		double resultado;
		String unidadOrigen;
		String unidadDestino;
		if (conversion.equals("grados")) {
			resultado = Math.toRadians(valor);
			unidadOrigen = "grados";
			unidadDestino = "radianes";
		} else {
			resultado = Math.toDegrees(valor);
			unidadOrigen = "radianes";
			unidadDestino = "grados";
		}
	%>
	<p>El valor de <%=valor%> <%=unidadOrigen%> es <%=resultado%> <%=unidadDestino%>.</p>
</body>
</html>


