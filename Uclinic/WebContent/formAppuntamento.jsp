<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.*"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/367813bf67.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/form.css">
    <script src="javascript/appuntamento.js"></script>

      
    <title>Appuntamento</title>
</head>

<%int idDottore = Integer.parseInt(request.getParameter("idDottore")); %>

<body>

<div class="container">

<div class="form-group">	               
				
                   

	<form action="" method="post" name="formi" id="form">
	 <div class="form-group"><input type="hidden"   value="<%=idDottore%>" name="idDottore"  class="form-control" ></div>
		<label for="lang">Giorno</label> <select name="giorno" id="giorno">
			<option value=""></option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>

		</select> 
		
		
		<label for="lang">Mese</label> <select name="mese" id="mese">
			<option value=""></option>
			<option value="1">Gennaio</option>
			<option value="2">Febbraio</option>
			<option value="3">Marzo</option>
			<option value="4">Aprile</option>
			<option value="5">Maggio</option>
			<option value="6">Giugno</option>
			<option value="7">Luglio</option>
			<option value="8">Agosto</option>
			<option value="9">Settembre</option>
			<option value="10">Ottobre</option>
			<option value="11">Novembre</option>
			<option value="12">Dicembre</option>
		</select>
		
		 <label for="lang">Anno</label> <select name="anno" id="anno">
			<option value=""></option>
			<option value="2022">2022</option>
			<option value="2023">2023</option>
			<option value="2024">2024</option>

		</select> 
		
		<label for="lang">Ora</label> <select name="ora" id="ora">
		    <option value=""></option>
			<option value="9">09:00-10:00</option>
			<option value="10">10:00-11:00</option>
			<option value="11">11:00-12:00</option>
			<option value="12">12:00-13:00</option>
			<option value="13">13:00-14:00</option>
		</select>
		
		<div class="button">
             <input type="submit" onclick="controllocalendario()" class="btn btn-primary" value="Conferma">
                    
       
        
        </div>
		
	</form>
</div>
</div>
</body>
</html>