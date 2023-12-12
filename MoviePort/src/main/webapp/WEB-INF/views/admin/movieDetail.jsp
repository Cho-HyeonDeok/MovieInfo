<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상세 페이지</title>
<link href="https://font.elice.io/css?family=Elice+DX+Neolli" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<style type="text/css">
@import url("https://font.elice.io/css?family=Elice+DX+Neolli");

#title_font_1{
padding-top:10px;
font-family: "Elice DX Neolli";
color: #000;
text-align: center;
font-size: 20pt;
}

.just_for_padding{
padding-left: 5px;
}

.label_font_size .label_font{
font-size: 12pt;
font-weight: bold;
}

.image_button_1{
background: #fff;
border: 1px solid #000;
}
#result_card img {
	max-width: 100%;
	height: auto;
	display: block;
	padding: 5px;
	margin-top: 10px;
	margin: auto;
}

#result_card {
	position: relative;
}
</style>

</head>
<body>
<%@ include file="admin_header.jsp"%>
<div class="title_font">
   <h1 id="title_font_1">영화상세정보</h1>
</div>
   <br>
   
   <div class="row justify-content-center">
   <form id="movieInfo" method="post">
      <div><input type="hidden" name="m_code" value="${info.m_code }" id="m_code" readonly="readonly"></div>
      <div class="label_font_size">
         <label class="label_font">썸네일</label>
      </div>
      <div class="image_button_design">
         <div id="uploadResult">
         </div>
         <input type="file" name="thumb" id="thumb" accept="image/*" >
      </div>
      <div class="label_font_size">
         <label class="label_font">영화제목</label>
      </div>
      <div><input type="text" name="title" value="${info.title }" id="title"></div>
      <div class="label_font_size">
         <label class="label_font">기존제목</label>
      </div>
      <div><input type="text" name="original_title" value="${info.original_title }" id="original_title"></div>
      <div class="label_font_size">
         <label class="label_font">언어</label>
      </div>
      <div><input type="text" name="language" value="${info.language }" id="language"></div>
      <div class="label_font_size">
         <label class="label_font">장르</label>
      </div>
      <div><input type="text" name="genres" value="${info.genres }" id="genres"></div>
      <div class="label_font_size">
         <label class="label_font">영상링크</label>
      </div>
      <div><input type="text" name="video" value="${info.video }" id="video"></div>
      <div class="label_font_size">
         <label class="label_font">상영일</label>
      </div>
      <div><input type="text" name="showdate" value="${info.showdate }" id="showdate"></div>
      <div class="label_font_size">
         <label class="label_font">영화상영구분(예정작, 상영중, 상영종료)</label>
      </div>
      <div>
         <input type="text" value="${info.type }" name="type"  placeholder="0, 1, 2 입력" id="type"></div>
      <div class="label_font_size">
         <label class="label_font">줄거리</label>
      </div>
      <div><textarea rows="10" cols="70" name="content" id="content">${info.content }</textarea></div>
   </form>
   </div>
   <div class="row justify-content-center">
   	<div class="just_for_padding">
      <input type="button" id="update_button" class="btn btn-black" value="수정">
      <input type="button" id="delete_button" class="btn btn-white" value="삭제">
      <button type="button" onclick="location.href='/admin/movieList'" class="btn btn-black">닫기</button>
  		</div>
  
   </div>
   
   

	 <script>
      var msg = "${msg}";

      if (msg != "") {
         alert(msg);
      }

      /* 수정하기 버튼 클릭 메서드 */
      $("#update_button").click(function() {
         /* 입력한 변수 */
         var thumb = $("#thumb").val();
         var title = $("#title").val();
         var original_title = $("#original_title").val();
         var language = $("#language").val();
         var genres = $("#genres").val();
         var video = $("#video").val();
         var showdate = $("#showdate").val();
         var type = $("#type").val();
         var content = $("#content").val();
         /* 유효성 검사 */
         if (title == "") {
            alert("제목을 입력하세요.");
            return false;
         } else if (original_title == "") {
            alert("기존 제목을 입력하세요.");
            return false;
         } else if (language == "") {
            alert("언어를 입력하세요.");
            return false;
         } else if (genres == "") {
            alert("장르를 입력하세요.");
            return false;
         } else if (video == "") {
            alert("영상링크를 입력하세요.");
            return false;
         } else if (showdate == "") {
            alert("상영일를 입력하세요.");
            return false;
         } else if (type == "") {
            alert("영화상영구분을 입력하세요.");
            return false;
         } else if (content == "") {
            alert("줄거리를 입력하세요.");
            return false;
         } else {
            /* 영화정보 수정 동의여부 */
            if (confirm("영화정보를 수정하시겠습니까?")) {
               /* 영화정보 수정 메서드 서버 요청 */
               $("#movieInfo").attr("action", "/admin/movieUpdate.do");
               $("#movieInfo").submit();
            } else {
               document.location = '/admin/movieDetail?m_code=${info.m_code}';
            }
            return true;
         }
      });
      
      
      /* 삭제 버튼 */
      $("#delete_button").on("click", function(e){
         e.preventDefault();
         let moveForm = $("#movieInfo");
         
         moveForm.find("input").remove();
         moveForm.append('<input type="hidden" name="m_code" value="${info.m_code}">');
         moveForm.attr("action", "/admin/movieDelete");
         moveForm.attr("method", "post");
         moveForm.submit();
      });
      
      /* 이미지 업로드 */
      $("input[type='file']").on("change", function(e){   
         let formData = new FormData();
         let fileInput = $('input[name="thumb"]');
         let fileList = fileInput[0].files;
         let fileObj = fileList[0];
         
         formData.append("thumb", fileObj);
         
         $.ajax({
            url: '/admin/uploadAjaxAction',
             processData : false,
             contentType : false,
             data : formData,
             type : 'POST',
             dataType : 'json',
             success : function(result){
                console.log(result);
                showUploadImage(result);
             },
             error : function(result){
                alert("이미지 파일이 아닙니다.");
             }
         });
      });
      
      /* 이미지 출력 */
      function showUploadImage(uploadResultArr){
         /* 전달받은 데이터 검증 */
         if(!uploadResultArr || uploadResultArr.length == 0){return}
         let uploadResult = $("#uploadResult");
         let obj = uploadResultArr[0];
         let str = "";
         let fileCallPath =  obj.thumb;
         str += "<div id='result_card'>";
         str += "<img src='/admin/display?fileName=" + fileCallPath + "'>";
         str += "<div class='imgDeleteBtn'></div>";
         str += "</div>";
         
         uploadResult.append(str); 
      }

	</script>
</body>
</html>