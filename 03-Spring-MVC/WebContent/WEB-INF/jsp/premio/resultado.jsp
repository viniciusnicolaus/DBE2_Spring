<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:template titulo="Resultado do premio">
	
	
	<div class="alert alert-success">
		${msg}
	</div>
	<div class="container">	
		<div>
			<label>Nome:</label>
			${p.nome}
		</div>
		<div>
			<label>Classificação:</label>
			${p.classificacao}
		</div>
		<div>
			<label>Valor:</label>
			${p.valor}
		</div>
		<div>
			<label>Medalha:</label>
			${p.medalha?"Sim":"Não"}
		</div>
	</div>
	
</tags:template>
