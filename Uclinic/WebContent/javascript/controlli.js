




// funzione convalida codicefiscale


function validaCodiceFiscale(cf) {
	var validi, i, s, set1, set2, setpari, setdisp;
	if (cf == '') return '';
	cf = cf.toUpperCase();
	if (cf.length != 16)
		return false;
	validi = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	for (i = 0; i < 16; i++) {
		if (validi.indexOf(cf.charAt(i)) == -1)
			return false;
	}
	set1 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	set2 = "ABCDEFGHIJABCDEFGHIJKLMNOPQRSTUVWXYZ";
	setpari = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	setdisp = "BAKPLCQDREVOSFTGUHMINJWZYX";
	s = 0;
	for (i = 1; i <= 13; i += 2)
		s += setpari.indexOf(set2.charAt(set1.indexOf(cf.charAt(i))));
	for (i = 0; i <= 14; i += 2)
		s += setdisp.indexOf(set2.charAt(set1.indexOf(cf.charAt(i))));
	if (s % 26 != cf.charCodeAt(15) - 'A'.charCodeAt(0))
		return false;
	return true;
}


// Funzione medical history!

function validaMH() {
	var peso = document.form.peso.value;
	var altezza = document.form.altezza.value;
	
	
	var formM = document.getElementById("formMH")
	var esito = true;

  if ((peso <= 0) || (peso >= 561 )) {
        alert("Il valore inserito non e valido, riprova! (Utilizzare il punto per il peso )");
        peso.value = "";
        
        esito = false;
    }

    if ((altezza <= 40 ) ||  (altezza >= 216)){
        alert("Il valore inserito non e valido, riprova!");
        altezza.value = "";
       
         esito = false;
         
        }
        
           if(esito == true){
	formM.action = "modificaMH"
} 


	else {
		formM.action = "MedicalHistory.jsp"
	}     
         
    }

 




//funzione registrazione utente!




function registrazioneP() {
	var nome = document.forma.regPnome.value;
	var cognome = document.forma.regPcognome.value;
	var cf = document.forma.regPcf.value;
	var email = document.forma.regPemail.value;
	var password1 = document.forma.regPpassword.value;
	var password2 = document.forma.regPpassword2.value;
	var eta = document.forma.regPeta.value;
	var regione = document.forma.regPregione.value;
	var citta = document.forma.regPcitta.value;

	var formin = document.getElementById("formino");
	var esito = true;


	if ((nome == "") || (nome == "undefined")) {
		alert("Devi inserire il nome!");
		nome.value = "";
		nome.focus();
		esito = false;

	}

	if ((cognome == "") || (cognome == "undefined")) {
		alert("Devi inserire il cognome!");
		cognome.value = "";
		cognome.focus();
		esito = false;

	}

	if ((email == "") || (email == "undefined")) {
		alert("Devi inserire l'email'!");
		email.value = "";
		email.focus();
		esito = false;

	}


	if (validaCodiceFiscale(cf) == false) {
		alert("Codice fiscale non valido!!");
		cf.value = "";
		cf.focus();
		esito = false;
	}

	if (password1.length < 6 || (password1 == "") || (password1 == "undefined")) {
		alert("Scegli una password, minimo 6 caratteri");
		password1.focus();
		password1.value = "";
		esito = false;
	}

	if ((password2 == "") || (password2 == "undefined")) {
		alert("Devi confermare la password");
		password2.focus();
		esito = false;
	}
	if (password1 != password2) {
		alert("Le password non coincidono!");
		password1.value = "";
		password1.focus();
		password2.value = "";
		password2.focus();
		esito = false;
	}

	if ((isNaN(eta)) || (eta == "") || (eta == "undefined")) {
		alert("Devi inserire l'eta', deve essere numerico!");
		eta.value = "";
		eta.focus();
		esito = false;
	}
	if ((regione == "") || (regione == "undefined")) {
		alert("Devi inserire il nome!");
		regione.value = "";
		regione.focus();
		esito = false;

	}
	if ((citta == "") || (citta == "undefined")) {
		alert("Devi inserire il nome!");
		citta.value = "";
		citta.focus();
		esito = false;

	}

	if (esito == false) {
		formin.action = "formUtente.jsp";
	}

	else {
		formin.action = "RegistraPaziente"
	}

}


//funzione registrazione clinica!

