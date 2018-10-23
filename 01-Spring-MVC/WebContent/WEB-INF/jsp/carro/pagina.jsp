<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<tags:template titulo="Cadastro de carro">
	
	<jsp:attribute name="scripts">
	
	</jsp:attribute>
	
	<jsp:body>
		<h1>Cadastro de carro</h1>
		<form method="post" action="cadastrar">
			<div class="form-group">
				<label for="modelo">Modelo:</label>
				<input type="text" name="modelo" id="modelo">
			</div>
			<div class="form-group">
				<label for="ano">Ano:</label>
				<input type="text" name="ano" id="ano">
			</div>
			<div class="form-group">
				<label for="importado">Importado:</label>
				<input type="checkbox" name="importado" id="importado">
			</div>
			<div class="form-group">
				<label for="blindado">Blindado:</label>
				<input type="checkbox" name="blindado" id="blindado">
			</div>
			<div class="form-group">
				<label for="marca">Marca:</label>
				<input type="text" name="marca" id="marca">
			</div>
			<input type="submit" value="Cadastrar" class="btn btn-primary">
		</form>	
		${mensagem}
		${modelo} 
		${mensagem2}
		${marca}
	</jsp:body>
</tags:template>