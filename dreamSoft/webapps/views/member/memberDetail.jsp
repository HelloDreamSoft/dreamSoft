
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
		<div class="row">
			<div class="col-lg-12 col-md-12" style = "padding-left:400px; padding-right:400px;">
				<h3 class="mb-30">마이 페이지 상세보기</h3>
				<form action="#">
					<div class="mt-10">
					<!-- 이름/전화번호/이메일/생일 -->
						<input type="text" name="mName" placeholder="이름"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '이름'" required
							class="single-input-primary">
					</div>
					<div class="mt-10">
						<input type="text" name="mPhone" placeholder="핸드폰 번호"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '핸드폰 번호'" required
							class="single-input-primary">
					</div>
					<div class="mt-10">
						<input type="email" name="mEmail" placeholder="이메일"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '이메일'" required
							class="single-input-primary">
					</div>
					<div class="mt-10">
						<input type="text" name="mBirth" placeholder="생일"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '생일'" required
							class="single-input-primary">
					</div>
					
					<div class="mt-10 float-left">
						<button class="genric-btn primary circle arrow">메인으로</button>
					</div>
					<div class="mt-10 float-right">
						<button class="genric-btn info circle">수정하기</button>
					</div>
				</form>
			</div>
			
		</div>
	</div>
</div>







<%@ include file="../common/footer.jsp"%>