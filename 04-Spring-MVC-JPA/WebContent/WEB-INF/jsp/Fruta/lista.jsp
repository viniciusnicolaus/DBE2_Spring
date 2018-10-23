<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:template titulo="Lista de Frutas">


	<h1>Frutas</h1>

	<c:if test="${not empty msg}">
		<div class="alert alert-success">${msg }</div>
	</c:if>
	<table class="table">
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Valor</th>
			<th>Quantidade</th>
			<th>Orgânico</th>
			<th>Promoção</th>
			<th>Data Vencimento</th>
			<th></th>
		</tr>
		<c:forEach items="${frutas}" var="f">
			<tr>
				<td>${f.codigo }</td>
				<td>${f.nome }</td>
				<td>${f.valor }</td>
				<td>${f.quantidade }</td>
				<td>${f.organico?"SIM":"NÃO"}</td>
				<td>${f.promocao?"SIM":"NÃO" }</td>
				<td>
					<fmt:formatDate value="${f.dataVencimento.time}"
					pattern="dd/MM/yyyy"/>
				</td>
				<td>
					<a href="<c:url value="/fruta/editar/${f.codigo }"/> "class="btn btn-primary">Editar</a>
								
					<button onclick="codigoFruta.value = ${f.codigo}" 
					type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
						Excluir
					</button>
					
					<button <c:if test="${f.promocao}">disabled</c:if> onclick="codigoFruta2.value = ${f.codigo}" 
					type="button" class="btn btn-success" data-toggle="modal" data-target="#modal2">
						Promoção
					</button>
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
					<div class="modal-body">Deseja realmente excluir a fruta?</div>
					
					<div class="modal-footer">
					<form action="<c:url value="/fruta/excluir"/>" method="post">
						<input type="hidden" name="codigo" id="codigoFruta">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
						<button type="submit" value="" class="btn btn-danger">Excluir</button>
					</form>
					</div>
					
				</div>
			</div>
		</div>
		
		<!-- Modal de promoção  -->
		<div class="modal fade" id="modal2" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Promoção</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="<c:url value="/fruta/promover"/>" method="post">
		
					<div class="modal-body">
						Deseja colocar essa fruta em promoção?</div>
					<input type="text" name="desconto" placeholder="(%) de desconto" class="form-control">
				
					<div class="modal-footer">
						<input type="hidden" name="codigo" id="codigoFruta2">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
						<button type="submit" value="" class="btn btn-danger">Concluir</button>
					</div>
					</form>
				</div>
			</div>
		</div>

</tags:template>