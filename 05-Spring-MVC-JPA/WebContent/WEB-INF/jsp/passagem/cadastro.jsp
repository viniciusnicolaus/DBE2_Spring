<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:template titulo="Cadastro passagem">
	
	
	<h1>Cadastro Passagem</h1>
	
	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg }
		</div>
	</c:if> 
		
			<form action="cadastrar" method="post">
				<div class="form-group">
					<label for="origem">Origem:</label>
					<input type="text" name="origem" id="origem" class="form-control">
				</div>
				<div class="form-group">
					<label for="destino">Destino:</label>
					<input type="text" name="destino" id="destino" class="form-control">
				</div>
				<div class="form-group">
					<label for="data">Data:</label>
					<input type="text" name="data" id="data" class="form-control">
				</div>
				<div class="form-group">
					<input type="checkbox" value=false name="checkin" id="checkin" disabled="disabled">
					<label for="checkin">Checkin</label>
				</div>
				<div class="form-group">
					<input type="checkbox" value=false name="bagagem" id="bagagem" disabled="disabled">
					<label for="bagagem">Bagagem</label>
				</div>
				<div class="form-group">
					<label for="valor">Valor:</label>
					<input type="number" name="valor" id="valor" class="form-control">
				</div>
				
				
				<input type="submit" value="Cadastrar" class="btn btn-success">
			</form>

</tags:template>