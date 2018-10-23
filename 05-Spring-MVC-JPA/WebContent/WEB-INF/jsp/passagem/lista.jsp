<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:template titulo="Passagens">

	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg }
		</div>
	</c:if> 

	<h1>Passagens</h1>

	<table class="table">
		<tr>
			<th>Origem</th>
			<th>Destino</th>
			<th>Data</th>
			<th>Bagagem</th>
			<th>Valor</th>
			<th>Check-in</th>
			<th></th>
		</tr>
	<c:forEach items="${ passagens }" var="p">
		
		<tr>
			<td>${p.origem }</td>
			<td>${p.destino }</td>
			<td>
				<fmt:formatDate value="${p.data.time}"
				pattern="dd/MM/yyyy"/>
			</td>
			<td>${p.bagagem?"Sim":"Não" }</td>
			<td>${p.valor }</td>
			<td>${p.checkin?"Sim":"Não"} </td>
			
			<td>
				
				<c:if test = "${ p.checkin != true }" >
					<a title="Editar" href="<c:url value="/passagem/editar/${ p.codigo }"/> 
					"class="btn btn-outline-primary"><i class="fas fa-edit"></i></a>
					
					<button title="Excluir" onclick="codigoPassagem.value = ${p.codigo}" 
						type="button" class="btn btn-outline-danger" data-toggle="modal" 
						data-target="#exampleModal">
							<i class="fas fa-trash-alt"></i>
					</button>
					
						<button title="Checkin" onclick="codigoCheckin.value = ${p.codigo}" 
						type="button" class="btn btn-outline-success" data-toggle="modal" 
						data-target="#exampleModal2">
							<i class="fas fa-check-circle"></i>
					</button>
				</c:if>
			</td>
		</tr>
	</c:forEach>

	</table>
	
	<!-- Modal de excluir-->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Excluir</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">Deseja realmente deletar sua passagem?</div>
					
					<div class="modal-footer">
					<form action="<c:url value="/passagem/excluir"/>" method="post">
						<input type="hidden" name="codigo" id="codigoPassagem">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
						<button type="submit" value="" class="btn btn-danger">Excluir</button>
					</form>
					</div>
					
				</div>
			</div>
		</div>
		<!-- Modal checkin-->
		<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Check-in</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">Deseja realizar seu check-in?</div>
					
					<div class="modal-footer">
					
					<form action="<c:url value="/passagem/checkin"/>" method="post">
					
						<input type="hidden" name="codigo" id="codigoCheckin">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
						<button type="submit" value="" class="btn btn-danger">Sim</button>
					</form>
					</div>
					
				</div>
			</div>
		</div>

</tags:template>