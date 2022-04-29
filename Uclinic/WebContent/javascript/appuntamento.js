//funzione controllo calendario


//prenota appuntamento 
function controllocalendario() {
	var giornoF = document.formi.giorno.value;
	var meseF = document.formi.mese.value;
	var annoF = document.formi.anno.value;
	var oraF = document.formi.ora.value;

	var form = document.getElementById("form");
	var esito = true;

	var data = new Date();

	var giorno = data.getDate();
	var mese = data.getMonth() + 1;
	var anno = data.getFullYear();
	var ora = data.getHours();


	if ((giornoF == "") || (giornoF == "undefined")) {
		alert("Data non valida!");
		giornoF.focus();
		esito = false;
	}

	if ((meseF == "") || (meseF == "undefined")) {
		alert("Data non valida!");
		meseF.focus();
		esito = false;
	}


	if ((annoF == "") || (annoF == "undefined")) {
		alert("Data non valida!");
		annoF.focus();
		esito = false;
	}

	if ((oraF == "") || (oraF == "undefined")) {
		alert("Data non valida!");
		esito = false;
	}


	if (giornoF == giorno && meseF == mese && annoF == anno) {
		alert("Data non valida!");
		esito = false;
	}


	if (giornoF == (giorno + 3) || giornoF == (giorno + 2) || giornoF == (giorno + 1) || giornoF == giorno) {
		alert("Data non valida!");
		esito = false;
	}


	if (giornoF < giorno && meseF == mese && annoF == anno) {
		alert("Data non valida!");
		esito = false;
	}

	if (giornoF > giorno && meseF == mese && annoF < anno) {
		alert("Data non valida!");
		esito = false;
	}

	if (giornoF > giorno && meseF < mese && annoF == anno) {
		alert("Data non valida!");
		esito = false;
	}


	if (esito == true) {
		form.action = "PrenotaAppuntamento";
	} else {
		form.action = "formAppuntamento.jsp"
	}


}








// regolazione giorni in base al mese 

function giorniM() {

	var giorno31 = document.getElementById("giorno31");
	var meseF = document.formgiorni.mese.value;

	var esito = true;




	if (meseF == 4 || meseF == 6 || meseF == 9 || meseF == 11) {

		document.getElementById("sett5").style.display = "initial";
		giorno31.style.display = "none";


	}

	if (meseF == 2) {

		document.getElementById("sett5").style.display = "none";
		giorno31.style.display = "none";

	}


	if (meseF == 1 || meseF == 3 || meseF == 5 || meseF == 7 || meseF == 8 || meseF == 10 || meseF == 12) {

		document.getElementById("sett5").style.display = "initial";
		giorno31.style.display = "initial";

	}


}




// funzione ricarica pagina in base all'anno selezionato

function reloadPageAnno() {
	var id = document.formi.idDottore.value;
	var anno = document.formi.annoA.value;

	window.sessionStorage.setItem("anno", anno);

	window.location = "formAppuntamento.jsp?idDottore=" + id + "&anno=" + anno + "&mese=0" + "&giorno=0";

    

}


function reloadPageMese() {
	var id = document.formi.idDottore.value;
	var anno = window.sessionStorage.getItem("anno");
	var mese = document.formi.meseA.value;
	window.sessionStorage.setItem("mese", mese);


	window.location = "formAppuntamento.jsp?idDottore=" + id + "&anno=" + anno + "&mese=" + mese + "&giorno=0";


}



function reloadPageGiorno() {
	var id = document.formi.idDottore.value;
	var anno = window.sessionStorage.getItem("anno");
	var mese = window.sessionStorage.getItem("mese");
	var giorno = document.formi.giornoA.value;
    

	window.sessionStorage.setItem("giorno", giorno);


	window.location = "formAppuntamento.jsp?idDottore=" + id + "&anno=" + anno + "&mese=" + mese + "&giorno=" + giorno;
    
  

}


function controllocalendarioFormApp() {
	var giornoF = document.formi.giornoA.value;
	var meseF = document.formi.meseA.value;
	var annoF = document.formi.annoA.value;
	var oraF = document.formi.oraA.value;

	var form = document.getElementById("form");
	var esito = true;

	var data = new Date();

	var giorno = data.getDate();
	var mese = data.getMonth() + 1;
	var anno = data.getFullYear();
	var ora = data.getHours();


	if ((giornoF == "") || (giornoF == "undefined")) {
		alert("Data non valida!");
		giornoF.focus();
		esito = false;
	}

	if ((meseF == "") || (meseF == "undefined")) {
		alert("Data non valida!");
		meseF.focus();
		esito = false;
	}


	if ((annoF == "") || (annoF == "undefined")) {
		alert("Data non valida!");
		annoF.focus();
		esito = false;
	}

	if ((oraF == "") || (oraF == "undefined")) {
		alert("Data non valida!");
		esito = false;
	}


	if (giornoF == giorno && meseF == mese && annoF == anno) {
		alert("Data non valida!");
		esito = false;
	}


	if (giornoF == (giorno + 3) || giornoF == (giorno + 2) || giornoF == (giorno + 1) || giornoF == giorno) {
		alert("Data non valida!");
		esito = false;
	}


	if (giornoF < giorno && meseF == mese && annoF == anno) {
		alert("Data non valida!");
		esito = false;
	}

	if (giornoF > giorno && meseF == mese && annoF < anno) {
		alert("Data non valida!");
		esito = false;
	}

	if (giornoF > giorno && meseF < mese && annoF == anno) {
		alert("Data non valida!");
		esito = false;
	}


	if (esito == true) {
		form.action = "PrenotaAppuntamento";
	} else {
		form.action = "formAppuntamento.jsp"
	}


}


