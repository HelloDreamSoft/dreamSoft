<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
    

    <!-- 섬머노트 -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

    
    <!-- 지도 부르기 -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=037f9ae8baf28354df2203507cf3111a"></script>



    
    
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
                                    <a class="nav-link" href="<%=request.getContextPath()%>/views/place/placeList.jsp">PLACE</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=request.getContextPath()%>/views/notice/noticeList.jsp">공지사항</a>
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
                                    	<a class="dropdown-item" href="<%=request.getContextPath()%>/views/modal.jsp">로그인</a>
                                    	<a class="dropdown-item" href="<%=request.getContextPath()%>/views/member/memberDetail.jsp">일반회원 정보 수정</a>
                                        <a class="dropdown-item" href="<%=request.getContextPath()%>/views/owner/ownerDetail.jsp">사업자 정보 수정</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%=request.getContextPath()%>/views/joinChoose.jsp">회원가입</a>
                                </li>
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
    
    
    