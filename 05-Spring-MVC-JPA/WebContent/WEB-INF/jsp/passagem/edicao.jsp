<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<tags:template titulo="Edi��o Passagem">
	
	
	<h1>Editar Passagem</h1>
	
	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg }
		</div>
	</c:if> 
	
	<c:url value="/passagem/editar" var="link"/>
	<form:form action="${ link }" method="post" commandName="passagem">
		<form:hidden path="codigo" />
		<form:hidden path="checkin"/>
		<div class="form-group">
			<form:label path="origem">Origem:</form:label>
			<form:input path="origem" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="destino">Destino:</form:label>
			<form:input path="destino" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="data">Data:</form:label>
			<form:input path="data" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="bagagem">Bagagem</form:label>
			<form:checkbox path="bagagem"/>
		</div>
		<div class="form-group">
			<form:label path="valor">Valor:</form:label>
			<form:input path="valor" cssClass="form-control" />
		</div>
		<input type="submit" value="Editar" class="btn btn-success">
		<a href="<c:url value="/passagem/listar"/>" class="btn btn-danger">Cancelar</a>
	</form:form>
				

</tags:template>