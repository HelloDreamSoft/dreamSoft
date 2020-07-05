<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "com.kh.dream.place.model.vo.*" %>
<%@ include file="../common/header.jsp"%>

<%
	Place p = (Place)request.getAttribute("place");

%>

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
						<img src="<%=request.getContextPath()%>/resources/placeUploadFiles/<%= p.getpImg() %>" alt="#"
							class="img-fluid">
					</div>
				</div>
			</div>
			<div class="col-lg-8">
				<div class="single_product_text text-center">
					<h3>
						<%= p.getpName() %> <br> <b>★3.5</b>
					</h3>
					<p>　</p>
					<!-- <p>간단한 설명</p> -->
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td>
										<h5 style="text-align: center;">가게 전화번호</h5>
									</td>
									<td colspan="2">
										<h5><%= p.getpCall() %></h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5 style="text-align: center;">가게 주소</h5>
									</td>
									<td colspan="2">
										<h5><%= p.getpAddress() %></h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5 style="text-align: center;">영업시간</h5>
									</td>
									<td colspan="2">
										<h5><%= p.getpTime() %></h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5 style="text-align: center;">브레이크 타임</h5>
									</td>
									<td colspan="2">
										<h5><%= p.getpBreaktime() %></h5>
									</td>
								</tr>
								<tr> <!-- 내용입력 -->
									<td colspan="3">
										<p><%= p.getpContent() %></p>
									</td>
								</tr>
								
							</tbody>
						</table>
					</div>
					<div class="d-none d-sm-block mb-5 pb-4">
				        <div id="map" style="height: 480px;"></div>
				        <script>

						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = {
					        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					        level: 3 // 지도의 확대 레벨
					    };  

						// 지도를 생성합니다    
						var map = new kakao.maps.Map(mapContainer, mapOption); 
						
						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();
						
						// 주소로 좌표를 검색합니다
						geocoder.addressSearch('<%= p.getpAddress() %>', function(result, status) {
					    // 정상적으로 검색이 완료됐으면 
					     if (status === kakao.maps.services.Status.OK) {

					        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

					        // 결과값으로 받은 위치를 마커로 표시합니다
					        var marker = new kakao.maps.Marker({
					            map: map,
					            position: coords
					        });

					        // 인포윈도우로 장소에 대한 설명을 표시합니다
					        var infowindow = new kakao.maps.InfoWindow({
					            content: '<div style="width:150px;text-align:center;padding:6px 0;"><%= p.getpName() %></div>'
					        });
					        infowindow.open(map, marker);

					        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					        map.setCenter(coords);
					    } 
					});
				        </script>
				        <script
				          src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&callback=initMap">
				        </script>
				
				      </div>
					<div class="card_area">
						<div class="add_to_cart">
						<button class = "btn_3" onclick="location.href='<%= request.getContextPath() %>/pUpdateView.pl?pno='+<%= p.getpNo() %>">수정하기</button>
						<a class="btn_3" href="<%=request.getContextPath()%>/pList.pl">목록으로 가기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--================End Single Product Area =================-->



<%@ include file="../common/footer.jsp"%>