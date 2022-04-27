//funzione controllo calendario

function controllocalendario(){
	var giornoF = document.formi.giorno.value;
	var meseF = document.formi.mese.value;
	var annoF = document.formi.anno.value;
	var oraF = document.formi.ora.value;
	
	var form = document.getElementById("form");
	var esito = true;
	
	var data = new Date();
	
	var giorno = data.getDate();
	var mese = data.getMonth()+1;
	var anno = data.getFullYear();
	var ora = data.getHours();
	
	
	if((giornoF == "") || (giornoF == "undefined")){
		alert("Data non valida!");
		giornoF.focus();
		esito=false;
	}
	
	if((meseF == "") || (meseF == "undefined")){
		alert("Data non valida!");
		meseF.focus();
		esito=false;
	}
	
	
	if((annoF == "") || (annoF == "undefined")){
		alert("Data non valida!");
		annoF.focus();
		esito=false;
	}
	
	if((oraF == "") || (oraF == "undefined")){
		alert("Data non valida!");
		esito=false;
	}
	
	
	if(giornoF==giorno && meseF == mese && annoF ==anno){
		alert("Data non valida!");
		esito = false;
	}
	
	
	if(giornoF==(giorno+3)||giornoF==(giorno+2)||giornoF==(giorno+1)||giornoF==giorno||giornoF<giorno){
		alert("Data non valida!");
		esito=false;
	}
	
	
		if(giornoF<giorno && meseF == mese && annoF ==anno){
		alert("Data non valida!");
		esito = false;
	}
	
	if(giornoF>giorno && meseF == mese && annoF<anno){
		alert("Data non valida!");
		esito = false;
	}
	
	if(giornoF>giorno && meseF < mese && annoF==anno){
		alert("Data non valida!");
		esito = false;
	}
	
		
	if (esito == true){
		form.action = "PrenotaAppuntamento";
	}else {
		form.action = "formAppuntamento.jsp"
	}

	
}










