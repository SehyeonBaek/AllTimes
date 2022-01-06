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
<title>ReporterWriteForm</title>

<!--Bootstrap core CSS-->
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Custom styles for this template -->

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
							AllTimes<small>ReporterWriteForm</small>
						</h1>
					</div>

					<div class="col-md-6 col-lg-5 offset-lg-3 admin-bar hidden-sm-down">
						<nav class="nav nav-inline">
							<a href="home" class="nav-link"><span class="ping"></span><i
								class="fa fa-envelope-o"></i></a> <a href="#" class="nav-link"><i
								class="fa fa-bell-o"></i></a> <a href="MemberModifyForm"
								class="nav-link">Bruce Wayne <img
								class="img-fluid img-circle" src="resources/img/admin-bg.jpg"></a>
						</nav>
						<form action="ReporterWriteForm" method="post">
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
						href="MemberModifyForm">회원정보<span class="sr-only"></span></a></li>
					<li class="nav-item"><a class="nav-link"
						href="ReporterWriteForm">기사 작성</a></li>
					<li class="nav-item"><a class="nav-link"
						href="ReporterModifyForm">내 기사 관리</a></li>
				</ul>
			</div>
			</form>
			


		</div>
	</nav>
	<!-- 네비게이션 영역 끝 -->

	<!-- 게시판 글쓰기 양식 영역 시작 -->
	<div class="container">
		<div class="row">
			<form action="ReporterWrite" method="post" enctype="multipart/form-data">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">기사
								작성하기</th>
						</tr>
					</thead>
					<div class="container-group row">

						<div class="col-sm-8 mb-3 mb-sm-0">
							<label for="classify"></label>
							<div style="padding-top: 13px;"></div>


							<input type="radio" name="ar_genre" id="classify_e" value="경제"
								onclick="clickCheck(this)"> <label for="classify_e"
								class="btn btn-sm text-xs" style="background-color: orangered">경제</label>&nbsp;&nbsp;

							<input type="radio" name="ar_genre" id="classify_p" value=정치
								" onclick="clickCheck(this)"> <label for="classify_p"
								class="btn btn-sm text-xs" style="background-color: lime">정치</label>&nbsp;&nbsp;

							<input type="radio" name="ar_genre" id="classify_s" value="사회"
								onclick="clickCheck(this)"> <label for="classify_s"
								class="btn btn-sm text-xs" style="background-color: orange">사회</label>&nbsp;&nbsp;

							<input type="radio" name="ar_genre" id="classify_c" value="문화"
								onclick="clickCheck(this)"> <label for="classify_c"
								class="btn btn-sm text-xs" style="background-color: skyblue">문화</label>&nbsp;&nbsp;

							<input type="radio" name="ar_genre" id="classify_s" value="스포츠"
								onclick="clickCheck(this)"> <label for="classify_s"
								class="btn btn-sm text-xs " style="background-color: coral";>스포츠</label>&nbsp;&nbsp;

							<input type="radio" name="ar_genre" id="classify_i" value="국제"
								onclick="clickCheck(this)"> <label for="classify_i"
								class="btn btn-sm text-xs" style="background-color: aqua">국제</label>&nbsp;&nbsp;

							<input type="radio" name="ar_genre" id="classify_S" value="IT/과학"
								onclick="clickCheck(this)"> <label for="classify_S"
								class="btn btn-sm text-xs" style="background-color: dodgerblue">IT/과학</label>&nbsp;&nbsp;

							<input type="radio" name="ar_genre" id="classify_C" value="코로나특보"
								onclick="clickCheck(this)"> <label for="classify_C"
								class="btn btn-sm text-xs"
								style="background-color: blanchedalmond">코로나특보</label>&nbsp;&nbsp;

						</div>
					</div>
					</div>
					<form>
						<tr>
							<td><input type="text" class="form-control"
								value = "기사 제목" name="ar_title" maxlength="50"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
								value = "글 내용" name="ar_detail" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>
					</form>
				</table>
				
				<!--
				<td> <input type = "file" src="${pageContext.request.contextPath}/resources/fileUpLoad/${ar_file }" width="100px"> </td>
				 -->
				<tr>
					<input type="file" name="ar_file"></input>
				</tr>
				
				<!-- 글쓰기 버튼 생성 -->
				<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			</form>
		</div>
	</div>



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


</body>
</html>