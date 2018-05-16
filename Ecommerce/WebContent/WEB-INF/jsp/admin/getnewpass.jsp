<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath }/assets/admin/plugins/images/favicon.png">
<title>Elite Admin - is a responsive admin template</title>
<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css"
	rel="stylesheet">
<!-- animation CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/css/animate.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/css/style.css"
	rel="stylesheet">
<!-- color CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/css/colors/default.css"
	id="theme" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
	<!-- Preloader -->
	<div class="preloader">
		<div class="cssload-speeding-wheel"></div>
	</div>
	<section id="wrapper" class="login-register">
		<div class="login-box">
			<div class="white-box">
				<form class="form-horizontal form-material" id="loginform"
					action="${pageContext.request.contextPath }/admin/account/changenewpass.html"
					method="post" name="user">
					<h3 class="box-title m-b-20">New Password</h3>
					<input type="hidden" name="username" value="${user.username }">
					<div class="form-group ">
						<div class="col-xs-12">
							<input class="form-control" type="password" required=""
								placeholder="Password" name="password" id="password"
								onkeyup="checkPass()">
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-12">
							<input class="form-control" type="password" required=""
								placeholder="Re-enter password" name="password2" id="password2"
								onkeyup="checkPass()">
						</div>
						<span id="confirmMessage" class="confirmMessage"></span>

					</div>
					<div class="form-group text-center m-t-20">
						<div class="col-xs-12">
							<button
								class="btn btn-primary btn-lg btn-block text-uppercase waves-effect waves-light"
								type="submit">Reset</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		function checkPass() {

			var get_elem = document.getElementById, pass1 = document
					.getElementById('password'), pass2 = document
					.getElementById('password2'), message = document
					.getElementById('confirmMessage'), colors = {
				goodColor : "#fff",
				goodColored : "#087a08",
				badColor : "#fff",
				badColored : "#ed0b0b"
			}, strings = {
				"confirmMessage" : [ "good", "bad" ]
			};

			if (password.value === password2.value
					&& (password.value + password2.value) !== "") {
				password2.style.backgroundColor = colors["goodColor"];
				message.style.color = colors["goodColored"];
				message.innerHTML = strings["confirmMessage"][0];
			} else if (!(password2.value === "")) {
				password2.style.backgroundColor = colors["badColor"];
				message.style.color = colors["badColored"];
				message.innerHTML = strings["confirmMessage"][1];
			} else {
				message.innerHTML = "";
			}

		}}
	</script>
	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/bootstrap/dist/js/tether.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"></script>
	<!-- Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
	<!--slimscroll JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/jquery.slimscroll.js"></script>
	<!--Wave Effects -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/waves.js"></script>
	<!-- Custom Theme JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/custom.min.js"></script>
	<!-- Sparkline chart JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/jquery-sparkline/jquery.charts-sparkline.js"></script>
	<!--Style Switcher -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>
</html>
