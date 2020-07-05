<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" import = "com.kh.dream.member.model.vo.*, com.kh.dream.owner.model.vo.*"%>
 <% Member m = (Member)session.getAttribute("member");
	Owner o = (Owner)session.getAttribute("owner");
	%>
<!DOCTYPE html>
<html>
<head>
<style>
	.modal{
	text-align : center;
	position :relative;
	width : 300px;
	heigth:150px;
	z-index:1;
	}
	.moal-content{
	width : 300px;
	text-align : center;
	background: white;
	margin :100px auto;

	}
	.button1{
	color: #fff;
    background: #B08EAD;
    border: 1px solid transparent
    }
    .link{
    	color :#B08EAD ;
    	text-decoration:none;
    }
    .modal-layout{
    posiotion:fixed;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(0, 0, 0,0.5);
    z-index:-1;
    }
</style>
<meta charset="UTF-8">
<title>DreamSoft</title>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>pillloMart</title>
    
    
    <link rel="icon" href="<%= request.getContextPath() %>/resources/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/owl.carousel.min.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/all.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/flaticon.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/themify-icons.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style.css">
    
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script> -->
    
    <!-- 섬머노트 -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<<<<<<< HEAD

	<!-- 주소 부르기위한 api -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
=======
>>>>>>> refs/remotes/origin/dev_ming
    
    <!-- 지도 부르기 -->
<<<<<<< HEAD
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=037f9ae8baf28354df2203507cf3111a&libraries=services"></script>


    
    
=======
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=037f9ae8baf28354df2203507cf3111a"></script>

>>>>>>> refs/remotes/origin/dev_ming
</head>
<body>
	<!--::header part start::-->
    <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="<%= request.getContextPath() %>/index.jsp"> <img src="<%= request.getContextPath() %>/resources/img/logo.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="menu_icon"><i class="fas fa-bars"></i></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="<%= request.getContextPath() %>/index.jsp">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=request.getContextPath()%>/pList.pl">PLACE</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=request.getContextPath()%>/nList.no">공지사항</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%= request.getContextPath() %>/views/admin/adminOwnerCheck.jsp">관리자</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_2"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        	회원관리
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
                                    	<% if ((m != null)||(o!=null)) {%>
                                    	<a class="dropdown-item" id="logout">로그아웃</a>
                                    	<%}else {%>
                                    	<a class="dropdown-item" id="login" >로그인</a>
                                    	<%}%>
                                    	<a class="dropdown-item" href="<%=request.getContextPath()%>/views/member/memberDetail.jsp">일반회원 정보 수정</a>
                                        <a class="dropdown-item" href="<%=request.getContextPath()%>/views/owner/ownerDetail.jsp">사업자 정보 수정</a>
                                    </div>
                                </li>
                               <% if ((m != null)||(o!=null))  {%><%} else { %>
                              
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=request.getContextPath()%>/views/joinChoose.jsp">회원가입</a>
                                </li>
                                <%} %>
                            </ul>
                        </div>
                        <div class="hearer_icon d-flex align-items-center">
                            <a id="search_1" href="javascript:void(0)"><i class="ti-search"></i></a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <div class="search_input" id="search_input_box">
            <div class="container ">
                <form class="d-flex justify-content-between search-inner">
                    <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                    <button type="submit" class="btn"></button>
                    <span class="ti-close" id="close_search" title="Close Search"></span>
                </form>
            </div>
        </div>
    </header>
    <!-- Header part end-->
<<<<<<< HEAD
    
=======


>>>>>>> refs/remotes/origin/dev_ming

<body>
<div id="ex1" class="modal">
<form>
	<div class = "modal-content">
	<div><br></div>
 	<div class="login">
 	<input type="text" name="id" placeholder="id" />
 	</div>
 	<br>
 	
 	<div class="login">
 	<input type="password" name="pw" placeholder="비밀번호" />
 	</div>
 	<br>
 	
 	<div>
 	<input type="radio" name="radio" value="1"/>일반회원 &nbsp; &nbsp;
 	<input type="radio" name="radio" value="2" />사업자회원
 	</div>
 	<br>
 	
 	<div>
 	<button class="button1 molongin" onclick="submit" > 로그인</button>  &nbsp; &nbsp;
 	<button class="button1" onclick="goBack()"> 취소하기</button>
 	</div>
 	<br>
 	<div>
 		<a href="#" class="link" >아이디 찾기</a> &nbsp; <a href="#" class="link">비밀번호 찾기</a>
 	</div>
 	</div>
 	<div class="modal-layout" ></div>
 	</form>
</div>
<script>
	<!-- 취소시 모달창만 꺼지게 하는기능-->
	function goBack(){
		window.history.go();
	}
	$(function(){
		$("#login").click(function(){
			$('.modal').modal();
		});
	});
	$(function(){
		$(".modal-layout").click(function(){
			$('.modal').modal('hide');
		});
	});
	
	$(function(){
		$("#logout").click(function(){
			location.href ="/dream/mLogout.me";
		});
	});
	$(function(){
		$(".molongin").click(function (){
			if($("input[name='radio']:checked").val() == 1){
				$("form").attr("action","/dream/mLogin.me");
			}else if($("input[name='radio']:checked").val() == 2){
				$("form").attr("action","/dream/oLogin.ow");
			}
		});
	});
	
	
</script>
    
    
    