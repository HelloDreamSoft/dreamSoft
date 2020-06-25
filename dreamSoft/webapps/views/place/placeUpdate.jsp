<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<!-- breadcrumb part start-->
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>Place 수정</h2>
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
									<input type="text"  value="이미지넣을것"/>
								</td>
								<td>
									<h5 style="text-align: center;">PLACE 이름</h5>
								</td>
								<td colspan="2">
									<input type="text" placeholder="가게 이름을 등록해주세요" readonly="readonly" style="width: 100%; height: 40px; border: none; "/>
								</td>
							</tr>
							<tr>
								<td>
									<h5 style="text-align: center;">PLACE 전화번호</h5>
								</td>
								<td colspan="2">
									<input type="text" placeholder="02-1234-1234" style="width: 100%; height: 40px; border: none;"/>
								</td>
							</tr>
							<tr>
								<td>
									<h5 style="text-align: center;">PLACE 주소</h5>
								</td>
								<td colspan="2">
									<input type="text" placeholder="가게 이름을 등록해주세요" style="width: 100%; height: 40px; border: none;"/>
									<a class="btn_1" href="#">주소검색</a>
								</td>
							</tr>
							<tr>
								<td>
									<h5 style="text-align: center;">영업시간</h5>
								</td>
								<td>
									<input type="text" placeholder="오픈시간" /> -  
									<input type="text" placeholder="마감시간" /> 
								</td>
								<td>
									<h5 style="text-align: center;">브레이크 타임</h5>
								</td>
								<td>
									<input type="text" placeholder="시작시간" />  -  
									<input type="text" placeholder="종료시간" />
								</td>
							</tr>
							<tr> <!-- 내용입력 -->
								<td colspan="4">
									<textarea class="summernote" ></textarea>
								</td>
							</tr>
							
						</tbody>
					</table>
					<div class="checkout_btn_inner float-right" style="font-size: 18px;">
					    <a class="genric-btn danger radius e-large" href="<%=request.getContextPath()%>/views/place/placeList.jsp">삭제하기</a>
						<a class="genric-btn success radius e-large" href="<%=request.getContextPath()%>/views/place/placeList.jsp">수정완료</a>
						<a class="genric-btn primary radius e-large" href="<%=request.getContextPath()%>/views/place/placeDetail.jsp">취소</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!--================End Cart Area =================-->


<script>
$('.summernote').summernote({
    placeholder: '내용을 입력하세요',
    tabsize: 2,
    height: 600,                 // set editor height
    minHeight: null,             // set minimum height of editor
    maxHeight: null,             // set maximum height of editor
    focus: true,                  // set focus to editable area after initializing summernote
    toolbar: [
      ['style', ['style']],
      ['font', ['bold', 'underline', 'clear']],
      ['color', ['color']],
      ['para', ['ul', 'ol', 'paragraph']],
      ['table', ['table']],
      ['insert', ['link', 'picture', 'video']],
      ['view', ['fullscreen', 'codeview', 'help']]
    ]
  });
</script>


<%@ include file="../common/footer.jsp"%>