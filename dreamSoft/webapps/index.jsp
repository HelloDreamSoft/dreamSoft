<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../views/common/header.jsp"%>
	<!-- banner part start-->

    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-5">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h1>Best quality pillow</h1>
                            <p>Seamlessly empower fully researched 
                                growth strategies and interoperable internal</p>
                            <a href="product_list.html" class="btn_1">shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner_img">
            <img src="<%= request.getContextPath() %>/resources/img/banner.png" alt="#" class="img-fluid">
            <img src="<%= request.getContextPath() %>/resources/img/banner_pattern.png " alt="#" class="pattern_img img-fluid">
        </div>
    </section>
    <!-- banner part start-->

    <!-- product list start-->
    <section class="single_product_list">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="single_product_iner">
                        <div class="row align-items-center justify-content-between">
                            <div class="col-lg-6 col-sm-6">
                                <div class="single_product_img">
                                    <img src="<%= request.getContextPath() %>/resources/img/single_product_1.png" class="img-fluid" alt="#">
                                    <img src="<%= request.getContextPath() %>/resources/img/product_overlay.png" alt="#" class="product_overlay img-fluid">
                                </div>
                            </div>
                            <div class="col-lg-5 col-sm-6">
                                <div class="single_product_content">
                                    <h5>Started from $10</h5>
                                    <h2> <a href="single-product.html">Printed memory foam 
                                        brief modern throw 
                                        pillow case</a> </h2>
                                    <a href="product_list.html" class="btn_3">Explore Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single_product_iner">
                        <div class="row align-items-center justify-content-between">
                            <div class="col-lg-6 col-sm-6">
                                <div class="single_product_img">
                                    <img src="<%= request.getContextPath() %>/resources/img/single_product_2.png" class="img-fluid" alt="#">
                                    <img src="<%= request.getContextPath() %>/resources/img/product_overlay.png" alt="#" class="product_overlay img-fluid">
                                </div>
                            </div>
                            <div class="col-lg-5 col-sm-6">
                                <div class="single_product_content">
                                    <h5>Started from $10</h5>
                                    <h2> <a href="single-product.html">Printed memory foam 
                                        brief modern throw 
                                        pillow case</a> </h2>
                                    <a href="product_list.html" class="btn_3">Explore Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single_product_iner">
                        <div class="row align-items-center justify-content-between">
                            <div class="col-lg-6 col-sm-6">
                                <div class="single_product_img">
                                    <img src="<%= request.getContextPath() %>/resources/img/single_product_3.png" class="img-fluid" alt="#">
                                    <img src="<%= request.getContextPath() %>/resources/img/product_overlay.png" alt="#" class="product_overlay img-fluid">
                                </div>
                            </div>
                            <div class="col-lg-5 col-sm-6">
                                <div class="single_product_content">
                                    <h5>Started from $10</h5>
                                    <h2> <a href="single-product.html">Printed memory foam 
                                            brief modern throw 
                                            pillow case</a> </h2>
                                    <a href="product_list.html" class="btn_3">Explore Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- product list end-->


    <!-- trending item start-->
    <section class="trending_items">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section_tittle text-center">
                        <h2>Trending Items</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_product_item">
                        <div class="single_product_item_thumb">
                            <img src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_1.png" alt="#" class="img-fluid">
                        </div>
                        <h3> <a href="single-product.html">Cervical pillow for airplane
                        car office nap pillow</a> </h3>
                        <p>From $5</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_product_item">
                        <img src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_2.png" alt="#" class="img-fluid">
                        <h3> <a href="single-product.html">Foam filling cotton slow rebound pillows</a> </h3>
                        <p>From $5</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_product_item">
                        <img src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_3.png" alt="#" class="img-fluid">
                        <h3> <a href="single-product.html">Memory foam filling cotton Slow rebound pillows</a> </h3>
                        <p>From $5</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_product_item">
                        <img src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_4.png" alt="#" class="img-fluid">
                        <h3> <a href="single-product.html">Cervical pillow for airplane
                        car office nap pillow</a> </h3>
                        <p>From $5</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_product_item">
                        <img src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_5.png" alt="#" class="img-fluid">
                        <h3> <a href="single-product.html">Foam filling cotton slow rebound pillows</a> </h3>
                        <p>From $5</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_product_item">
                        <img src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_6.png" alt="#" class="img-fluid">
                        <h3> <a href="single-product.html">Memory foam filling cotton Slow rebound pillows</a> </h3>
                        <p>From $5</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- trending item end-->

    <!-- client review part here -->
    <section class="client_review">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="client_review_slider owl-carousel">
                        <div class="single_client_review">
                            <div class="client_img">
                                <img src="<%= request.getContextPath() %>/resources/img/client.png" alt="#">
                            </div>
                            <p>"Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering.</p>
                            <h5>- Micky Mouse</h5>
                        </div>
                        <div class="single_client_review">
                            <div class="client_img">
                                <img src="<%= request.getContextPath() %>/resources/img/client_1.png" alt="#">
                            </div>
                            <p>"Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering.</p>
                            <h5>- Micky Mouse</h5>
                        </div>
                        <div class="single_client_review">
                            <div class="client_img">
                                <img src="<%= request.getContextPath() %>/resources/img/client_2.png" alt="#">
                            </div>
                            <p>"Working in conjunction with humanitarian aid agencies, we have supported programmes to help alleviate human suffering.</p>
                            <h5>- Micky Mouse</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- client review part end -->

	<section class="banner_part">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-5">
					<div class="banner_text">
						<div class="banner_text_iner">
							<h1>드림소프트의 맛집플레이스!!</h1>
							<p>한번도 볼 수 없었던 맛집의 세계..!방콕러인 당신도 이제는 밖순이!</p>
							<a href="product_list.html" class="btn_1">더 알아보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="banner_img">
			<img src="<%= request.getContextPath() %>/resources/img/banner.png"
				alt="#" class="img-fluid"> <img
				src="<%= request.getContextPath() %>/resources/img/banner_pattern.png "
				alt="#" class="pattern_img img-fluid">
		</div>
	</section>
	<!-- banner part start-->
	
	<br />
	<br />
	<br />
	<br />
	<br />
	<!-- trending item start-->
	<section class="trending_items">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section_tittle text-center">
						<h2>맛집 간단 살펴보기</h2>
					</div>
				</div>
			</div>
	
			<div class="row">
				<!-- 이 div를 위의 .row안에 넣어주기만 하면 알아서 3개로 쪼개져서 행이 나뉘어짐. -->
				<!-- place 객체 몇개(별점순위나 최신순위 기준으로)를 리스트로 받아와서 여기에 for each문에 넣고 하나씩 불러들이면 될 듯. -->
				<div class="col-lg-4 col-sm-6">
					<div class="single_product_item">
						<div class="single_product_item_thumb">
							<img
								src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_1.png"
								alt="#" class="img-fluid">
						</div>
						<h3>
							<a href="single-product.html">호랑이양식당</a>
						</h3>
						<p>서울시 땡땡구 땡땡동</p>
						<p>가격정보와 별점?</p>
					</div>
				</div>
				<!-- ------------------------------------------------------------ -->
				<div class="col-lg-4 col-sm-6">
					<div class="single_product_item">
						<img
							src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_2.png"
							alt="#" class="img-fluid">
						<h3>
							<a href="single-product.html">Foam filling cotton slow rebound
								pillows</a>
						</h3>
						<p>From $5</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="single_product_item">
						<img
							src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_3.png"
							alt="#" class="img-fluid">
						<h3>
							<a href="single-product.html">Memory foam filling cotton Slow
								rebound pillows</a>
						</h3>
						<p>From $5</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="single_product_item">
						<img
							src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_4.png"
							alt="#" class="img-fluid">
						<h3>
							<a href="single-product.html">Cervical pillow for airplane car
								office nap pillow</a>
						</h3>
						<p>From $5</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="single_product_item">
						<img
							src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_5.png"
							alt="#" class="img-fluid">
						<h3>
							<a href="single-product.html">Foam filling cotton slow rebound
								pillows</a>
						</h3>
						<p>From $5</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="single_product_item">
						<img
							src="<%= request.getContextPath() %>/resources/img/tranding_item/tranding_item_6.png"
							alt="#" class="img-fluid">
						<h3>
							<a href="single-product.html">Memory foam filling cotton Slow
								rebound pillows</a>
						</h3>
						<p>From $5</p>
					</div>
				</div>
	
				<div class="col-lg-4 col-sm-6">
					<div class="single_product_item">
						<img
							src="<%=request.getContextPath()%>/resources/img/tranding_item/tranding_item_6.png"
							alt="#" class="img-fluid">
						<h3>
							<a href="single-product.html">Memory foam filling cotton Slow
								rebound pillows</a>
						</h3>
						<p>From $5</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- trending item end-->
	
	
	<!-- product list start-->
	<section class="single_product_list">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="single_product_iner">
						<div class="row align-items-center justify-content-between">
							<div class="col-lg-6 col-sm-6">
								<div class="single_product_img">
									<img
										src="<%= request.getContextPath() %>/resources/img/single_product_1.png"
										class="img-fluid" alt="#"> <img
										src="<%= request.getContextPath() %>/resources/img/product_overlay.png"
										alt="#" class="product_overlay img-fluid">
								</div>
							</div>
							<div class="col-lg-5 col-sm-6">
								<div class="single_product_content">
									<h5>어디 괜찮은 맛집 없을까 고민이 될땐?!</h5>
									<h2>
										<a href="single-product.html">흠냐리 흠냐리 심쿵냐리</a>
									</h2>
									<a href="product_list.html" class="btn_3">고고씽</a>
								</div>
							</div>
						</div>
					</div>
					<div class="single_product_iner">
						<div class="row align-items-center justify-content-between">
							<div class="col-lg-6 col-sm-6">
								<div class="single_product_img">
									<img
										src="<%= request.getContextPath() %>/resources/img/single_product_2.png"
										class="img-fluid" alt="#"> <img
										src="<%= request.getContextPath() %>/resources/img/product_overlay.png"
										alt="#" class="product_overlay img-fluid">
								</div>
							</div>
							<div class="col-lg-5 col-sm-6">
								<div class="single_product_content">
									<h5>여기다간 무슨내용을?!</h5>
									<h2>
										<a href="single-product.html">뭔내용을 넣어야 좋은 내용이라고 소문이 날 것인가</a>
									</h2>
									<a href="product_list.html" class="btn_3">의논해보자구?</a>
								</div>
							</div>
						</div>
					</div>
					<div class="single_product_iner">
						<div class="row align-items-center justify-content-between">
							<div class="col-lg-6 col-sm-6">
								<div class="single_product_img">
									<img
										src="<%= request.getContextPath() %>/resources/img/single_product_3.png"
										class="img-fluid" alt="#"> <img
										src="<%= request.getContextPath() %>/resources/img/product_overlay.png"
										alt="#" class="product_overlay img-fluid">
								</div>
							</div>
							<div class="col-lg-5 col-sm-6">
								<div class="single_product_content">
									<h5>소원을 말해봐~</h5>
									<h2>
										<a href="single-product.html">내게만 말해봐~ 마이 지니 컴스 포미~</a>
									</h2>
									<a href="product_list.html" class="btn_3">내알라딘어디에</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- product list end-->
	
	<!-- 사용자 후기란이지만 여기 개발자 후기란을 쓰는 것도 괜찮을 것 같네요 -->
	<!-- 아니다..사용자 리뷰를 뽑아오는게 좋을까..? -->
	<section class="client_review">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="client_review_slider owl-carousel">
						<div class="single_client_review">
							<div class="client_img">
								<img
									src="<%= request.getContextPath() %>/resources/img/client.png"
									alt="#">
							</div>
							<p>"민정언니 여기다가 후기남겨~</p>
							<h5>- 강민정</h5>
						</div>
						<div class="single_client_review">
							<div class="client_img">
								<img
									src="<%= request.getContextPath() %>/resources/img/client_1.png"
									alt="#">
							</div>
							<p>"은지언니 여기다가 후기 남겨</p>
							<h5>- 권은지</h5>
						</div>
						<div class="single_client_review">
							<div class="client_img">
								<img
									src="<%= request.getContextPath() %>/resources/img/client_2.png"
									alt="#">
							</div>
							<p>"흠...</p>
							<h5>- 김소영</h5>
						</div>
	
						<div class="single_client_review">
							<div class="client_img">
								<img
									src="<%=request.getContextPath()%>/resources/img/client_2.png"
									alt="#">
							</div>
							<p>"음....</p>
							<h5>- 이상아</h5>
						</div>
	
						<div class="single_client_review">
							<div class="client_img">
								<img
									src="<%=request.getContextPath()%>/resources/img/client_2.png"
									alt="#">
							</div>
							<p>"멍...</p>
							<h5>- 채우석</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- client review part end -->
	
	
	<!-- feature part here -->
	<section class="feature_part section_padding">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-6">
					<div class="feature_part_tittle">
						<h3>우리는 그렇게 당신들이 맛집을 찾아갈 수 있도록 계속 개발해나갈 것입니다.</h3>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="feature_part_content">
						<p>당신이 시대에 뒤쳐지지 않도록(?) 우리가 최고의 맛집으로 이끌게요</p>
					</div>
				</div>
			</div>
	
			<!------
	            <div class="row justify-content-center">
	                <div class="col-lg-3 col-sm-6">
	                    <div class="single_feature_part">
	                        <img src="<%-- <%= request.getContextPath() %> --%>/resources/img/icon/feature_icon_1.svg" alt="#">
	                        <h4>Credit Card Support</h4>
	                    </div>
	                </div>
	                <div class="col-lg-3 col-sm-6">
	                    <div class="single_feature_part">
	                        <img src="<%-- <%= request.getContextPath() %> --%>/resources/img/icon/feature_icon_2.svg" alt="#">
	                        <h4>Online Order</h4>
	                    </div>
	                </div>
	                <div class="col-lg-3 col-sm-6">
	                    <div class="single_feature_part">
	                        <img src="<%-- <%= request.getContextPath() %> --%>/resources/img/icon/feature_icon_3.svg" alt="#">
	                        <h4>Free Delivery</h4>
	                    </div>
	                </div>
	                <div class="col-lg-3 col-sm-6">
	                    <div class="single_feature_part">
	                        <img src="<%-- <%= request.getContextPath() %> --%>/resources/img/icon/feature_icon_4.svg" alt="#">
	                        <h4>Product with Gift</h4>
	                    </div>
	                </div>
	            </div>
	            	-->
		</div>
	</section>
	<!-- feature part end -->
	
	<!-- subscribe part here -->
	<!-- 여기다가 지도를 넣겠어요. -->
	<section class="subscribe_part section_padding">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="subscribe_part_content">
						<h2>우리 회사로 찾아오시는 길</h2>
						<p>서울시 강남구 테헤란로</p>
						<center>
							<div id="map" style="width: 80%; height: 550px;"></div>
						</center>
						<!-- <div class="subscribe_form">
	                            <input type="email" placeholder="Enter your mail">
	                            <a href="#" class="btn_1">Subscribe</a>
	                        </div> -->
	
	
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- subscribe part end -->
	
	
	<!-- 지도 삽입을 위한 script코드 -->
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(37.498993,127.0323605), // 지도의 중심좌표 
	        level: 3 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도 생성 
	
	// 마커가 표시될 위치 지정  
	var markerPosition  = new kakao.maps.LatLng(37.498993,127.0323605); 
	
	// 마커를 생성
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정
	marker.setMap(map);


	
	// 지도 위의 마커를 제거하는 코드
	// marker.setMap(null);
	
	// 인포윈도우 생성
	var iwContent = '<div style="padding:20px;">드림소프트로 오시는 길 <br><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:orange" target="_blank">큰지도보기</a> <br><br><a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:orange" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(37.498993,127.0323605); //인포윈도우 표시 위치입니다
	
	// 인포윈도우를 생성
	var infowindow = new kakao.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	  
	// 마커 위에 인포윈도우를 표시
infowindow.open(map, marker); 
</script>


<%@ include file="../views/common/footer.jsp"%>
