<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>

<tags:template titulo="Lista Frutas">
	<div class="alert alert success">${msg}</div>

	<div class="container">
		<div>
			<label>Nome:</label> ${f.nome}
		</div>
		<div>
			<label>Orgânico</label> ${f.organico?"Sim":"Não"}
		</div>
		<div>
			<label>Nome:</label> ${f.quantidade}
		</div>
		<div>
			<label>Nome:</label> ${f.valor}
		</div>
	</div>


</tags:template>