<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	#ex1{
	text-align : center;
	}
	.button1{
	color: #fff;
    background: #B08EAD;
    border: 1px solid transparent}
    .link{
    	color :#B08EAD ;
    	text-decoration:none;
    }
</style>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
 
<meta charset="UTF-8">

<body>
<div id="ex1" class="modal">
	<div><br></div>
 	<div class="login">
 	<input type="text" name="id" placeholder="id" />
 	</div>
 	<br>
 	
 	<div class="login">
 	<input type="text" name="pw" placeholder="비밀번호" />
 	</div>
 	<br>
 	
 	<div>
 	<input type="radio" value="일반회원"/>일반회원
 	<input type="radio" value="사업자회원" />사업자회원
 	</div>
 	<br>
 	
 	<div>
 	<button class="button1"> 로그인</button>
 	<button class="button1"> 취소하기</button>
 	</div>
 	<br>
 	<div>
 		<a href="#" class="link" >아이디 찾기</a> <a href="#" class="link">비밀번호 찾기</a>
 	</div>
 	
</div>
 
<!--  <p><a href="#ex1" rel="modal:open">모달창띄우기</a></p>-->
</body>
</html>