<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:template titulo="Cadastro de vaga">
	
	<jsp:attribute name="scripts">
		
		
	</jsp:attribute>
	
	<jsp:body>
	<h1>Cadastro De Vaga</h1>
		<form action="cadastrar" method="post">
			<div class="form-group">
				<label for="titulo">Titulo:</label>
				<input type="text" name="titulo" id="titulo">
			</div>
			<div class="form-group">
				<label for="salario">Salário:</label>
				<input type="text" name="salario" id="salario">
			</div>
			<div class="form-group">
				<input type="checkbox" name="beneficios" id="beneficios">
				<label for="beneficios">Beneficios:</label>
			</div>
			<div class="form-group">
				<input type="radio" name="tipo" value="CLT" id="clt">
				<label for="clt">CLT</label>
				<input type="radio" name="tipo" value="PJ" id="pj">
				<label for="pj">PJ</label>
			</div>
			<div class="form-group">
				<label for="descricao">Descrição:</label><br>
				<textarea rows="10" cols="50" name="descricao" id="descricao"></textarea>
			</div>
			<input type="submit" value="Cadastrar" class="btn btn-primary">
		</form>
	</jsp:body>	
</tags:template>
