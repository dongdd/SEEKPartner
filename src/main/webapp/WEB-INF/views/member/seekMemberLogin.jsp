<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<link rel="stylesheet" href="/resources/assets/css/fontawesome.css">
	<link rel="stylesheet" href="/resources/assets/css/first-default.css">
	<link rel="stylesheet" href="/resources/assets/css/owl.css">
	<link rel="stylesheet" href="/resources/assets/css/lightbox.css">

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

	<title>SEEK.PARTNERs</title>

</head>

<body>

  
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
								<li class="scroll-to-section">
									<a href="/main" class="active">Home</a>
								</li>
								<li class="has-sub">
									<a href="javascript:void(0)">회원정보관리</a>
									<ul class="sub-menu">
										<li><a href="/member/seekMyUpdate">회원정보수정</a></li>
										<li><a href="/member/seekMemberDelete">회원탈퇴</a></li>
									</ul>
								</li>
								
								<li class="has-sub">
									<a href="javascript:void(0)">내 활동</a>
									<ul class="sub-menu">
										<li><a href="rs-list.html">내 평가</a></li>
										<li><a href="/member/seekMyAct">식구 찾기</a></li>
										<li><a href="/member/seekMyReview">리뷰 보기</a></li>
									</ul>
								</li>
								
								<li class="has-sub">
									<a href="javascript:void(0)">문의/신고</a>
									<ul class="sub-menu">
										<li><a href="rs-list.html">문의/신고</a></li>
									</ul>
								</li>
								
								<!-- 로그인 한 유저일 때 마이페이지와 로그아웃 활성화 -->
								<sec:authorize access="isAuthenticated()">
								<li><a href="/member/seekMyPage">마이페이지</a></li>
								<li><a href="/member/seekMemberLogout">로그아웃</a></li>
								</sec:authorize>
								
								<!-- 로그인하지 않은 유저일 때 로그인과 회원가입 활성화 -->
								<sec:authorize access="isAnonymous()">
								<li><a href="/member/seekMemberLogin">로그인</a></li>
								<li><a href="/member/seekMemberSignup">회원가입</a></li>
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
		

	<div id="logcon">
        <div id="login">
            <div id="login-form" >

                <form role="form" method="post" action="/login">
                    <h3>Seek.Login</h3>
                    
                    <div>
                        <!-- <label class="form-label need-info">회원ID</label> -->
                        <input autocomplete="off" class="form-control input-boder-none" placeholder="아이디를 입력해주세요" id="userid" name="username"  autofocus />
                    </div>
                    <div class="mt-4">
                        <!-- <label class="form-label need-info">비밀번호</label> -->
                        <input class="form-control input-boder-none" placeholder="비밀번호를 입력해주세요" id="userpw" name="password" type="password" />
                    </div>
                    <span id="infoMsg"></span>
                    <div class="checkbox mt-4">
                        <label class="form-label">
                            <input name="remember-me" type="checkbox"/>&nbsp;자동로그인
                        </label>
                    </div>
                    
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    
                    
                    <div class="d-grid gap-3 login-btn-box mt-1 login-btn-box">
                        <button class="btn btn-primary">로그인</button>
                    </div>
                </form>
                <hr>
                <p class="find">
                    <span><a href="/member/seekFindID">아이디 찾기</a></span>
                    <span><a href="/member/seekFindPW">비밀번호 찾기</a></span>
                    <span><a href="/member/seekMemberSignup">회원가입</a></span>
                </p>

            </div>
        </div>
    </div>

	
<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	<script src="../resources/assets/js/isotope.min.js"></script>
	<script src="../resources/assets/js/owl-carousel.js"></script>
	<script src="../resources/assets/js/lightbox.js"></script>
	<script src="../resources/assets/js/tabs.js"></script>
	<script src="../resources/assets/js/video.js"></script>
	<script src="../resources/assets/js/slick-slider.js"></script>
	<script src="../resources/assets/js/custom.js"></script>
	
	<!-- Security적용 후 ajax 사용시 csrf값을 서버에 전송하는 코드 -->
	<script>
	$(document).ready(function(){
		var csrfHeaderName = "${_csrf.headerName}";
		var csrfTokenValue = "${_csrf.token}";
		$(document).ajaxSend(function(e, xhr, options){
			xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		});		
	});
	</script>
	
	<script type="text/javascript">
 	$(document).ready(function(){
 		
 		$("button").on("click", function(e){
 			
 			e.preventDefault();
 			
 			if($("#userid").val() == "" || $("#userpw").val() == "" ){
 	 			Swal.fire({ 
 					icon: 'error', // Alert 타입(success, warning, error)
 					title: '입력 오류!', // Alert 제목
 					text: '아이디와 비밀번호를 입력해주세요!', // Alert 내용
 				});
 				return;
 	 		} else {
 	 			$("form").submit();
 	 		}
 			
 		});
 		
 		
 		
 		
		$("#toMain").on("click", function(e){
			e.preventDefault();
			location.href = "/board/main";
		});
		
		$("#toSign").on("click", function(e){
			e.preventDefault();
			location.href = "/member/seekMemberSignup";
		});
		

	});
	</script>
</body>
</html>