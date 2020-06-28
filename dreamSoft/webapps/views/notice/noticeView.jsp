<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.kh.dream.notice.model.vo.*" %>
<%
	Notice n = (Notice)request.getAttribute("notice");
%>

<%@ include file="../common/header.jsp"%>
<!-- breadcrumb part start-->
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>공지사항 상세보기</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- breadcrumb part end-->
<!--================ 공지사항 상세화면 Area =================-->
<section class="cart_area section_padding">
	<div class="container">
		<div class="cart_inner">
			<div class="table-responsive">
				<form method="post">
					<table class="table">
						<tbody>
							<tr>
								<td>
									<h5 style="text-align: center"><%=n.getnNo() %></h5>
								</td>
								<td colspan="3">
									<h5><%=n.getnTitle() %></h5>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<h5><%=n.getnContent() %></h5>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
				<div class="checkout_btn_inner float-right">
					<a class="btn_1" href="<%=request.getContextPath()%>/views/notice/noticeUpdate.jsp">수정하기</a> 
					<a class="btn_1 checkout_btn_1" href="<%=request.getContextPath()%>/nList.no">메뉴로 돌아가기</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================ End 공지사항 상세화면 Area =================-->



<%@ include file="../common/footer.jsp"%>