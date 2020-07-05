<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../common/header.jsp" %> 
 <style>
 	.mt-10 label{
 		display: inline-block; padding: .5em .75em; color: #999; font-size: inherit; line-height: normal; vertical-align: middle; background-color: #fdfdfd; cursor: pointer; border: 1px solid #ebebeb; border-bottom-color: #e2e2e2; border-radius: .25em;


 	}
 	.idnum{
 	 font-family: "Poppins", sans-serif;
 	 text-align : center;
 	}
 </style>
<div class="whole-wrap">
	<div class="container box_1170">
		<div class="row">
			<div class="col-lg-12 col-md-12" style = "padding-left:400px; padding-right:400px;">
				<h3 class="mb-30">사업자 회원 가입</h3>
				<form action="<%= request.getContextPath()%>/oJoin.ow" method="post">
					<div class="mt-10">
						<input type="text" name="id" placeholder="ID"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'ID / 영대문자숫자 4~15자리로 입력해주세요'" 
								required pattern="^[a-zA-Z0-9]{4,15}$"
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="password" name="pw" placeholder="비밀번호"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '비밀번호 / 영대문자숫자 4~12자리로 입력해주세요'"
								required pattern="^[a-zA-Z0-9]{4,12}$"
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="password" name="pwck" placeholder="비밀번호 확인"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '비밀번호 확인'" required
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="name" placeholder="이름"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '이름'" required pattern="^[가-힣]*$"
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="phone" placeholder="Phone"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Phone'" required
							pattern="^(010)[0-9]{4}[0-9]{4}$"
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="email" name="email" placeholder="Email"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Email'" required
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="oregno" placeholder="사업자등록번호"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '사업자등록번호'" required
							pattern="^[0-9]{10}$"
							class="single-input">
					</div>		
				<!-- 	<div class="mt-10">
					<label style="onfocus:'' onblur:'사진 업로드'">사진 업로드</label>
						<label for="atfile">+</label>
						<input type="file" name="file" id="atfile" style="display:none;" required
							class=" single-input file">
					</div> -->
	
					<br>
					<div class="mt-10">
						<button class="genric-btn primary circle float-left" onclick="location.href='<%=request.getContextPath()%>/views/joinChoose.jsp'">취소 </button>
						<button  type ="submit" class="genric-btn primary circle float-right">회원 가입 </button>
					</div>
				</form>
			</div>
			
		</div>
	</div>
</div> 
<%@ include file="../common/footer.jsp" %> 