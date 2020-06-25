<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<!-- breadcrumb part start-->
<section class="breadcrumb_part single_product_breadcrumb">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner"></div>
			</div>
		</div>
	</div>
</section>
<!-- breadcrumb part end-->

<!--================Single Product Area =================-->
<div class="product_image_area">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-12">
				<div class="product_img_slide owl-carousel">
					<div class="single_product_img">
						<img src="<%=request.getContextPath()%>/resources/img/product/single_product.png" alt="#"
							class="img-fluid">
					</div>
					<div class="single_product_img">
						<img src="<%=request.getContextPath()%>/resources/img/product/single_product.png" alt="#"
							class="img-fluid">
					</div>
					<div class="single_product_img">
						<img src="<%=request.getContextPath()%>/resources/img/product/single_product.png" alt="#"
							class="img-fluid">
					</div>
				</div>
			</div>
			<div class="col-lg-8">
				<div class="single_product_text text-center">
					<h3>
						PLACE 이름 <br> <b>★3.5</b>
					</h3>
					<p>　</p>
					<!-- <p>간단한 설명</p> -->
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td>
										<h5 style="text-align: center;">PLACE 전화번호</h5>
									</td>
									<td colspan="2">
										<h5>02-1234-5678</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5 style="text-align: center;">PLACE 주소</h5>
									</td>
									<td colspan="2">
										<h5>경기도 성남시 분당구</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5 style="text-align: center;">영업시간</h5>
									</td>
									<td colspan="2">
										<h5>10:00 - 21:00</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5 style="text-align: center;">브레이크 타임</h5>
									</td>
									<td colspan="2">
										<h5>15:00 - 17:00</h5>
									</td>
								</tr>
								<tr> <!-- 내용입력 -->
									<td colspan="3">
										<p>내용입니다.</p>
									</td>
								</tr>
								
							</tbody>
						</table>
					</div>
					<div class="d-none d-sm-block mb-5 pb-4">
				        <div id="map" style="height: 480px;"></div>
				        <script>
				          function initMap() {
				            var uluru = {
				              lat: -25.363,
				              lng: 131.044
				            };
				            var grayStyles = [{
				                featureType: "all",
				                stylers: [{
				                    saturation: -90
				                  },
				                  {
				                    lightness: 50
				                  }
				                ]
				              },
				              {
				                elementType: 'labels.text.fill',
				                stylers: [{
				                  color: '#ccdee9'
				                }]
				              }
				            ];
				            var map = new google.maps.Map(document.getElementById('map'), {
				              center: {
				                lat: -31.197,
				                lng: 150.744
				              },
				              zoom: 9,
				              styles: grayStyles,
				              scrollwheel: false
				            });
				          }
				        </script>
				        <script
				          src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&callback=initMap">
				        </script>
				
				      </div>
					<div class="card_area">
						<div class="add_to_cart">
							<a class="btn_3" href="<%=request.getContextPath()%>/views/place/placeUpdate.jsp">수정하기</a>
							<a class="btn_3" href="<%=request.getContextPath()%>/views/place/placeList.jsp">목록으로 가기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--================End Single Product Area =================-->



<%@ include file="../common/footer.jsp"%>