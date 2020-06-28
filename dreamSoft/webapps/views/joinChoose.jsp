<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
button{
	color: #B08EAD;
    border: 1px solid #B08EAD;
    background: #fff;
    border-radius: 50px;
    margin-right: 10px;
    margin-top: 10px;
    

}
</style>

<%@ include file="common/header.jsp" %> 
	 <div class="row">
        <div class="col-1">
        </div><button class="col-5" style="height:300px;" onclick="location.href='<%=request.getContextPath()%>/views/member/memberJoin.jsp'">일반 회원가입</button>
        <button class="col-5" style="height:300px;" onclick="location.href='<%=request.getContextPath()%>/views/owner/ownerJoin.jsp'">사업자 회원가입</button>
    	<div class="col-1">
    	</div>
    </div>
<%@ include file="common/footer.jsp" %> 