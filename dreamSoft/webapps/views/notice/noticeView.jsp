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
				<table class="table">
					<tbody>
						<tr>
							<td>
								<h5 style="text-align: center"><%=n.getnNo() %></h5>
							</td>
							<td colspan="2">
								<h5><%=n.getnTitle() %></h5>
							</td>
							<td style="text-align: center;"><%=n.getnDate() %></td>
						</tr>
						<tr>
							<td colspan="4">
								<h5><%=n.getnContent() %></h5>
							</td>
						</tr>
					</tbody>
				</table>
				<form method="post" id="form" enctype="multipart/form-data">
					<div class="checkout_btn_inner float-right">
						<% %><!-- 관리자일때만 출력하기 -->
						<input type="hidden" name="nNo" value="<%=n.getnNo() %>" />
						<a class="btn_1" onclick="goDelete()">삭제하기</a>
						<a class="btn_1" onclick="goUpdate()">수정하기</a>
						<a class="btn_1 checkout_btn_1" href="<%=request.getContextPath()%>/nList.no">메뉴로 돌아가기</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!--================ End 공지사항 상세화면 Area =================-->

<script>
	function goUpdate(){
		alert("수정 페이지로 이동합니다.");
		location.href="<%=request.getContextPath()%>/nUpdateView.no?nno=<%= n.getnNo()%>";
	}
	
	function goDelete(){
		$("#form").attr("action", "<%=request.getContextPath()%>/nDelete.no").submit();
		alert("게시글을 삭제합니다.");
	}
</script>


<%@ include file="../common/footer.jsp"%>