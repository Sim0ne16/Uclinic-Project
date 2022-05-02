//funzione controllo calendario





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

	window.location = "formAppuntamento.jsp?idDottore=" + id + "&anno=" + anno + "&mese=0&giorno=0&ora=0";

    

}


function reloadPageMese() {
	var id = document.formi.idDottore.value;
	var anno = window.sessionStorage.getItem("anno");
	var mese = document.formi.meseA.value;
	window.sessionStorage.setItem("mese", mese);


	window.location = "formAppuntamento.jsp?idDottore=" + id + "&anno=" + anno + "&mese=" + mese + "&giorno=0&ora=0";


}



function reloadPageGiorno() {
	var id = document.formi.idDottore.value;
	var anno = window.sessionStorage.getItem("anno");
	var mese = window.sessionStorage.getItem("mese");
	var giorno = document.formi.giornoA.value;
    

	window.sessionStorage.setItem("giorno", giorno);


	window.location = "formAppuntamento.jsp?idDottore=" + id + "&anno=" + anno + "&mese=" + mese + "&giorno=" + giorno+"&ora=0";
    
  

}



function reloadPageOra() {
	var id = document.formi.idDottore.value;
	var anno = window.sessionStorage.getItem("anno");
	var mese = window.sessionStorage.getItem("mese");
	var giorno = window.sessionStorage.getItem("giorno")
	
	var ora = document.formi.oraA.value;
	
	window.sessionStorage.setItem("ora", ora);


	window.location = "formAppuntamento.jsp?idDottore="+ id + "&anno=" + anno + "&mese=" + mese + "&giorno=" + giorno+"&ora="+ora;
    
  

}


//prenota appuntamento 

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


	if ((giornoF == "") || (giornoF == "undefined") || (giornoF == 0)) {
		alert("Data non valida!");
		giornoF.focus();
		esito = false;
	}

	if ((meseF == "") || (meseF == "undefined")|| (meseF == 0)) {
		alert("Data non valida!");
		meseF.focus();
		esito = false;
	}


	if ((annoF == "") || (annoF == "undefined")|| (annoF == 0)) {
		alert("Data non valida!");
		annoF.focus();
		esito = false;
	}

	if ((oraF == "") || (oraF == "undefined")|| (oraF == 0)) {
		alert("Data non valida!");
		esito = false;
	}


	if (giornoF == giorno && meseF == mese && annoF == anno) {
		alert("Data non valida!");
		esito = false;
	}


	if ((giornoF == (giorno + 3) && meseF == mese  )|| (giornoF == (giorno + 2)&& meseF == mese ) 
	||( giornoF == (giorno + 1) &&  meseF == mese) ||( giornoF == giorno)&& meseF == mese)	 {
		alert("Puoi prenotare a distanza minima di 3 giorni da oggi!");
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
		var richiesta = window.confirm("Prenotazione Appuntamento Inviata!");
		form.action = "PrenotaAppuntamento";
		  return richiesta;

}
 else {
		var id = document.formi.idDottore.value;
		form.action = "formAppuntamento.jsp?idDottore="+id+"&anno=0&mese=0&giorno=0&ora=0";
	}


}


