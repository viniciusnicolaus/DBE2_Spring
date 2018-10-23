<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:template titulo="Resultado do Cadastro">
		<div>
		${msg}
	</div>
	<div>	
		${v.titulo}
		${v.salario}
		${v.tipo}
		${v.beneficios?"Sim":"Não"}
		${v.descricao}
	</div>
</tags:template>
