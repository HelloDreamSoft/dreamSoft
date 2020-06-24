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
				<table class="table">
					<!-- <thead>
						<tr>
							<th scope="col">글번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성일</th>
						</tr>
					</thead> -->
					<tbody>
						<tr>
							<td>
								<h5>제목</h5>
							</td>
							<td colspan="3">
								<input type="text" placeholder="제목을 입력하세요." size="100%"/>
							</td>
						</tr>
						<tr>
							<td>내용</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="4">
								<textarea class="summernote" id="summernote" cols="100%" rows="10"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="checkout_btn_inner float-right">
					<a class="btn_1" href="#">등록하기</a> 
					<a class="btn_1 checkout_btn_1" href="<%=request.getContextPath()%>/views/notice/noticeList.jsp">취소하기</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- <script>
	//여기 아래 부분
	$('#summernote').summernote({
		  height : 600 // 에디터 높이
		, minHeight : null // 최소 높이
		, maxHeight : null // 최대 높이
		, focus : true // 에디터 로딩후 포커스를 맞출지 여부
		, lang : "ko-KR" // 한글 설정
		, placeholder : '최대 2048자까지 쓸 수 있습니다' //placeholder 설정
		/* , toolbar: [
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
         ] */
		
	});
	/* $("div.note-editable").on('drop',function(e){
        for(i=0; i< e.originalEvent.dataTransfer.files.length; i++){
        	uploadSummernoteImageFile(e.originalEvent.dataTransfer.files[i],$(".summernote")[0]);
        }
       e.preventDefault();
	}); */
	
	
</script> -->
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