function validaAggiungiOrario(){
	
	var giorno = document.formgiorni.giorni.value;
	var mese = document.formgiorni.mese.value;
	var anno = document.formgiorni.anno.value;
	var oraI = document.formgiorni.oraI.value;
	var oraF = document.formgiorni.oraF.value;
	
	var idDoc = window.sessionStorage.getItem("idDoc");
	var formin = document.getElementById("formgiorni");
	
	
	var data = new Date();

	var giornoO = data.getDate();
	var meseO = data.getMonth() + 1;
	var annoO = data.getFullYear();
	
	
	var esito = true;
	

	if ( (document.getElementById("1").checked == false) && (document.getElementById("2").checked == false)   && (document.getElementById("3").checked == false)
	  && (document.getElementById("4").checked == false) && (document.getElementById("5").checked == false)   && (document.getElementById("6").checked == false) 
	  && (document.getElementById("7").checked == false) && (document.getElementById("8").checked == false)   && (document.getElementById("9").checked == false) 
	  && (document.getElementById("10").checked == false) && (document.getElementById("11").checked == false) && (document.getElementById("12").checked == false) 
	  && (document.getElementById("13").checked == false) && (document.getElementById("14").checked == false) && (document.getElementById("15").checked == false)
	  && (document.getElementById("16").checked == false) && (document.getElementById("17").checked == false) && (document.getElementById("18").checked == false)
	  && (document.getElementById("19").checked == false) && (document.getElementById("20").checked == false) && (document.getElementById("21").checked == false)
	  && (document.getElementById("22").checked == false) && (document.getElementById("23").checked == false) && (document.getElementById("24").checked == false)  
	  && (document.getElementById("25").checked == false) && (document.getElementById("26").checked == false) && (document.getElementById("27").checked == false)
	  && (document.getElementById("28").checked == false) && (document.getElementById("29").checked == false) && (document.getElementById("30").checked == false)
	  && (document.getElementById("31").checked == false)  )  {
		alert("Devi scegliere almeno un giorno!");
		giorno.focus();
		esito = false;

	}
	
	
	if(
	   (( document.getElementById("1").checked == true) && (document.getElementById("1").value<giornoO ) &&( mese == meseO))   ||
	   (( document.getElementById("2").checked == true) && (document.getElementById("2").value<giornoO ) &&( mese == meseO))   ||
	   (( document.getElementById("3").checked == true) && (document.getElementById("3").value<giornoO ) &&( mese == meseO))   ||
	   (( document.getElementById("4").checked == true) && (document.getElementById("4").value<giornoO ) &&( mese == meseO))   ||
	   (( document.getElementById("5").checked == true) && (document.getElementById("5").value<giornoO ) &&( mese == meseO))   ||
	   (( document.getElementById("6").checked == true) && (document.getElementById("6").value<giornoO ) &&( mese == meseO))   ||
	   (( document.getElementById("7").checked == true) && (document.getElementById("7").value<giornoO ) &&( mese == meseO))   ||
	   (( document.getElementById("8").checked == true) && (document.getElementById("8").value<giornoO ) &&( mese == meseO))   ||
	   (( document.getElementById("9").checked == true) && (document.getElementById("9").value<giornoO ) &&( mese == meseO))   ||
	   (( document.getElementById("10").checked == true) && (document.getElementById("10").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("11").checked == true) && (document.getElementById("11").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("12").checked == true) && (document.getElementById("12").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("13").checked == true) && (document.getElementById("13").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("14").checked == true) && (document.getElementById("14").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("15").checked == true) && (document.getElementById("15").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("16").checked == true) && (document.getElementById("16").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("17").checked == true) && (document.getElementById("17").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("18").checked == true) && (document.getElementById("18").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("19").checked == true) && (document.getElementById("19").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("20").checked == true) && (document.getElementById("20").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("21").checked == true) && (document.getElementById("21").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("22").checked == true) && (document.getElementById("22").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("23").checked == true) && (document.getElementById("23").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("24").checked == true) && (document.getElementById("24").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("25").checked == true) && (document.getElementById("25").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("26").checked == true) && (document.getElementById("26").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("27").checked == true) && (document.getElementById("27").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("28").checked == true) && (document.getElementById("28").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("29").checked == true) && (document.getElementById("29").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("30").checked == true) && (document.getElementById("30").value<giornoO ) &&( mese == meseO)) ||
	   (( document.getElementById("31").checked == true) && (document.getElementById("31").value<giornoO ) &&( mese == meseO))
	){
		alert("Non puoi tornare indietro nel passato!");
		giorno.focus();
		esito = false;
	}
	
	
	if ((mese == "") || (mese == "undefined")) {
		alert("Devi scegliere il mese!");
		mese.value = "";
		mese.focus();
		esito = false;

	}
	
	if(mese<meseO && anno == annoO){
	 alert("Non puoi tornare indietro nel passato!");
		mese.value = "";
		mese.focus();
		esito = false;
	}
	
	
	if ((anno == "") || (anno == "undefined")) {
		alert("Devi scegliere l'anno!");
		anno.value = "";
		anno.focus();
		esito = false;

	}
	
	
	
	
	
	if(oraF<oraI ){
		alert("Orario non valido");
		esito = false;
	}
	
	if( oraF == oraI){
		alert("Orario non valido");
		esito = false;
	}
	
	
	
	if(esito==true){
		var richiesta = window.confirm("L'Orario verra aggiunto ! ");
		formin.action="aggiungiOrariDottore"
		return richiesta;
	}
	
}

