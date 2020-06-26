<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>

<!-- breadcrumb part start-->
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>admin page</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- breadcrumb part end-->
<br />
<br />
<br />
   

<!--================Cart Area =================-->
<section class="cart_area section_padding">
   <div class="container">
	
	<div class="cart_inner" align="center">
		<h3>사업자 회원가입 승인 목록</h3> <br /><br />
	</div>
      <div class="cart_inner">
         <div class="table-responsive">
            <table class="table">
               <thead>
                  <tr>
                     <th scope="col">사업자명</th>
                     <th scope="col">사업장 상호명</th>
                     <th scope="col">사업자 번호</th>
                     <th scope="col">승인 상태</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td>
                        <div class="media">
                           
                           <div class="media-body">
                              <p>홍길동</p>
                           </div>
                        </div>
                     </td>
                     <td>
                        <h5>오미라식당</h5>
                     </td>
                     <td>
                        <div class="product_count">
                           <h5>0123456-789</h5>
                           
                        </div>
                     </td>
                     <td>
                        <input type="checkbox" id="check1" name="check1">
                        
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <div class="media">
                           
                           <div class="media-body">
                              <p>김길동</p>
                           </div>
                        </div>
                     </td>
                     <td>
                        <h5>사미라식당</h5>
                     </td>
                     <td>
                        <div class="product_count">
                           <h5>07897979-131546</h5>
                        </div>
                     </td>
                     <td>
                        <input type="checkbox" id="check2" name="check2">
                     </td>
                  </tr>
                  <tr class="bottom_button">
                     <td></td>
                     <td></td>
                     <td></td>
                     <td>
                        <div class="cupon_text float-right">
                           <a class="btn_1" href="#">승인하기</a>
                        </div>
                     </td>
                  </tr>
                  
               </tbody>
            </table>
            <%-- 페이지 처리 --%>
      <div class="pagingArea" align="center">
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
        <!--  <button onclick="''" class = "genric-btn primary-border default"><<</button>
          
         <button class = "genric-btn primary-border default" disabled><</button>
          
         <button class = "genric-btn primary-border default" onclick=" '"><</button>
           
         
         
         
            <button class = "genric-btn primary-border default" disabled>1</button>
              
            <button class = "genric-btn primary-border default" onclick="location.href=''">2</button>
               
         
            
          
         <button class = "genric-btn primary-border default" disabled>></button>
         
         <button class = "genric-btn primary-border default" onclick="location.href=''">></button>
           
         <button class = "genric-btn primary-border default" onclick="location.href=''">>></button> -->
         
      </div>
         </div>
      </div>
   </div>
</section>
<!-- ================End Cart Area ================= -->


<%@ include file="../common/footer.jsp"%>