<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro aluno</title>
</head>
<body>

	<h1>Cadastro aluno</h1>
	<form action="cadastrar" method="post">
	<div>
		<label for="nome">Nome:</label>
		<input type="text" name="nome">
	</div>
	<div>
		<label for="idade">Idade:</label>
		<input type="text" name="idade">
	</div>
	
	<div>
		<input type="radio" value="aprovado" name="status">Aprovado
		<input type="radio" value="reprovado" name="status">Reprovado
	</div>
	
	<div>
		<label for="">Bolsista:</label>
		<input type="checkbox" name="bolsista">
	</div>

	<input type="submit" value="Cadastrar">
	</form>
	${mensagem}
	${nome}
	${mensagem2}
	${status}
</body>
</html>