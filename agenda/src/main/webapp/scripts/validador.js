/**
 *	Validação de Fromulário	
 * @author Lucas Veras
 */

function validar() {
	/**Teste para vê está pegando
	 alert('pegando')*/
	
	let nome = tabel.nome.value
	let fone = tabel.fone.value
	if (nome === "") {
		alert('Preencha o campo Nome')
		tabel.nome.focus()
		return false
	} else if (fone === "") {
		alert('Preencha o campo Fone')
		tabel.fone.focus()
		return false
	} else {
		document.forms["tabel"].submit()
	}
}
