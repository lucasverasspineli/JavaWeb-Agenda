<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
/* Criando um Teste para vê se está funcionando
for(int i = 0; i < lista.size(); i++){
	//este comando imprimi direto no Página sem ser no Console!
	out.println(lista.get(i).getIdcon());
	out.println(lista.get(i).getNome());
	out.println(lista.get(i).getFone());
	out.println(lista.get(i).getEmail());
}*/
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Agenda de Contatos</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Agenda de Contatos</h1>
	<a href="novo.html" Class="Botao1">Novo contato </a>
	<a href="report" class="Botao2">Relatório </a>
	<!-- Criando um identificador para o CSS -->
	<table id="tab">
		<!--  Um cabeçalho <thead> -->
		<thead>
			<!-- Criando uma linha <tr> -->
			<tr>
				<!-- Criando uma coluna <th> para Cabeçalho, nos cabelhaos 
				usam o <th> nome_coluna </th> diferente no corpo da tabela que 
				usa-se o <td>conteudo_coluna</td> -->
				<th>Id</th>
				<th>Nome</th>
				<th>Fone</th>
				<th>Email</th>
				<th>Opções</th>
			</tr>
			<!-- Corpo da Tabela -->
		<tbody>
			<!-- Mesclando o conteudo html com Java -->
			<!-- o For fica assim, e dentro dele irá o hmtl com Scriptlet, e depois
		fecha o for com outro Scriptlet -->
			<%
			for (int i = 0; i < lista.size(); i++) {
			%>
			<!--  Uma linha -->
			<tr>
				<!--  4 colunas para cada Campo da tabela -->
				<!-- Lembrando que o ScriptLet<= Não tem Vírgula no final>, 
				pq ele pega o conteudo da variável-->
				<td><%=lista.get(i).getIdcon()%></td>
				<td><%=lista.get(i).getNome()%></td>
				<td><%=lista.get(i).getFone()%></td>
				<td><%=lista.get(i).getEmail()%></td>
				<!-- Botão com o Style que foi criado no CSS -->
				<!-- A ? diz que vai encaminhar ao documento um parâmetro -->
				<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>"class="Botao1">Editar</a>
					 <!-- Como é um link não pode usar a função Action, quando se trata de link
					 tem que se usar no href=" javascript : nome_função(valor_parametro) 
					 se houver um parâmetro, isso para referênciar o javascript -->
					 <a href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)" class="Botao2">Excluir</a>
				</td>
			</tr>
			<%
			}
			%>

		</tbody>
		</thead>
	</table>
	<script src="scripts/confirmador.js"></script>
</body>
</html>