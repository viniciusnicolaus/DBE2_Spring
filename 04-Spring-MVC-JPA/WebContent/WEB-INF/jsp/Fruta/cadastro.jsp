<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:template titulo="Cadastro fruta">
	
	
	<h1>Cadastro fruta</h1>
	
	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg }
		</div>
	</c:if> 
		
			<form action="cadastrar" method="post">
				<div class="form-group">
					<label for="nome">Nome:</label>
					<input type="text" name="nome" id="nome" class="form-control">
				</div>
				<div class="form-group">
					<div class="form-group">
					<label for="organico">Orgânico:</label>
					<input type="checkbox" name="organico" id="organico">
				</div>
				</div>
				<div class="form-group">
					<label for="quantidade">Quantidade:</label>
					<input type="number" name="quantidade" id="quantidade" class="form-control">
				</div>
				<div class="form-group">
					<label for="valor">Valor:</label>
					<input type="number" name="valor" id="valor" class="form-control">
				</div>
				<div class="form-group">
					<label for="id-data">Data Vencimento</label>
					<input type="text" name="dataVencimento" id="id-data" class="form-control">
				</div>
				<div class="form-group">
					<input type="checkbox" value=false name="promocao" id="id-promocao" disabled="disabled">
					<label for="id-promocao">Promoção</label>
				</div>
				<input type="submit" value="Cadastrar" class="btn btn-success">
			</form>

</tags:template>