<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../common/header.jsp" %> 

<div class="whole-wrap">
	<div class="container box_1170">
		<div class="row">
			<div class="col-lg-12 col-md-12" style = "padding-left:400px; padding-right:400px;">
				<h3 class="mb-30">회원 가입</h3>
				<form action="#">
					<div class="mt-10">
						<input type="text" name="id" placeholder="ID"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'ID'" required
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="pw" placeholder="비밀번호"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '비밀번호'" required
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="pwck" placeholder="비밀번호 확인"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '비밀번호 확인'" required
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="email" name="name" placeholder="이름"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '이름'" required
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="phone" placeholder="Phone"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Phone'" required
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="email" placeholder="Email"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Email'" required
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="idnum" placeholder="주민번호"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '주민번호'" required
							class="single-input">
					</div>
					
				
					<br>
					<div class="mt-10">
						<button class="genric-btn primary circle float-left ">취소 </button>
						<button class="genric-btn primary circle float-right">회원 가입 </button>
					</div>
				</form>
			</div>
			
		</div>
	</div>
</div> 
<%@ include file="../common/footer.jsp" %> 