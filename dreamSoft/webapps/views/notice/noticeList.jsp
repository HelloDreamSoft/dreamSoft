<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.kh.dream.notice.model.vo.*, java.util.*"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>) request.getAttribute("list");
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
					<h2>공지사항</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- breadcrumb part end-->
<!--================공지사항 Area =================-->
<section class="cart_area section_padding">
	<div class="container">

		<!-- 공지사항 출력 Area -->
		<!-- <div class="row">
			<div class="col-md-8"></div>
			<div class="col-md-4">
			
				<div class="product_sidebar">
					<div class="single_sedebar">
						<div class="select_option">
							<select name="limit">
								<option value="10" selected="selected">10개씩 보기</option>
								<option value="25">25개씩 보기</option>
								<option value="50">50개씩 보기</option>
								<option value="100">100개씩 보기</option>
							</select>
							<div class="select_option_list">
								페이지 <i class="right fas fa-caret-down"></i>
							</div>
							<div class="select_option_dropdown" class="limitPage" >
								<input type="hidden" name="limit10" value="10" />
								<input type="hidden" name="limit25" value="25" />
								<input type="hidden" name="limit50" value="50" />
								<p>
									<a href="#" id="limit10">10개씩 보기 </a>
								</p>
								<p>
									<a href="#" id="limit25">25개씩 보기 </a>
								</p>
								<p>
									<a href="#" id="limit50">50개씩 보기</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
		<!-- 공지사항 출력 Area End -->

		<div class="cart_inner">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">글번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성일</th>
							<!-- <th scope="col">Total</th> -->
						</tr>
					</thead>
					<tbody>

						<%
							for (Notice n : list) {
						%>
						<tr onclick="goNoticeView();">
							<td>
								<h5><%=n.getnNo()%></h5>
							</td>
							<td>
								<h5>
									<a><%=n.getnTitle()%></a>
								</h5>
							</td>
							<td>
								<h5><%=n.getnDate()%></h5>
							</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
				<div class="checkout_btn_inner float-right">
					<a class="btn_1"
						href="<%=request.getContextPath()%>/views/notice/noticeInsert.jsp">등록하기</a>
					<a class="btn_1 checkout_btn_1"
						href="<%=request.getContextPath()%>/index.jsp">메인으로 돌아가기</a>
				</div>
			</div>
		</div>
		<!--================Start Paging Area =================-->
		<div class="col-lg-12 mb-5 mb-lg-0">
			<div class="blog_left_sidebar">
				<nav class="blog-pagination justify-content-center d-flex">
					<ul class="pagination" id="paging">
						<li class="page-item">
							<% if(currentPage <= 1) { %>
							<a onclick="nothing(this);" id="nothing" class="page-link" aria-label="Previous">
								<i class="ti-angle-left"></i>
							</a>
							<% } else { %>
							<a onclick="location.href='<%=request.getContextPath()%>/nList.no?currentPage=<%=currentPage - 1%>&keyword=<%= request.getParameter("keyword") %>'" id="goPrevious"  class="page-link" aria-label="Previous">
								<i class="ti-angle-left"></i>
							</a>
							<% } %>
						</li>
						
						<% 
							for(int i = startPage; i <= endPage; i++) {
								if(i == currentPage){
						%>
						<li class="page-item">
							<a onclick="nothing(this);" class="page-link"><%=i %></a>
						</li>
						<%      } else { %>
						<li class="page-item">
							<a onclick="location.href='<%=request.getContextPath()%>/nList.no?currentPage=<%=i%>&keyword=<%= request.getParameter("keyword") %>'" class="page-link"><%=i %></a>						
						</li>
						<% 		}
							}
						%>
						<% if(currentPage >= maxPage) { %>
						<li class="page-item">
							<a onclick="nothing(this);" class="page-link" aria-label="Next">
								<i class="ti-angle-right"></i>
							</a>
						</li>
						<% } else { %>
						<li class="page-item">
							<a onclick="location.href='<%=request.getContextPath()%>/nList.no?currentPage=<%=currentPage + 1%>&keyword=<%= request.getParameter("keyword") %>'" class="page-link" aria-label="Next">
								<i class="ti-angle-right"></i>
							</a>
						</li>
						<% } %>
					</ul>
				</nav>
			</div>
			<div class="col-lg-12">
				<div class="blog_right_sidebar">
					<aside class="single_sidebar_widget search_widget">
						<form action="#">
							<div class="form-group">
								<div class="input-group mb-3">
									<input type="text" class="form-control" id="keyword"
										placeholder='Search Keyword'>
									<div class="input-group-append">
										<button class="btn" type="button" disabled="disabled">
											<i class="ti-search"></i>
										</button>
									</div>
								</div>
							</div>
							<button class="button rounded-0 primary-bg text-white w-100 btn_1"
									onclick="search();" 
									type="submit">Search</button>
						</form>
					</aside>
				</div>
			</div>
			<!--================End Paging Area =================-->
		</div>
	</div>
</section>
<!--================End Cart Area =================-->


<script>
	$(function(){
		$(".table td").mouseenter(function(){
			$(this).parent().css({"background":"lightpink", "cursor":"pointer"});
		}).mouseout(function(){
			$(this).parent().css({"background":"none"});
		}).click(function(){
			var nno = $(this).parent().children().eq(0).text();
			location.href="<%=request.getContextPath()%>/selectOne.no?nno="+nno;
		});
	});
	
	function nothing(){
		$(this).unbind('click', false).mouseenter(function(){
			$(this).css({"background":"lightpink", "cursor":"pointer"});
		}).mouseout(function(){
			$(this).css({"background":"none"});
		});
		
	}
	
	function search(){
		alert($("#keyword").val());
		location.href="<%=request.getContextPath()%>/nList.no?keyword=" + $("#keyword").val();
	}
	
</script>
<%@ include file="../common/footer.jsp"%>