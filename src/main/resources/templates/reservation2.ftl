<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Sea King Restaurant Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

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
						<li><a href="/smriti/summary">Reservation Summary</a></li>
						<li class="active"><a href="/smriti/showdates">Book a Table</a></li>
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
<!-- blog -->
	<div class="blog">
		<div class="container">
			<h2 class="animated wow zoomIn" data-wow-delay=".5s">Please select a Date.</h2>
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
					      <button class="btn btn-success submit">Submit reservation</button>
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
					        <button type="button" class="btn btn-default" data-dismiss="modal" id="submit-reservation">OK</button>

					        <form method="post" name="reservationform" id="reservationform">
								<input type="hidden" id="reservationDate" name="reservationDate" value="${reservationdate!}">
								<input type="hidden" id="selectedTable" name="selectedTable" value="">
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

								$(document).ready(function() {
								  $('#submit-reservation').click(function(e) {
									  e.preventDefault();
									  //do some verification
									  $.ajax({
									    url: 'holdreservation',
									    type: "POST",
									    data: $('#reservationform').serialize(),
									    success: function(data) {
									      //callback methods go right here
									      alert(data.reservationId + ':::' + data.reservationStatus);
									      if(data.reservationStatus == -3){
									    	  document.forms['dateform'].submit(); 
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
									

									//addRect(30, 90, 60, 90, tableFillReserved, 'table-unavailable')
									//addRect(210, 90, 90, 60, tableFillUnavailable, 'table-unavailable')
									//addRect(210, 210, 90, 60, tableFillAvailable, 'table')
									//addRect(0, 210, 90, 60, tableFillReserved, 'table-unavailable')
									//addRect(0, 330, 90, 60, tableFillAvailable, 'table')
									//addRect(210, 330, 90, 60, tableFillUnavailable, 'table-unavailable')
									//addRect(0, 450, 60, 60, tableFillAvailable, 'table')
									//addRect(0, 570, 60, 60, tableFillAvailable, 'table')
									//addRect(210, 480, 60, 90, tableFillAvailable, 'table')
									//addRect(210, 630, 90, 60, tableFillUnavailable, 'table-unavailable')

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
									addDefaultObjects()
								</#if>
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