<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

<%@ include file="../common/header.jsp" %> 

<div class="whole-wrap">
	<div class="container box_1170">
		<div class="row">
			<div class="col-lg-12 col-md-12" style = "padding-left:400px; padding-right:400px;">
				<h3 class="mb-30">회원 가입</h3>
				<form action="/dream/mJoin.me" id="userInfo" name = "userInfo" method="post">
					<div class="mt-10">
						<input type="text" name="id" placeholder="ID"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'ID'" required
							class="single-input id" >
<!-- 							<button type="button" class="idChk" onclick ="idChk()">중복확인</button> 
							<img id ="id_check_sucess" style="display : none;"> -->
						
					</div>
					<div class="mt-10">
						<input type="password" name="pw" placeholder="비밀번호"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '비밀번호'" required
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="password" name="pwck" placeholder="비밀번호 확인"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '비밀번호 확인'" 
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="name" placeholder="이름"
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
						<input type="email" name="email" placeholder="Email"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Email'" required
							class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="birth" placeholder="주민번호"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = '주민번호'" required
							class="single-input">
					</div>
					<br>
				
					<br>
					<div class="mt-10">
						<button class="genric-btn primary circle float-left" onclick="location.href='<%=request.getContextPath()%>/views/joinChoose.jsp'">취소 </button>
						<button class="genric-btn primary circle float-right">회원 가입 </button>
					</div>
				</form>
			</div>
			
			
		</div>
	</div>
</div> 

<!-- <script>
	$('.id').change(function(){
		$('#id_check_sucess').hide();
		$('.idChk').show();
		$('.id').attr("check_result","fail");
	})
	id_overlap_input = document.querySelector('input[name="id"]');
	$.ajax({})
</script> -->
<script>
/* $(document).ready(function(){
	$('#userInfo').validate(){
		rules:{
			id:{minlenght:3, remote:"Validate"},
			pwck:{equalTo:"#pw"},
			phone:{digits:true, minlength:10, maxlength:11},
			idnum:{digits:true, minlength:7, maxlength:13 }
		},
		messages:{
			id:{minlength : jQuery.format("아이디는 3자이상 입력해주세요."),
				remote : jQuery.format("입력하신 {0}은 이미 존재하는 아이디입니다.")},
			pwck:{equalTo:"비밀번호가 일치하지 않습니다."},
			phone:{digits:"숫자가 아닙니다.", minlength:"전화번호가 올바르지 않습니다.", maxlength :"전화번호가 올바르지 않습니다."},
			birth:{digits:"숫자가 아닙니다.", minlegnth:"주민번호가 올바르지 않습니다.", maxlength:"주민번호가 올바르지않습니다."}
		},
		submitHandler:function(frm){
			frm.submit();
		}success: function(e){}
	});
}); */
</script>

<%@ include file="../common/footer.jsp" %> 