<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:template titulo="Cadastro de premio">
	<jsp:attribute name="script">
	
	</jsp:attribute>
	
	<jsp:body>
		<h1>Cadastro de premio</h1>
			<form action="cadastrar" method="post">
				<div class="form-group">
					<label for="nome">Nome:</label>
					<input type="text" name="nome" id="nome" class="form-control">
				</div>
				<div class="form-group">
					<label for="classificacao">Classificação:</label>
					<select type="text" name="classificacao" id="classificacao" class="form-control">
						<option>Primeiro</option>
						<option>Segundo</option>
						<option>Terceiro</option>
					</select>
				</div>
				<div class="form-group">
					<label for="valor">Valor:</label>
					<input type="number" name="valor" id="valor" class="form-control">
				</div>
				<div class="form-group">
					<label for="medalha">Medalha:</label>
					<input type="checkbox" name="medalha" id="medalha">
				</div>
				
				<input type="submit" value="Cadastrar" class="btn btn-success">
	
			</form>
	</jsp:body>
</tags:template>
