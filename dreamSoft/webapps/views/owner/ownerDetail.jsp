
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>

<!-- breadcrumb part start-->
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>My page detail</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- breadcrumb part end-->
<br />
<br />
<br />


<div class="whole-wrap">
	<div class="container box_1170">
		<div class="section-top-border">
			<div class="row">
				<div class="col-lg-7 col-md-7" style = "padding-left : 100px; padding-right : 100px;">
					<h3 class="mb-30">마이 페이지 상세보기(사업자)</h3>
					<form action="#">
					<div class="mt-10">
					<!-- 이름/전화번호/이메일/생일 -->
						<input type="text" name="oName" placeholder="이름"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '이름'" readonly
							class="single-input-primary">
					</div>
					<div class="mt-10">
						<input type="text" name="oPhone" placeholder="핸드폰 번호"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '핸드폰 번호'" required
							class="single-input-primary">
					</div>
					<div class="mt-10">
						<input type="email" name="oEmail" placeholder="이메일"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '이메일'" required
							class="single-input-primary">
					</div>
					<div class="mt-10">
						<input type="text" name="oRegno" placeholder="사업자번호"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '사업자번호'" readonly
							class="single-input-primary">
					</div>

					<div class="mt-10">
						<input type="text" name="oPwd" placeholder="비밀번호"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '비밀번호'" required class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="oPwck" placeholder="비밀번호 확인"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '비밀번호 확인'" required
							class="single-input">
					</div>

					<div class="mt-10 float-left">
						<button class="genric-btn primary circle arrow">메인으로</button>
					</div>
					<div class="mt-10 float-right">
						<button class="genric-btn info circle">수정요청하기</button>
						<!-- 인포윈도우 띄워서 관리자에게 수정요청하겠습니까? yes일경우 관리자 페이지에 수정요청이 들어왔음을 표시하는건? -->
					</div>
				</form>
				</div>
				<div class="col-lg-4 col-md-5 mt-sm-30">
				
					<div class="single-element-widget">
						<h3 class="mb-30">사업자 등록증 이미지</h3>
							<a href="<%= request.getContextPath() %>/resources/img/b3.jpg" class="img-pop-up img-gal">
								<div class="single-gallery-image"
								style="background: url(<%= request.getContextPath() %>/resources/img/b3.jpg);"></div>
							</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>






<%@ include file="../common/footer.jsp"%>