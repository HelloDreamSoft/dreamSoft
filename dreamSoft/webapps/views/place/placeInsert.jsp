<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<!-- breadcrumb part start-->
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>Place 정보 생성 페이지</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- breadcrumb part end-->

<!--================Cart Area =================-->
<section class="cart_area section_padding">
	<div class="container">
		<div class="cart_inner">
			<div class="table-responsive">
				<form action = "<%= request.getContextPath() %>/pInsert.pl" method="post" enctype = "multipart/form-data">
					<table class="table">
						<tbody>
							<tr>
								<td rowspan="3">
									<div id="titleImgArea">
										<img id="titleImg" width="344.8px" height="357.56px">
									</div>
									
								</td>
								<td>
									<h5 style="text-align: center;">가게 이름</h5>
								</td>
								<td colspan="2">
									<input type="text" class = "single-input" name = "pName"
										   placeholder="가게 이름을 등록해주세요" 
										   style="width: 100%; height: 40px; border: none;" />
										   
								</td>
							</tr>
							<tr>
								<td>
									<h5 style="text-align: center;">음식 종류</h5>
								</td>
								
								<td colspan = "2">
									<input type="radio" class = "primary-radi" name="pType" value = "1" />&nbsp;일식 &nbsp;&nbsp;
									<input type="radio" class = "primary-radi" name="pType" value = "2"/>&nbsp;중식 &nbsp;&nbsp;
									<input type="radio" class = "primary-radi" name="pType" value = "3"/>&nbsp;한식 &nbsp;&nbsp;
									
								</td>
							</tr>
							<tr>
								<td>
									<h5 style="text-align: center;">가게 전화번호</h5>
								</td>
								<td colspan="2">
									<input type="text" class = "single-input" name = "pCall"
										   placeholder="예시) 02-1234-1234"
										   style="width: 100%; height: 40px; border: none;" />
									
								</td>
							</tr>
							<tr>
								<td>
									<h5 style="text-align: center;">주소</h5>
								</td>
								<td colspan="2">
									<input type="text" name="pAddress" id="address" class = "single-input"
										   placeholder="가게 주소를 등록해주세요." onclick = "addrSearch();" />
								</td>
							</tr>
							<tr>
								<td colspan="5">
								<center>
									<div id="map" style="width:100%;height:350px;"></div>
								
								</center>
								</td>
							</tr>
							<tr>
								<td>
									<label>영업시간</label>
								</td>
								<td>
									<input type="text" name = "pTime" placeholder="예시) 9:00 ~ 18:00" class = "single-input" />
								</td>
								
								<td>
									<label>브레이크타임</label>
								</td>
								<td>
									<input type="text" name = "pBreaktime" placeholder="예시) 14:00 ~ 16:00" class = "single-input" />
								</td>
							</tr>
							<tr>
								<!-- 내용입력 -->
								<td colspan="4"><textarea name = "pContent" class="summernote"></textarea></td>
							</tr>

						</tbody>
					</table>

					<div class="checkout_btn_inner float-right" style="font-size: 18px;">
						<button type = "reset" class="genric-btn success radius e-large">취소하기</a>
						<button type = "submit" class="genric-btn success radius e-large">등록하기</a>
					</div>					
			      	<div class="fileArea" id="fileArea">
			      		<input type="file" id="thumbnailImg1"
			      				name="thumbnailImg1" onchange="loadImg(this, 1);" />
		      		</div>
				</form>
				
			</div>
		</div>
	</div>
</section>
<!--================End Cart Area =================-->
	<script>	
			// 사진 게시판 미리보기 기능 지원 스크립트
 			$(function(){
				$('#fileArea').hide();
				
				$('#titleImgArea').click(() => {
					$('#thumbnailImg1').click();
				});
				
			}); 
			
			function loadImg(value, num){
				
				if(value.files && value.files[0])  {
					
					var reader = new FileReader();
					
					reader.onload = function(e){
						
						switch(num) {
						case 1 : $('#titleImg').attr('src', e.target.result);
							break;
						}
					}
					reader.readAsDataURL(value.files[0]);
				}
			}
			
			/* 주소 검색을 위한 스크립트 */ 
 			function addrSearch() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var fullAddr = ''; // 최종 주소 변수
		                var extraAddr = ''; // 조합형 주소 변수

		                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    fullAddr = data.roadAddress;

		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    fullAddr = data.jibunAddress;
		                }

		                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
		                if(data.userSelectedType === 'R'){
		                    //법정동명이 있을 경우 추가한다.
		                    if(data.bname !== ''){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있을 경우 추가한다.
		                    if(data.buildingName !== ''){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
		                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
		                }

		                // 주소 정보를 해당 필드에 넣는다.
		                $('#address').val(fullAddr);

		            }
		        }).open();
		    };
		    
		    
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
			geocoder.addressSearch('서울 송파구 송파대로48길 29', function(result, status) {
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
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});
		    
	   var check = $('.summernote').summernote({
	        height : 600 // 에디터 높이
	      , minHeight : null // 최소 높이
	      , maxHeight : null // 최대 높이
	      , focus : true  // 에디터 로딩후 포커스를 맞출지 여부
	      , lang : "ko-KR" // 한글 설정
	      , placeholder : '최대 2048자까지 쓸 수 있습니다' //placeholder 설정
	      , toolbar: [
	         // [groupName, [list of button]]
	         ['style', ['style']],
	         ['font', ['strikethrough', 'bold', 'underline', 'clear']],
	         ['Font Style', ['fontname']],
	         ['fontsize', ['fontsize']],
	         ['color', ['color']],
	         ['para', ['ul', 'ol', 'paragraph']],
	         ['table', ['table']],
	         ['height', ['height']],
	         ['insert', ['link', 'picture', 'video']],
	         ['view', ['fullscreen', 'codeview', 'help']]
	      ], callbacks : {
	         onImageUpload : function(files, editor,
	               welEditorble) {
	            data = new FormData();
	            data.append("file", files[0]);
	            var $note = $(this);
	            
	            $.ajax({
	               data : data,
	               type : "post",
	               url : '/dream/pImgInsert.pl', // servlet url
	               cache : false,
	               contentType : false,
	               processData : false,
	               success : function(fileUrl) {
	                  check.summernote('insertImage', fileUrl);
	                  alert("이미지 등록 성공!");
	               },
	               error : function(request, status, error) {
	                  alert("code:" + request.status + "\n"
	                        + "message:"
	                        + request.responseText + "\n"
	                        + "error:" + error);
	               }
	            });
	         }
	      }
	   });

	
	
	</script>
	



<%@ include file="../common/footer.jsp"%>