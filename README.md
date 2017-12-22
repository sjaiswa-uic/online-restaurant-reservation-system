<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:f="http://java.sun.com/jsf/core">

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<h:outputScript library="javax.faces" name="jsf.js" target="body" />
<h:outputStylesheet library="styles" name="style.css" target="body" />
<h:outputScript library="javascript" name="spinner.js" target="body" />
<link rel="stylesheet" href="assets/demo.css" />
<link rel="stylesheet" href="assets/form-mini.css" />
<link rel="stylesheet" href="assets/header-second-bar.css"/>
<link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="assets/font-awesome.min.css"/>
<meta name="keywords" content="footer, address, phone, icons" />
<link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css" />

<title>Mini Form</title>

<style>


strong {
	font-weight: bold; 
}

em {
	font-style: italic; 
}

table {
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 12px;
	line-height: 24px;
	margin: 30px auto;
	text-align: left;
	width: 800px;
}	

th {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
  font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;	
}

th:after {
	background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}

th:first-child {
	border-left: 1px solid #777;	
	box-shadow: inset 1px 1px 0 #999;
}

th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}

td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}	

td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}	

tr {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:nth-child(odd) td {
	background: #f1f1f1 url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff; 
}

tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}	

tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}	

hr.style2 {
	border-top: 3px double #8c8b8b;
}

hr.style3 {
	border-top: 1px dashed #8c8b8b;
}

hr.style17 { 
  height: 30px; 
  border-style: solid; 
  border-color: #8c8b8b; 
  border-width: 1px 0 0 0; 
  border-radius: 20px; 
} 
hr.style17:before { 
  display: block; 
  content: ""; 
  height: 30px; 
  margin-top: -31px; 
  border-style: solid; 
  border-color: #8c8b8b; 
  border-width: 0 0 1px 0; 
  border-radius: 20px; 
}

</style>


</head>


<header class="header-two-bars">

	<div class="header-first-bar">

		<div class="header-limiter">

			<h1><img src="assets/uicbusiness_logo_red.png" height="50" width="230"
			alt="User Image" /></h1>
		</div>

	</div>

	<div class="header-second-bar">

		<div class="header-limiter">
			<h2><a href="#">User Guide S17G307</a></h2>

			<nav>
				<a href="#"><i class="fa fa-comments-o"></i> </a>
				
			</nav>

		</div>

	</div>

</header>

<ul></ul>

<div class="main-content">

		<div class="form-mini-container" style="max-width:750px;">
		
		<div class="form-mini" method="post" action="#" style="max-width:750px;">
			<h1>User Guide</h1> <hr class="style2"/>
<p style="font-family:calibri;">Welcome to s17g307 Data Analysis Users guide.
The following steps may help you in navigating through the application:</p>
<h4>Database Login</h4><hr class="style17"/>
<p style="color:black;">Login with credentials in the database login page. Be sure to input correct login credentials and select the appropriate database servers.
 After successful login, a page with the options of 'Data interaction', 'Data Import', 'Data Export', 'Descriptive stats', and 'Regression Analysis' at the top bar is displayed. <br/>
<h4>Database Interaction</h4><hr class="style17"/>
The database interaction page consists of tables available in the database and an area to display all the columns of any table selected. Any specific data can be extracted from any column by putting a database query and running it in the "Enter Native SQL query text box".<br/>

<h4>Data Import</h4><hr class="style17"/>
In the data import page, data files in the form of excel, csv, and tab delimited text can be uploaded to the server and inserted into a table. Selection of the file format, file type and header row available can be made by the drop down menus present in the page. It is important to understand the distinction between Metadata and regular data. Metadata is information about the data you want to upload. For instance, the names of each column and their associated data types can be stored in the metadata. Data is just the data itself that will go into the table. It should be noted that the header option must be properly set according to whether the data has headers or not. Otherwise the import may not work properly. After importing the data the user will have the option to unselect rows with problematic data and refrain from importing them altogether.<br/>
<h4>Data Export</h4><hr class="style17"/>
Any table that has been imported can be exported in the form of an XML, Excel, or a CSV file in the 'Data Export' page. To make data available for export please see the Data Import section. <br/>
<h4>Descriptive Statistics</h4><hr class="style17"/>
In the Descriptive statistics page, a list of datasets is available for analysis and permits the user to choose a specific dataset from a dropdown list to work with. The user can select any column from that table to get the statistics of that column. Similarly, in the graphical analysis tab, the user can select any column to get the univariate analysis by bar chart or pie chart.<br/>
<h4>Regression Analysis</h4><hr class="style17"/>
In the Regression analysis page, a simple regression analysis is performed using one independent and one depend variable. The user can select any two columns. Upon submission the linear regression for the selected variables will be displayed. The first tab displays the quantitative statistics of the regression like regression equation, regression model, and ANOVA values. The second tab displays the graphical representation of the regression in the form of either a scatter plot or a time-series plot based on the user's selection.<br/>
The user can log out anytime by the logout button.<br/> <hr class="style2"/></p>
			</div>
			</div>
</div>

</html>
