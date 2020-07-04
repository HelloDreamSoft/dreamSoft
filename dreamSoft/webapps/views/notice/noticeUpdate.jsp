<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.kh.dream.notice.model.vo.*" %>
<%
	Notice n = (Notice)request.getAttribute("notice");
%>

<%@ include file="../common/header.jsp"%>
<!-- breadcrumb part start-->
<section class="breadcrumb_part">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb_iner">
					<h2>공지사항 수정</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- breadcrumb part end-->
<!--================공지사항 수정 Area =================-->
<section class="cart_area section_padding">
	<div class="container">
		<div class="cart_inner">
			<div class="table-responsive">
				<form method="post" enctype="multipart/form-data" id="updateForm">
					<table class="table">
						<tbody>
							<tr>
								<td>
									<h5 style="text-align: center"><%=n.getnNo() %></h5>
								</td>
								<td colspan="2">
									<input type="text" name="nTitle" value="<%=n.getnTitle() %>" style="width: 100%; height: 50px"/>
								</td>
								<td style="text-align: center;"><%=n.getnDate() %></td>
							</tr>
							<tr>
								<td colspan="4">
									<textarea class="summernote" name="nContent"><%=n.getnContent() %></textarea>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="checkout_btn_inner float-right">
						<input type="hidden" name="nNo" value="<%=n.getnNo() %>" />
						<input type="hidden" name="nDate" value="<%=n.getnDate() %>" />
						<a class="btn_1" onclick="goUpdate();">수정완료</a> 
						<a class="btn_1 checkout_btn_1" onclick="goCancel();">취소하기</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<script>
	//여기 아래 부분
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
					url : '/dream/nImgInsert.no', // servlet url
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
	
	$("div.note-editable").on('drop',function(e){
        for(i=0; i< e.originalEvent.dataTransfer.files.length; i++){
        	uploadSummernoteImageFile(e.originalEvent.dataTransfer.files[i],$(".summernote")[0]);
        }
       e.preventDefault();
	});
	
	function goUpdate(){
		$("#updateForm").attr("action","<%=request.getContextPath()%>/nUpdate.no").submit();
		alert("수정이 완료되었습니다.");
	}
	
	function goCancel(){
		alert("수정을 취소합니다.");
		$("#updateForm").attr("action","<%=request.getContextPath()%>/selectOne.no?nno=<%=n.getnNo()%>").submit();
	}
	
</script>
<!--================End Cart Area =================-->



<%@ include file="../common/footer.jsp"%>