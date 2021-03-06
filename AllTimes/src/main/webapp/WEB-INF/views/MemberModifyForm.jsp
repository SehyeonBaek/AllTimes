<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>MemberModifyForm</title>

<!--Bootstrap core CSS-->
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/custom.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/responsive-style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/weather-icons.min.css"
	rel="stylesheet">
<link rel="${pageContext.request.contextPath}/stylesheet"
	type="text/css" href="resources/css/font-awesome.min.css" />
<link
	href="${pageContext.request.contextPath}/resources/css/lightbox.min.css"
	rel="stylesheet">
<link rel="${pageContext.request.contextPath}/stylesheet"
	type="text/css" href="resources/css/loaders.css" />

</head>

<body>
	<div class="loader loader-bg">
		<div class="loader-inner ball-pulse-rise">
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>

	<header>
		<div class="small-top">
			<div class="container">
				<div class="col-lg-4 date-sec hidden-sm-down">
					<div id="Date"></div>
				</div>
				<div class="col-lg-3 offset-lg-5">
					<div class="social-icon">
						<a target="_blank" href="#" class=" fa fa-facebook"></a> <a
							target="_blank" href="#" class=" fa fa-twitter"></a> <a
							target="_blank" href="#" class=" fa fa-google-plus"></a> <a
							target="_blank" href="#" class=" fa fa-linkedin"></a> <a
							target="_blank" href="#" class=" fa fa-youtube"></a> <a
							target="_blank" href="#" class=" fa fa-vimeo-square"></a>
					</div>
				</div>
			</div>
		</div>
		<div class="top-head left">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-4">
						<h1>
							AllTimes<small>MemberModifyForm</small>
						</h1>
					</div>

					<div class="col-md-6 col-lg-5 offset-lg-3 admin-bar hidden-sm-down">
						<nav class="nav nav-inline">
							<a href="" class="nav-link"><span class="ping"></span><i
								class="fa fa-envelope-o"></i></a> <a href="#" class="nav-link"><i
								class="fa fa-bell-o"></i></a> <a href="MemberModifyForm"
								class="nav-link">Bruce Wayne <img
								class="img-fluid img-circle" src="resources/img/admin-bg.jpg"></a>
						</nav>

					</div>
				</div>
			</div>
		</div>
	</header>

	<nav class="navbar top-nav">
		<div class="container">
			<button class="navbar-toggler hidden-lg-up " type="button"
				data-toggle="collapse" data-target="#exCollapsingNavbar2"
				aria-controls="exCollapsingNavbar2" aria-expanded="false"
				aria-label="Toggle navigation">&#9776;</button>
			<div class="collapse navbar-toggleable-md" id="exCollapsingNavbar2">
				<a class="navbar-brand" href="#">Responsive navbar</a>
				<ul class="nav navbar-nav ">
					<li class="nav-item active"><a class="nav-link"
						href="MemberModifyForm">????????????<span class="sr-only"></span></a></li>

					<c:choose>
						<c:when test="${memberModify.mstate == 1}">
							<li class="nav-item"><a class="nav-link"
								href="ReporterWriteForm">?????? ??????</a></li>
						</c:when>
					</c:choose>

			
					<c:choose>
						<c:when test="${memberModify.mstate == 1}">
							<li class="nav-item"><a class="nav-link"
								href="ArticleModifyForm">??? ?????? ??????</a></li>
						</c:when>
					</c:choose>

				</ul>
			</div>
			</form>



			<table>
				<form action="MemberModify" method="post">
					<div style="margin: 40px">
						<div class="form-group row">
							<div class="col-sm-4 mb-3">
								<label>?????????</label> <input type="text" name="mid"
									class="form-control form-control-user"
									value="${memberModify.mid }" disabled="disabled"> <input
									type="hidden" name="mid" class="form-control form-control-user"
									value="${memberModify.mid }">
							</div>
							<div class="col-sm-4">
								<label>????????????</label> <input type="text" name="mpw"
									class="form-control form-control-user "
									value="${memberModify.mpw }">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-sm-4 mb-3">
								<label>??????</label> <input type="text" name="mname"
									class="form-control form-control-user"
									value="${memberModify.mname }">
							</div>
							<div class="col-sm-4">

								<label for=viewRbith>?????? ?????? ?????? ??????</label>
								<c:choose>
									<c:when test="${memberModify.mstate == 1}">
										<input type="text" name=""
											class="form-control form-control-user " value="?????? ??????"
											disabled="disabled">
									</c:when>
									<c:otherwise>
										<input type="text" name=""
											class="form-control form-control-user " value="?????? ??????"
											disabled="disabled">
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-4">
								<label for="viewMmail">?????????</label> <input type="email"
									name="mmail" class="form-control form-control-user "
									value="${memberModify.mmail }">
							</div>
							<div class="col-sm-4">
								<label for="viewMagel">??????</label> <input type="text" name="mage"
									class="form-control form-control-user "
									value="${memberModify.mage }">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-4">
								<label for="viewMmail">????????????</label> <input type="text"
									name="mcontact" class="form-control form-control-user "
									value="${memberModify.mcontact }">
							</div>
							<div class="col-sm-4">
								<input type="submit"
									class="btn-primary form-control form-control-user "
										id="submitBtn" style="float: right;" value="????????????">
							</div>
						</div>

					</div>
				</form>

			</table>
		</div>
	</nav>

	<footer>

		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-12">
					<h6 class="heading-footer">ABOUT US</h6>
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text ever since the 1500s, when an unknown printer took a
						galley.</p>
					<p>
						<i class="fa fa-phone"></i> <span>Call Us :</span> +91 9999 878
						398
					</p>
					<p>
						<i class="fa fa-envelope"></i> <span>Send Email :</span>
						info@webenlance.com
					</p>
				</div>
				<div class="col-lg-2 col-md-4">
					<h6 class="heading-footer">QUICK LINKS</h6>
					<ul class="footer-ul">
						<li><a href="#"> Career</a></li>
						<li><a href="#"> Privacy Policy</a></li>
						<li><a href="#"> Terms & Conditions</a></li>
						<li><a href="#"> Client Gateway</a></li>
						<li><a href="#"> Ranking</a></li>
						<li><a href="#"> Case Studies</a></li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-4">
					<h6 class="heading-footer">LATEST NEWS</h6>
					<div class="post">
						<p>
							Key Republicans sign letter warning against candidate<span>August
								3,2015</span>
						</p>
						<p>
							Obamacare Appears to Be Making People Healthie <span>August
								3,2015</span>
						</p>
						<p>
							Syria war: Why the battle for Aleppo matters<span>August
								3,2015</span>
						</p>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 social-icons">
					<h6 class="heading-footer">FOLLOW</h6>
					<ul class="footer-ul">
						<li><a href="#"><i class=" fa fa-facebook"></i> Facebook</a></li>
						<li><a href="#"><i class=" fa fa-twitter"></i> Twitter</a></li>
						<li><a href="#"><i class=" fa fa-google-plus"></i>
								Google+</a></li>
						<li><a href="#"><i class=" fa fa-linkedin"></i> Linkedin</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!--footer start from here-->

	<div class="copyright">
		<div class="container">
			<div class="col-lg-6 col-md-4">
				<p>
					Shared by <i class="fa fa-love"></i><a
						href="https://bootstrapthemes.co">BootstrapThemes</a>
				</p>
			</div>
			<div class="col-lg-6 col-md-8">
				<ul class="bottom_ul">
					<li><a href="#">About us</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Faq's</a></li>
					<li><a href="#">Contact us</a></li>
					<li><a href="#">Site Map</a></li>
				</ul>
			</div>
		</div>
	</div>


	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/core.js?val=1"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/lightbox-plus-jquery.min.js"></script>
	<script type="text/javascript">
		var msg = '${modifyMsg}';
		if (msg != '') {
			alert(msg);
		}
	</script>

</body>
</html>