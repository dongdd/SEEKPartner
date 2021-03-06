<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link rel="stylesheet" href="/resources/assets/icofont/css/icofont.min.css">
	
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<link rel="stylesheet" href="/resources/assets/css/fontawesome.css">
	<link rel="stylesheet" href="/resources/assets/css/first-default.css">
	<link rel="stylesheet" href="/resources/assets/css/owl.css">
	<link rel="stylesheet" href="/resources/assets/css/lightbox.css">
	<link rel="stylesheet" href="/resources/assets/css/jquery.datetimepicker.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
	<!-- JQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src=""></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	
	
	
	<title>SEEK.PARTNERs</title>
</head>
<body>
	
	<div id="div-cont" class="container-wrap">
	
		<!-- start header header-sticky  ----------------------------------------------------------------------------->
		<header class="header-area header-sticky background-header">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<nav class="main-nav">
							<!-- Logo Start  ----------------------------------------------------------------------------->
							<a href="/main" class="logo">Seek.Partner</a>
							<!-- Logo End -->
							
							<!-- Menu Start  ----------------------------------------------------------------------------->
							<ul class="nav">						
								
								<sec:authorize access="isAuthenticated()">
								<sec:authentication property="principal" var="prin"/>
								<c:if test="${prin.member.authList[0].m_auth eq 'ROLE_ADMIN'}">
								<li><a href="/member/admin/aList">??????????????????</a></li>
								</c:if>
								</sec:authorize>
							
								
								<li class="scroll-to-section">
									<a href="/main" class="active">Home</a>
								</li>
								
								<li class="has-sub">
									<a href="javascript:void(0)">??????????????????</a>
									<ul class="sub-menu">
										<li><a href="/member/seekMyUpdate">??????????????????</a></li>
										<li><a href="/member/seekMemberDelete">????????????</a></li>
									</ul>
								</li>
											
								
								<li class="has-sub">
									<a href="javascript:void(0)">??? ??????</a>
									<ul class="sub-menu">
										<li><a href="rs-list.html">??? ??????</a></li>
										<li><a href="/member/seekMyAct">?????? ??????</a></li>
										<li><a href="/member/seekMyReview">?????? ??????</a></li>
									</ul>
								</li>
								
								<li class="has-sub">
									<a href="javascript:void(0)">????????????</a>
									<ul class="sub-menu">
										<li><a href="/member/rpBoard/rpList">????????????</a></li>
										<li><a href="/member/rpBoard/rpList">????????????</a></li>
									</ul>
								</li>
								
								<!-- ????????? ??? ????????? ??? ?????????????????? ???????????? ????????? -->
								<sec:authorize access="isAuthenticated()">
								<li><a href="/member/seekMyPage">???????????????<i class="fa fa-bell" id="ringAlarm" style="font-size: 12px;"></i></a></li>
								<li><a href="/member/seekMemberLogout">????????????</a></li>
								</sec:authorize>
								
								<!-- ??????????????? ?????? ????????? ??? ???????????? ???????????? ????????? -->
								<sec:authorize access="isAnonymous()">
								<li><a href="/member/seekMemberLogin">?????????</a></li>
								<li><a href="/member/seekMemberSignup">????????????</a></li>
								</sec:authorize>
								
							</ul>
							<a class='menu-trigger'>
								<span>Menu</span>
							</a>
							<!-- Menu End -->
						</nav>
					</div>
				</div>
			</div>
		</header>
		<!-- end header-sticky -->
		<ul id="toApd">
			
		</ul>
		<script>
		</script>
