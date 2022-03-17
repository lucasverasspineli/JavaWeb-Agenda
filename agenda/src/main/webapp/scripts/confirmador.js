/**
 * Confirmação de exclusão de um contato
@author Lucas 
 */
function confirmar(idcon) {
	let resposta = confirm('Confirma a exclusão deste contato ?')
	if (resposta === true) {
		/*teste para vê se está funcionando!
		alert(idcon)*/
		/*No JavaScprit  ele faz um redirecionamento window.location.href
		Aqui ele pega um link local e transfere para ser tratado no Servellet
		mesma lógica com link modificar */
		window.location.href="delete?idcon=" + idcon
	}

}