function registrazioneC() {
	var nome = document.forma.regCnome.value;
	var regione = document.forma.regCregione.value;
	var citta = document.forma.regCcitta.value;
	var email = document.forma.regCemail.value;
	var password1 = document.forma.regCpassword.value;
	var password2 = document.forma.regCpassword2.value;
	var indirizzo = document.forma.regCindirizzo.value;
	var recapito = document.forma.regCrecapito.value;

	var esito = true;
	var formint = document.getElementById("formix")


	if ((nome == "") || (nome == "undefined")) {
		alert("Devi inserire il nome!");
		nome.value = "";
		nome.focus();
		esito = false;

	}

	if ((indirizzo == "") || (indirizzo == "undefined")) {
		alert("Devi inserire l'indirizzo!");
		indirizzo.value = "";
		indirizzo.focus();
		esito = false;

	}

	


	if ((email == "") || (email == "undefined")) {
		alert("Devi inserire l'email'!");
		email.value = "";
		email.focus();
		esito = false;

	}

	if (password1.length < 6 || (password1 == "") || (password1 == "undefined")) {
		alert("Scegli una password, minimo 6 caratteri");
		password1.focus();
		password1.value = "";
		esito = false;
	}
	
	//Effettua il controllo sul campo CONFERMA PASSWORD
	
	if ((password2 == "") || (password2 == "undefined")) {
		alert("Devi confermare la password");
		password2.focus();
		esito = false;
	}
	if (password1 != password2) {
		alert("Le password non coincidono!");
		password1.value = "";
		password1.focus();
		password2.value = "";
		password2.focus();
		esito = false;
	}



if ((isNaN(recapito)) || (recapito == "") || (recapito == "undefined")) {
		alert("Devi inserire il recapito, deve essere numerico!");
		recapito.value = "";
		recapito.focus();
		esito = false;
	}

	if (recapito.lenght < 8) {
		alert("Recapito troppo breve!");
		recapito.value = "";
		recapito.focus();
		esito = false;
	}

	if ((regione == "") || (regione == "undefined")) {
		alert("Devi inserire la regione!");
		regione.value = "";
		regione.focus();
		esito = false;

	}
	if ((citta == "") || (citta == "undefined")) {
		alert("Devi inserire la citta!");
		citta.value = "";
		citta.focus();
		esito = false;

	}

	if (esito == false) {
		formint.action = "formClinica.jsp";
	}

	else {
		formint.action = "RegistraClinica"
	}

}




//Funzione form aggiungi Dottore!

function controlloD() {
	var nome = document.formino.dNome.value;
	var cognome = document.formino.dCognome.value;
	var eta = document.formino.dEta.value;
	var email = document.formino.dEmail.value;
	var recapito = document.formino.dRecapito.value;
	var specializzazione = document.formino.dSpecializzazione.value;
	var costo = document.formino.dCosto.value;

	var formin = document.getElementById("aggiungiDoc");
	var esito = true;

	if ((nome == "") || (nome == "undefined")) {
		alert("Devi inserire il nome!");
		nome.value = "";
		nome.focus();
		esito = false;

	}

	if ((cognome == "") || (cognome == "undefined")) {
		alert("Devi inserire il cognome!");
		cognome.value = "";
		cognome.focus();
		esito = false;

	}

	if ((email == "") || (email == "undefined")) {
		alert("Devi inserire l'email!");
		email.value = "";
		email.focus();
		esito = false;

	}

	if ((isNaN(recapito)) ||(recapito == "") || (recapito == "undefined")) {
		alert("Devi inserire il recapito! deve essere numerico");
		recapito.value = "";
		recapito.focus();
		esito = false;

	}


	if ((specializzazione == "") || (specializzazione == "undefined")) {
		alert("Devi inserire la specializzazione!");
		specializzazione.value = "";
		specializzazione.focus();
		esito = false;

	}


	if ((isNaN(eta)) || (eta == "") || (eta == "undefined")) {
		alert("Devi inserire l'eta', deve essere numerico!");
		eta.value = "";
		eta.focus();
		esito = false;
	}


	if ((isNaN(costo)) || (costo == "") || (costo == "undefined")) {
		alert("Devi inserire il costo, deve essere numerico!");
		costo.value = "";
		costo.focus();
		esito = false;
	}



	if (esito == false) {
		formin.action = "formAggiungiDottore.jsp";
	}

	else {
		formin.action = "AggiungiDottore"
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
	
	if ((document.getElementById("1").checked == false) && (document.getElementById("2").checked = false) && (document.getElementById("3").checked = false) && 
	(document.getElementById("4").checked = false) &&  (document.getElementById("5").checked = false) &&  (document.getElementById("6").checked = false) && 
	(document.getElementById("7").checked = false) &&   (document.getElementById("8").checked = false)&&  (document.getElementById("9").checked = false)&& 
	(document.getElementById("10").checked = false) && (document.getElementById("11").checked = false)&&  (document.getElementById("12").checked = false)&& 
	(document.getElementById("13").checked = false) && (document.getElementById("14").checked = false)&&  (document.getElementById("15").checked = false)&& 
    (document.getElementById("16").checked = false) && (document.getElementById("17").checked = false)&&  (document.getElementById("18").checked = false)&& 
	(document.getElementById("19").checked = false) && (document.getElementById("20").checked = false)&&  (document.getElementById("21").checked = false)&& 
	(document.getElementById("22").checked = false) && (document.getElementById("23").checked = false)&&  (document.getElementById("24").checked = false)&& 
	(document.getElementById("25").checked = false) && (document.getElementById("26").checked = false)&&  (document.getElementById("27").checked = false)&& 
	(document.getElementById("28").checked = false) && (document.getElementById("29").checked = false)&&  (document.getElementById("30").checked = false)&& 
	(document.getElementById("31").checked = false))  {
		alert("Devi scegliere almeno 1 giorno!");
		giorno.value = "";
		giorno.focus();
		esito = false;

	}
	
	if(giorno<giornoO && mese == meseO){
		alert("Non puoi tornare indietro nel passato!");
		giorno.value = "";
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
	
	
	
	
	
	if(oraF<oraI || oraF == oraI){
		alert("Orario non valido");
		esito = false;
	}
	
	
	if(esito==true){
		formin.action="aggiungiOrariDottore"
	} 
	
}




