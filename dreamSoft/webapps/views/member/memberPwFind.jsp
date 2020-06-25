<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../common/header.jsp" %>   

<!--================login_part Area =================-->
    <section class="login_part section_padding ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_text text-center">
                        <div class="login_part_text_iner">
                            <h2>비밀번호 찾기</h2>
                            <a href="#" class="link">아이디 찾기</a> <br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3></h3>
                            <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                               	 <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" id="id" name="id" value=""
                                        placeholder="아이디">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control" id="name" name="name" value=""
                                        placeholder="이름">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="password" class="form-control" id="email" name="email" value=""
                                        placeholder="email">
                                </div>
                                <div class="col-md-12 form-group">
                                    <div class="creat_account d-flex align-items-center">
                               
                                    </div>
                                    <button type="submit" value="submit" class="btn_3">
                                        	비밀번호 찾기
                                    </button>
                                   
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================login_part end =================-->
    <%@ include file="../common/footer.jsp" %> 
