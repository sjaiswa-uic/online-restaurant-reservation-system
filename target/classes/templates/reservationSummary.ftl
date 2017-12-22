<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Reservation summary</title>
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
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
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
	<div class="header-nav">
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
						<li class="active"><a href="about.html">Reservation Summary</a></li>
						<#if reservationCount < 3>
  							<li><a href="/smriti/showdates">Book a Table</a></li>
						</#if>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div><!-- /.navbar-collapse -->

			</nav>
		</div>
	</div>
<!-- //header -->
<!-- banner -->
	<div class="banner2 animated wow slideInUp" data-wow-delay=".5s">
	</div>
<!-- //banner -->
<!-- events -->
	<div class="events">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">
				Upcoming Reservations
			</h3>
			
					<#if (reservationCount >= 3)>
  						<h4 style="color:#F00;">You have reached the maximum number of reservations you can create !</h4>
					</#if>
					
			<div class="events-grids">
			<#list reservations as reservation>
			    <form id = "cancel_form${reservation?index}">
				<div class="col-md-4 events-grid animated wow slideInLeft" data-wow-delay=".5s">
					<div class="mnth-date">
						<div class="col-xs-5 mnth-date-left">
							<h4>${reservation.displayDate!}</h4>
						</div>
						<div class="col-xs-7 mnth-date-right">
							<p>You have reserved the table number ${reservation.tableId!} on this day.</p>
						</div>
						<div class="clearfix"> </div>
						<p class="quasi">Your reservation number is # ${reservation.reservationId!} for future reference
							and your reservation status is ${reservation.reservationStatus!}.</p>
						<div class="more">
							<a href="#" id="cancel-reservation">Cancel Reservation</a>
						</div>
					</div>
				</div>
				<input type="hidden" id="reservationId1" name="reservationId1" value="${reservation.reservationId!}">
				<input type="hidden" id="tableId" name="tableId" value="${reservation.tableId!}">
				</form>
			</#list>
			
			<script>
			$(document).ready(function() {
				  $('#cancel-reservation').click(function(e) {
					  e.preventDefault();
					  //do some verification
					  
					  var form = $(this).closest('form');
					  $.ajax({
						  url: 'unholdreservation',
						    type: "POST",
						    data: form.serialize(),
						    success: function(data) {
						      //callback methods go right here
						      alert("Your reservation has been cancelled.");
						      location.reload();
						    }
					  });
				  });
			});
			</script>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //events -->
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
		<!-- 		<div class="col-md-4 footer-grid animated wow slideInLeft" data-wow-delay=".8s">
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
				<p>© 2017 Smriti Restaurant.</p>
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
