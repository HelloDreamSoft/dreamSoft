<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%
	String msg = (String)request.getAttribute("error-msg");
	Exception e = (Exception)request.getAttribute("exception");
	// 일반적으로 jsp에 사용되는 exception 내장 객체는 jspException 클래스를 활용한다.
	// 따라서 사용자 정의 예외를 구현할 때에는 Exception 객체를 직접 선언하여 사용하여야 한다.
%>

<%@ include file="../common/header.jsp" %>
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>서비스 에러 발생!!!</h2>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- product list part start-->
<section class="about_us padding_top">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="about_us_content">
                    <h5>ERROR : <%= e.getMessage() %></h5>
                    <h3>
                    	<span>서</span>비스 수행 중 에러가 발생했습니다. 전송 값을 확인해 보시고,<br>
						이상이 없을 시 부서 담당자에게 연락하시기 바랍니다.
                    </h3>
                    <div class="about_us_video">
                        <img src="img/about_us_video.png" alt="#" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@ include file="../common/footer.jsp" %>
