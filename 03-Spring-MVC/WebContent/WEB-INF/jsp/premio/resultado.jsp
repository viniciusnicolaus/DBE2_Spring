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
			<label>Classifica��o:</label>
			${p.classificacao}
		</div>
		<div>
			<label>Valor:</label>
			${p.valor}
		</div>
		<div>
			<label>Medalha:</label>
			${p.medalha?"Sim":"N�o"}
		</div>
	</div>
	
</tags:template>
