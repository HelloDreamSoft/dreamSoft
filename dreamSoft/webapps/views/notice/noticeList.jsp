<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>
<!-- breadcrumb part start-->
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>공지사항</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- breadcrumb part end-->
<!--================공지사항 Area =================-->
<section class="cart_area section_padding">
	<div class="container">
	
		<!-- 공지사항 출력 Area -->
		<div class="row">
			<div class="col-md-8"></div>
            <div class="col-md-4">
                <div class="product_sidebar">
                    <div class="single_sedebar">
                        <div class="select_option">
                            <div class="select_option_list">
                            	10개씩 보기 
                            	<i class="right fas fa-caret-down"></i> 
                            </div>
                            <div class="select_option_dropdown">
                                <p><a href="#">25개씩 보기 </a></p>
                                <p><a href="#">50개씩 보기 </a></p>
                                <p><a href="#">100개씩 보기</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <!-- 공지사항 출력 Area End -->
       
		<div class="cart_inner">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">글번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성일</th>
							<!-- <th scope="col">Total</th> -->
						</tr>
					</thead>
					<tbody>
						
						<% for(int i = 1; i < 11; i++){ %>
						<tr>
							<td>
								<h5><%=i %></h5>
							</td>
							<td>
								<h5>제목입니다.</h5>
							</td>
							<td>
								<h5>작성일</h5>
							</td>
							
						</tr>
						<% } %>
					</tbody>
				</table>
				<div class="checkout_btn_inner float-right">
					<a class="btn_1" href="<%=request.getContextPath()%>/views/notice/noticeInsert.jsp">등록하기</a> 
					<a class="btn_1 checkout_btn_1" href="<%=request.getContextPath()%>/index.jsp">메인으로 돌아가기</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End Cart Area =================-->
<!--================Start Paging Area =================-->
<section class="blog_area section_padding">
     <div class="container">
         <div class="row">
             <div class="col-lg-8 mb-5 mb-lg-0">
                 <div class="blog_left_sidebar">
                     <nav class="blog-pagination justify-content-center d-flex">
                         <ul class="pagination">
                             <li class="page-item">
                                 <a href="#" class="page-link" aria-label="Previous">
                                     <i class="ti-angle-left"></i>
                                 </a>
                             </li>
                             <li class="page-item">
                                 <a href="#" class="page-link">1</a>
                             </li>
                             <li class="page-item active">
                                 <a href="#" class="page-link">2</a>
                             </li>
                             <li class="page-item">
                                 <a href="#" class="page-link" aria-label="Next">
                                     <i class="ti-angle-right"></i>
                                 </a>
                             </li>
                         </ul>
                     </nav>
                 </div>
             </div>
             <div class="col-lg-4">
                 <div class="blog_right_sidebar">
                     <aside class="single_sidebar_widget search_widget">
                         <form action="#">
                             <div class="form-group">
                                 <div class="input-group mb-3">
                                     <input type="text" class="form-control" placeholder='Search Keyword'
                                        	onfocus="this.placeholder = ''"
                                         	onblur="this.placeholder = 'Search Keyword'">
                                     <div class="input-group-append">
                                         <button class="btn" type="button"><i class="ti-search"></i></button>
                                     </div>
                                 </div>
                             </div>
                             <button class="button rounded-0 primary-bg text-white w-100 btn_1"
                                 	 type="submit">Search</button>
                         </form>
                     </aside>
                 </div>
             </div>
         </div>
     </div>
 </section>
<!--================End Paging Area =================-->


<%@ include file="../common/footer.jsp"%>