<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>
<!-- breadcrumb part start-->
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>공지사항 등록</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- breadcrumb part end-->
<!--================공지사항 등록 Area =================-->
<section class="cart_area section_padding">
	<div class="container">
		<div class="cart_inner">
			<div class="table-responsive">
				<form method="post">
					<table class="table">
						<tbody>
							<tr>
								<td>
									<h5 style="text-align: center">제목</h5>
								</td>
								<td colspan="3">
									<input type="text" placeholder="제목을 입력하세요." style="width: 100%; height: 50px"/>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<textarea class="summernote"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
				<div class="checkout_btn_inner float-right">
					<a class="btn_1" href="<%=request.getContextPath()%>/views/notice/noticeList.jsp">등록완료</a> 
					<a class="btn_1 checkout_btn_1" href="<%=request.getContextPath()%>/views/notice/noticeList.jsp">취소하기</a>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	//여기 아래 부분
	$('.summernote').summernote({
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
         ]
		
	});
	$("div.note-editable").on('drop',function(e){
        for(i=0; i< e.originalEvent.dataTransfer.files.length; i++){
        	uploadSummernoteImageFile(e.originalEvent.dataTransfer.files[i],$(".summernote")[0]);
        }
       e.preventDefault();
	});
	
</script>
<!--================End Cart Area =================-->



<%@ include file="../common/footer.jsp"%>