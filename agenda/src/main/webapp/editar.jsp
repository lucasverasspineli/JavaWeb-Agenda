<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Agenda de contato</title>
<link rel="icon" href="imagens/favicon.png">
<!-- Informar o tipo link e o nome do pagina -->
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Editar contato</h1>
	<!-- Adicionando uma Ação para levar os dados para tratar no Servellet  -->
	<form name="tabel" action="update">
		<table>
			<tr>  <!-- Quando se Cria um Id so pode usar uma única vez,
					já a classe pode reutilizar, id é um elemento único
					Para deixar um Caixa desabilitida só para Leitura coloca-se
					readonly-->
					<!-- o out.print() ele imprimi na tela da página diretamente
					poque não se usou o //<scriptlet = valor>, porque ele está
					encapsulado dentro de uma formulário html o valor! -->
				<td><input type="text" name="idcon" id="Caixa3" readonly value="<%out.print(request.getAttribute("idcon"));%>"></td>

			</tr>

			<tr>
				<td><input type="text" name="nome" class="Caixa1" value="<%out.print(request.getAttribute("nome"));%>"></td>
			</tr>

			<tr>
				<td><input type="text" name="fone" class="Caixa2" value="<%out.print(request.getAttribute("fone"));%>"></td>

			</tr>
			<tr>
				<td><input type="text" name="email" class="Caixa1" value="<%out.print(request.getAttribute("email"));%>"></td>

			</tr>
		</table>
		<!-- Quando se trata de Botão tem que ter uma ação, o tipo de Action 
		     onclick com nome do método JS -->
		<input type="button" value="Salvar" class="Botao1" onclick="validar()">
	</form>
	<!-- Criando o Link da conexão com JavaScript usando a Tag script,passando
src -->
	<script src="scripts/validador.js"></script>
</body>
</html>