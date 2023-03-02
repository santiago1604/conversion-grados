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

