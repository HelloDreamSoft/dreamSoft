<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.kh.dream.place.model.vo.*, java.util.*" %>
<%
	ArrayList<Place> list = (ArrayList<Place>) request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	
%>

<%@ include file="../common/header.jsp"%>

<!-- breadcrumb part start-->
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>PLACE</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- breadcrumb part end-->

<!-- product list part start-->
<section class="product_list section_padding">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="product_sidebar">
					<div class="single_sedebar">
						<form action="#">
							<input type="text" name="#" placeholder="Search keyword">
							<i class="ti-search"></i>
						</form>
					</div>
					<div class="single_sedebar">
						<div class="select_option">
							<div class="select_option_list">
								음식 종류 
								<i class="right fas fa-caret-down"></i>
							</div>
							<div class="select_option_dropdown">
								<p>
									<a href="#">한식</a>
								</p>
								<p>
									<a href="#">중식</a>
								</p>
								<p>
									<a href="#">일식</a>
								</p>
								<p>
									<a href="#">양식</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="product_list">
					<div class="row">
						<div class="col-lg-6 col-sm-6">
							<div class="single_product_item">
								<% for(Place p : list) { %>
								<tr onclick="goPlaceView();"> <!-- 의의의읭 -->
								<img src="<%=request.getContextPath()%>/resources/img/product/product_list_1.png" alt="#"
									class="img-fluid">
								<h3>
									<a href="<%=request.getContextPath()%>/views/place/placeDetail.jsp"><%=p.getpName()%> / <b>★3.5</b> </a>
								</h3>
								<p><%=p.getpAddress()%> / 음식종류</p>
								<% } %>
							</div>
						</div>
						
						
						<div class="table-responsive">
							<div class="checkout_btn_inner float-right">
								<a class="btn_1" href="<%=request.getContextPath()%>/views/place/placeInsert.jsp">등록하기</a>
							</div>
						</div>
					</div>
					<div class="load_more_btn text-center">
					
						<!-- 페이징 처리 시작 -->
						<div class="blog_left_sidebar">
	                        <nav class="blog-pagination justify-content-center d-flex">
	                            <ul class="pagination">
	                                <li class="page-item">
	                                    <a href="#" class="page-link" aria-label="Previous">
	                                        <i class="ti-angle-left"></i>
	                                    </a>
	                                </li>
	                                <li class="page-item">
	                                    <a href="#" class="page-link">1</a>
	                                </li>
	                                <li class="page-item active">
	                                    <a href="#" class="page-link">2</a>
	                                </li>
	                                <li class="page-item">
	                                    <a href="#" class="page-link" aria-label="Next">
	                                        <i class="ti-angle-right"></i>
	                                    </a>
	                                </li>
	                            </ul>
	                        </nav>
                    	</div>
                    	<!-- 페이징 처리 끝 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- product list part end-->

<%@ include file="../common/footer.jsp"%>
