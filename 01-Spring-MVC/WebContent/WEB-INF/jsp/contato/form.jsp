<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contato-Enviar</title>
</head>
<body>
	
	<h1>Contato</h1>
	<form method="post" action="enviar">
		<div>
			<label for="nome">Nome:</label>
			<input type="text" name="nome" id="nome">
		</div>
		<div>
			<label for="email">E-mail:</label>
			<input type="text" name="email" id="email">
		</div>
		<div>
			<label for="tel">Telefone</label>
			<input type="text" name="tel" id="telefone">
		</div>
		<input type="submit" value="Enviar">
	</form>
	<!-- Exibe as informações enviadas pelo controller -->
	${mensagem}
	${nome}
</body>
</html>