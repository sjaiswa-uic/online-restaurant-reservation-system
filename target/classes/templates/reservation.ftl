<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Book a Table</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Sea King Restaurant Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet" type="text/css" media="all" />

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="demo.css">
<link href="https://cdn.rawgit.com/leongersen/noUiSlider/master/distribute/nouislider.min.css" rel="stylesheet" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/1.7.11/fabric.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.rawgit.com/leongersen/noUiSlider/master/distribute/nouislider.min.js"></script>

<!-- //js -->
<!-- login-pop-up -->
<script src="js/menu_jquery.js"></script>
<!-- //login-pop-up -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet">
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>

<style>
$main-color: #6394F8;
$light-text: #ABB0BE;


*, *:before, *:after {
  box-sizing: border-box;
}

.lighter-text {
  color: #ABB0BE;
}

.main-color-text {
  color: #6394F8;
}

.container1 {
  margin: auto;
  width: 80%;
}

.badge {
    background-color: #6394F8;
    border-radius: 10px;
    color: white;
    display: inline-block;
    font-size: 12px;
    line-height: 1;
    padding: 3px 7px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
}

.shopping-cart {
  margin: 20px 0;
  float: right;
  background: white;
  width: 320px;
  position: relative;
  border-radius: 3px;
  padding: 20px;
  
  
  .shopping-cart-header {
    border-bottom: 1px solid #E8E8E8;
    padding-bottom: 15px;
    
    .shopping-cart-total {
      float: right;
    }
  }
  
  .shopping-cart-items {
    
    padding-top: 20px;

      li {
        margin-bottom: 18px;
      }

    img {
      float: left;
      margin-right: 12px;
    }
    
    .item-name {
      display: block;
      padding-top: 10px;
      font-size: 16px;
    }
    
    .item-price {
      color: $main-color;
      margin-right: 8px;
    }
    
    .item-quantity {
      color: #ABB0BE;
    }
  }
   
}

.shopping-cart:after {
	bottom: 100%;
	left: 89%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-bottom-color: white;
	border-width: 8px;
	margin-left: -8px;
}

.cart-icon {
  color: #515783;
  font-size: 24px;
  margin-right: 7px;
  float: left;
}

