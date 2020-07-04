<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<!-- breadcrumb part start-->
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>Place 등록</h2>
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
				<form method="post">
					<table class="table">
						<tbody>
							<tr>
								<td rowspan="3">
									<div class="d-flex">
										<img src="<%=request.getContextPath()%>/resources/img/arrivel/arrivel_1.png" alt="" />
									</div>
								</td>
								<td>
									<h5 style="text-align: center;">PLACE 이름</h5>
								</td>
								<td colspan="2"><input type="text"
									placeholder="가게 이름을 등록해주세요"
									style="width: 100%; height: 40px; border: none;" /></td>
							</tr>
							<tr>
								<td>
									<h5 style="text-align: center;">PLACE 전화번호</h5>
								</td>
								<td colspan="2"><input type="text"
									placeholder="02-1234-1234"
									style="width: 100%; height: 40px; border: none;" /></td>
							</tr>
							<tr>
								<td>
									<h5 style="text-align: center;">PLACE 주소</h5>
								</td>
								<td colspan="2"><input type="text"
									placeholder="가게 이름을 등록해주세요"
									style="width: 100%; height: 40px; border: none;" /> <a
									class="btn_1" href="#">주소검색</a></td>
							</tr>
							<tr>
								<td>
									<h5 style="text-align: center;">영업시간</h5>
								</td>
								<td><input type="text" placeholder="오픈시간" /> - <input
									type="text" placeholder="마감시간" /></td>
								<td>
									<h5 style="text-align: center;">브레이크 타임</h5>
								</td>
								<td><input type="text" placeholder="시작시간" /> - <input
									type="text" placeholder="종료시간" /></td>
							</tr>
							<tr>
								<!-- 내용입력 -->
								<td colspan="4"><textarea class="summernote"></textarea></td>
							</tr>

						</tbody>
					</table>
					<div class="checkout_btn_inner float-right">
						<a class="btn_1"
							href="<%=request.getContextPath()%>/views/place/placeList.jsp">등록완료</a>
						<a class="btn_1 checkout_btn_1"
							href="<%=request.getContextPath()%>/views/place/placeList.jsp">목록으로 가기</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!--================End Cart Area =================-->


<script>
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