.button {
  background:#6394F8;
  color:white;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  display: block;
  border-radius: 3px;
  font-size: 16px;
  margin: 25px 0 15px 0;
  
  &:hover {
    background: lighten($main-color, 3%);
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}

#countdown{
	width: 150px;
	height: 150px;
	text-align: center;
	display: none;
    float: left;
	background: #222;
	background-image: -webkit-linear-gradient(top, #222, #333, #333, #222); 
	background-image:    -moz-linear-gradient(top, #222, #333, #333, #222);
	background-image:     -ms-linear-gradient(top, #222, #333, #333, #222);
	background-image:      -o-linear-gradient(top, #222, #333, #333, #222);
	border: 1px solid #111;
	border-radius: 5px;
	box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.6);
	margin: auto;
	padding: 20px 0;
	
  top: 0; bottom: 0; left: 0; right: 0;
}

#countdown:before{
	content:"";
	width: 8px;
	height: 65px;
	background: #444;
	background-image: -webkit-linear-gradient(top, #555, #444, #444, #555); 
	background-image:    -moz-linear-gradient(top, #555, #444, #444, #555);
	background-image:     -ms-linear-gradient(top, #555, #444, #444, #555);
	background-image:      -o-linear-gradient(top, #555, #444, #444, #555);
	border: 1px solid #111;
	border-top-left-radius: 6px;
	border-bottom-left-radius: 6px;
	display: block;
	position: absolute;
	top: 48px; left: -10px;
}

#countdown:after{
	content:"";
	width: 8px;
	height: 65px;
	background: #444;
	background-image: -webkit-linear-gradient(top, #555, #444, #444, #555); 
	background-image:    -moz-linear-gradient(top, #555, #444, #444, #555);
	background-image:     -ms-linear-gradient(top, #555, #444, #444, #555);
	background-image:      -o-linear-gradient(top, #555, #444, #444, #555);
	border: 1px solid #111;
	border-top-right-radius: 6px;
	border-bottom-right-radius: 6px;
	display: block;
	position: absolute;
	top: 48px; right: -10px;
}

#countdown #tiles{
	position: relative;
	z-index: 1;
}

#countdown #tiles > span{
	width: 92px;
	max-width: 92px;
	font: bold 48px 'Droid Sans', Arial, sans-serif;
	text-align: center;
	color: #111;
	background-color: #ddd;
	background-image: -webkit-linear-gradient(top, #bbb, #eee); 
	background-image:    -moz-linear-gradient(top, #bbb, #eee);
	background-image:     -ms-linear-gradient(top, #bbb, #eee);
	background-image:      -o-linear-gradient(top, #bbb, #eee);
	border-top: 1px solid #fff;
	border-radius: 3px;
	box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.7);
	margin: 0 7px;
	padding: 18px 0;
	display: inline-block;
	position: relative;
}

#countdown #tiles > span:before{
	content:"";
	width: 100%;
	height: 13px;
	background: #111;
	display: block;
	padding: 0 3px;
	position: absolute;
	top: 41%; left: -3px;
	z-index: -1;
}

#countdown #tiles > span:after{
	content:"";
	width: 100%;
	height: 1px;
	background: #eee;
	border-top: 1px solid #333;
	display: block;
	position: absolute;
	top: 48%; left: 0;
}

#countdown .labels{
	width: 100%;
	height: 25px;
	text-align: center;
	bottom: 8px;
}

#countdown .labels li{
	width: 102px;
	font: bold 15px 'Droid Sans', Arial, sans-serif;
	color: #f47321;
	text-shadow: 1px 1px 0px #000;
	text-align: center;
	text-transform: uppercase;
	display: inline-block;
}
</style>

</head>

<body>
<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="header-top-left animated wow slideInLeft" data-wow-delay=".5s">
				<p>IDS 520 Information, Infrastructure & Security : Group Number 13</p>
			</div>
			<div class="header-top-left1 animated wow slideInLeft" data-wow-delay=".7s">
				<h1>Contact Us<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span></h1>
			</div>
			<div class="header-top-right">
				<div id="loginContainer login"><a href="/smriti/logout"><span>Logout</span></a>
					
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="header-nav" style="background:white;">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
					<div class="logo animated wow slideInLeft" data-wow-delay=".5s">
						<a class="navbar-brand" href="index.html">Smriti <span>Restaurant</span></a>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="/smriti/summary">Reservation Summary</a></li>
						<li class="active"><a href="/smriti/showdates">Book a Table</a></li>
						<li><a href="contact.html">Contact Us</a></li>
						<li style="float:right;"><a href="#" id="cart"><i class="fa fa-shopping-cart"></i> Cart <span id="cart" class="badge"></span></a></li>
					</ul>
					</div><!-- /.navbar-collapse -->

			</nav>
		</div>
	</div>
<!-- //header -->


  <div class="shopping-cart" style="display: none;">
    <div class="shopping-cart-header">
      <i class="fa fa-shopping-cart cart-icon"></i><span id="cart1" class="badge">0</span>
      <div class="shopping-cart-total">
        <span id="datelabel" style="display: none;" class="lighter-text">Date :</span>
        <span id="datevalue" style="display: none;" class="main-color-text"></span>
      </div>
    </div> <!--end shopping-cart-header -->

    <ul class="shopping-cart-items">
      <li id="cart-full" class="clearfix" style="display: none;">
        <img src="images/restaurant.jpg" alt="item1" height="70" width="100"/>
        <span id="tablenumber" class="item-name"></span>
        <span class="item-quantity">Quantity: 01</span>
    	<a href="#" class="button" id="confirmbooking">Confirm Booking</a>
    	<a href="#" class="button" id="removebooking">Remove From Cart</a>
      </li>
      <li id="cart-empty" class="clearfix" >
        <span class="item-quantity">Your Shopping Cart is Empty</span>
      </li>
    </ul>

    
  </div> <!--end shopping-cart -->
  
  <div id="countdown">
  <div id='tiles'></div>
  <div class="labels">
    <li>Seconds</li>
  </div>
</div>

<!-- blog -->
	<div class="blog">
		<div class="container">
			<h2 class="animated wow zoomIn" data-wow-delay=".5s">Please select a Date & Table.</h2>
			<div class="blog-grids">

				<div class="container-fluid text-center">
					  <p class="text-muted">The layout is an exact representation of our restaurant</p>

					  	</br>
						<p class="text-muted">Please select a Table with this Date</p>
						<form action="loadreservation" method="post" name="dateform" id="dateform">
							<input id="reservationdate" type="date" min="2017-10-01" max="2017-10-31" name="selecteddate" value="${reservationdate!}">
						</form>
					  <div class="form-group admin-menu" style="display: none;">
					    <div class="row">
					      <div class="col-sm-2 col-sm-offset-3 form-group">
					        <label>Width (px)</label>
					        <input type="number" id="width" class="form-control" value="302" />
					      </div>
					      <div class="col-sm-2 form-group">
					        <label>Height (px)</label>
					        <input type="number" id="height" class="form-control" value="812" />
					      </div>
					      <div class="col-sm-2 form-group">
					        <label>&nbsp;</label>
					        <br />
					        <button class="btn btn-primary">Save</button>
					      </div>
					    </div>
					    <div class="btn-group">
					      <button class="btn btn-primary rectangle">+ &#9647; Table</button>
					      <button class="btn btn-primary circle">+ &#9711; Table</button>
					      <button class="btn btn-primary triangle">+ &#9651; Table</button>
					      <button class="btn btn-primary chair">+ Chair</button>
					      <button class="btn btn-primary bar">+ Bar</button>
					      <button class="btn btn-default wall">+ Wall</button>
					      <button class="btn btn-danger remove">Remove</button>
					      <button class="btn btn-warning customer-mode">Customer mode</button>
					    </div>
					  </div>

					  <div class="form-group customer-menu" style="display: none;">
					    <div class="btn-group">
					      <button class="btn btn-success submit">Add to Cart</button>
					      <button class="btn btn-warning admin-mode" style="display: none;">Admin mode</button>
					    </div>
					    <br />
						<br />
					    <div id="slider" style="display: none;"></div>
					    <div id="slider-value" style="display: none;"></div>
					  </div>

					  <canvas id="canvas" width="302" height="812"></canvas>
					</div>

					<div class="modal fade" id="modal" tabindex="-1" role="dialog">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-body text-center">
					        <p id="modal-table-id"></p>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal" id="add-to-cart">Add to Cart</button>

					        <form method="post" name="holdreservationform" id="holdreservationform">
								<input type="hidden" id="reservationDate" name="reservationDate" value="${reservationdate!}">
								<input type="hidden" id="selectedTable" name="selectedTable" value="">
							</form>
							
							<form method="post" name="completereservationform" id="completereservationform">
								<input type="hidden" id="reservationId" name="reservationId" value="">
							</form>
							
							<form method="post" name="cancelreservationform" id="cancelreservationform">
								<input type="hidden" id="reservationId1" name="reservationId1" value="">
								<input type="hidden" id="tableId" name="tableId" value="">
							</form>
							
					      </div>
					    </div>
					  </div>
					</div>
					<script src="demo.js"></script>
					<script>

								$(document).ready(function() {
								  $('#reservationdate').on('change', function() {
								     document.forms['dateform'].submit();
								  });
								});
								
								//remove
								$(document).ready(function() {
								 $('#removebooking').click(function(e) {
										      $.ajax({
												    url: 'unholdreservation',
												    type: "POST",
												    data: $('#cancelreservationform').serialize(),
												    success: function(data) {
												      //callback methods go right here
												      alert("Your reservation has been removed from the cart.");
												      document.forms['dateform'].submit(); 
												    }
											   });
								 		     });
										   });
								
								$(document).ready(function() {
									  $('#confirmbooking').click(function(e) {
										  e.preventDefault();
										  //do some verification
										  $.ajax({
										    url: 'confirmreservation',
										    type: "POST",
										    data: $('#completereservationform').serialize(),
										    success: function(data) {
										      //callback methods go right here
										      //alert(data.reservationId + ':::' + data.reservationStatus);
										      if(data == false){
										    	  alert('Something went wrong, Please try again !');
										    	  document.forms['dateform'].submit(); 
										      } else {
										    	  alert('Your reservation was completed successfully.');
										    	  window.location.href = "/smriti/summary";
										      }
										    }
										  });
									  });
								});
								
								$(document).ready(function() {
								  $('#add-to-cart').click(function(e) {
									  e.preventDefault();
									  //do some verification
									  $.ajax({
									    url: 'holdreservation',
									    type: "POST",
									    data: $('#holdreservationform').serialize(),
									    success: function(data) {
									      //callback methods go right here
									      //alert(data.reservationId + ':::' + data.reservationStatus);
									      if(data.reservationStatus == -3){
									    	  alert('Sorry but someone else just booked this table.');
									    	  document.forms['dateform'].submit(); 
									      } else {
									    	  startTimer();
									    	  $('#reservationId').val(data.reservationId);
									    	  $('#reservationId1').val(data.reservationId);
									    	  $('#tableId').val($("#selectedTable").val());
									    	  $('#cart-empty').fadeToggle("fast");
									    	  $('#cart-full').fadeToggle("fast");
									    	  $('#cart span').text('1');
									    	  $('#cart1').text('1');
									    	  $('#datelabel').fadeToggle("fast");
									    	  $('#datevalue').fadeToggle("fast");
									    	  $('#datevalue').text($("#reservationdate").val());
									    	  
									    	  $('#tablenumber').text('Table Number ' + $("#selectedTable").val());
									      }
									    }
									  });
								  });
								});

								function addDefaultObjects() {
									addChair(15, 105)
									addChair(15, 135)
									addChair(75, 105)
									addChair(75, 135)
									addChair(225, 75)
									addChair(255, 75)
									addChair(225, 135)
									addChair(255, 135)
									addChair(225, 195)
									addChair(255, 195)
									addChair(225, 255)
									addChair(255, 255)
									addChair(15, 195)
									addChair(45, 195)
									addChair(15, 255)
									addChair(45, 255)
									addChair(15, 315)
									addChair(45, 315)
									addChair(15, 375)
									addChair(45, 375)
									addChair(225, 315)
									addChair(255, 315)
									addChair(225, 375)
									addChair(255, 375)
									addChair(15, 435)
									addChair(15, 495)
									addChair(15, 555)
									addChair(15, 615)
									addChair(225, 615)
									addChair(255, 615)
									addChair(195, 495)
									addChair(195, 525)
									addChair(255, 495)
									addChair(255, 525)
									addChair(225, 675)
									addChair(255, 675)
									addChair(255, 675)
									addChair(15, 705)
	
									addChair(45, 705)
									addChair(15, 765)
									addChair(45, 765)
									addChair(225, 780)
  									addChair(225, 720)
									addChair(255, 780)
									addChair(255, 720)

									<#if reservations?has_content>
										<#list reservations as reservation>
						 					${reservation}
										</#list>
									</#if>
									addBar(120, 0, 180, 60)

									addWall(120, 510, 60, 60)

									canvas.getObjects().map(function(o) {
										o.hasControls = false
										o.lockMovementX = true
										o.lockMovementY = true
										if (o.type === 'chair' || o.type === 'bar' || o.type === 'wall' || o.type === 'table-unavailable') {
											o.selectable = false
										}
										o.borderColor = '#38A62E'
										o.borderScaleFactor = 2.5
									})
									canvas.selection = false
									canvas.hoverCursor = 'pointer'
									canvas.discardActiveObject()
									canvas.renderAll()
									document.querySelectorAll('.admin-menu')[0].style.display = 'none'
									document.querySelectorAll('.customer-menu')[0].style.display = 'block'
								}

								<#if reservations?has_content>
									addDefaultObjects();
								</#if>
									
									(function(){
										  $("#cart").on("click", function(e) {
											  e.preventDefault();
											  $(".shopping-cart").fadeToggle( "fast");
										  });
										  
										})();
									
									function startTimer(){		
									$("#countdown").fadeToggle( "fast");	
									var target_date = new Date().getTime() + (1000*30); // set the countdown date
									var seconds; // variables for time units

									var countdown = document.getElementById("tiles"); // get tag element

									getCountdown();

									var refreshId = setInterval(function () { getCountdown(); }, 1000);
									
									function getCountdown(){

										// find the amount of "seconds" between now and target
										var current_date = new Date().getTime();
										var seconds_left = (target_date - current_date) / 1000;

										seconds = pad( parseInt( seconds_left % 60 ) );
									  
										// format countdown string + set tag value
										if (seconds <= 10 ){
											countdown.innerHTML = "<span style=\"color:red\">" + seconds + "</span>";
										} else {
											countdown.innerHTML = "<span>" + seconds + "</span>";
										}
									  
									      if (seconds == 00){
										      clearInterval(refreshId);
										      $("#countdown").fadeToggle( "fast");
										      
										      $.ajax({
												    url: 'unholdreservation',
												    type: "POST",
												    data: $('#cancelreservationform').serialize(),
												    success: function(data) {
												      //callback methods go right here
												      alert("Your reservation has been removed from the cart.");
												      document.forms['dateform'].submit(); 
												    }
											   });
										      
										   }
									}

									function pad(n) {
										return (n < 10 ? '0' : '') + n;
									}
									}

					</script>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //blog -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-4 footer-grid animated wow slideInLeft" data-wow-delay=".5s">
					<h3>IDS 520</h3>
					<p>Restaurant Booking System</p>
					
				</div>
				<div class="col-md-4 footer-grid animated wow slideInLeft" data-wow-delay=".7s">
					<h3>Group Members</h3>
					<div class="dealer-grids">
						<div class="dealer-grid-left">
							<!-- <a href="single.html"><img src="images/15.jpg" alt=" " class="img-responsive" /></a> -->
						</div>
						<div class="dealer-grid-right">
							<h4><a href="single.html">Smriti Jaiswal</a></h4>
							<p>smriti</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="dealer-grids">
						<div class="dealer-grid-left">
							<!-- <a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive" /></a> -->
						</div>
						<div class="dealer-grid-right">
							<h4><a href="single.html">Rimpy Tewani</a></h4>
							<p>Rimpy</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="dealer-grids">
						<div class="dealer-grid-left">
							<!-- <a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive" /></a> -->
						</div>
						<div class="dealer-grid-right">
							<h4><a href="single.html">Bhoomika Ghosh</a></h4>
							<p>bhoomika</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="dealer-grids">
						<div class="dealer-grid-left">
							<!-- <a href="single.html"><img src="images/16.jpg" alt=" " class="img-responsive" /></a> -->
						</div>
						<div class="dealer-grid-right">
							<h4><a href="single.html">Rishika Reddy</a></h4>
							<p>rishika</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			<!-- 	<div class="col-md-4 footer-grid animated wow slideInLeft" data-wow-delay=".8s">
					<h3>Flickr Posts</h3>
					<div class="footer-grds">
						<div class="footer-grd">
							<a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive" /></a>
						</div>
						<div class="footer-grd">
							<a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive" /></a>
						</div>
						<div class="footer-grd">
							<a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive" /></a>
						</div>
						<div class="footer-grd">
							<a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive" /></a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="footer-grds">
						<div class="footer-grd">
							<a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive" /></a>
						</div>
						<div class="footer-grd">
							<a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive" /></a>
						</div>
						<div class="footer-grd">
							<a href="single.html"><img src="images/14.jpg" alt=" " class="img-responsive" /></a>
						</div>
						<div class="footer-grd">
							<a href="single.html"><img src="images/13.jpg" alt=" " class="img-responsive" /></a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div> -->
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="footer-copy">
		<div class="container">
			<div class="footer-left animated wow slideInUp" data-wow-delay=".5s">
				<p>© 2017 Smriti Restaurant</p>
			</div>
			<div class="footer-right animated wow slideInUp" data-wow-delay=".7s">
				<ul>
					<li><a href="#" class="p"> </a></li>
					<li><a href="#" class="facebook"> </a></li>
					<li><a href="#" class="in"> </a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>