<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"   %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
<style>
	.input{
width: 50%;
margin: 0 auto;}
h2 {
	font-weight: bold;
	text-align: center;
}
button{
	background-color: yellow;
	border: none;
	border-radius: 5px 5px;	
}
.add-goods{
	text-align:center;	
	margin-top: 110px;
}
.order-info{
	margin: 0 auto;
	border: 1px solid ;
	width:600px;
	height: 800px;
}
</style>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
		<h2>상품 등록</h2>
		<hr>
		<table>
		<div class="order-info">
		<form class="row mb-3">
			<div class="col-md-7">
				<div>
				<label for="#" class="form-label" >제품 카테고리</label>			  		 
				<select style="width: 240px;">		
				<option value="">선택하세요</option>		
                <option value="desert">간식</option>
                <option value="feed">사료</option>
                <option value="clean">위생/배변</option>
                <option value="beauty">미용/목욕</option>
				<option value="clothes">의류/스타일</option>
				<option value="toy">장난감/훈련</option>
       
              </select>
			</div>
			</div>
			<br>
			<div class="mb-3">
				<label for="#" class="form-label">제품 이미지-</label>					  
			  <label style="font-size:13px">이미지 첨부(jpg,png)</label>			  
			  <div class="col-7">
				<input type="file" class="form-control" id="#" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
			  </div>
			  </div><br>
			<div class="col-7">
			  <label for="#" class="form-label">제품명</label>
			  <input type="text" class="form-control" id="#" placeholder="상품명을 입력해주세요.">
			</div><br>
			<div class="col-7">
			  <label for="#" class="form-label">제품 가격</label>
			  <input type="text" class="form-control" id="#" placeholder="제품가격을 입력해 주세요."">
			</div>
			<br>	
			<div class="col-9">
				<label for="#" class="form-label">할인율</label>
				<select style="width:295;">
					<option value="5%">5%</option>
					<option value="5%">10%</option>
					<option value="5%">15%</option>
					<option value="5%">20%</option>
				</select>
				 </div>	<br>
				 <div class="col-9">
					<label for="#" class="form-label">상품정보</label>
					<div>
					<textarea  rows="4" cols="70">						
					</textarea>
				</div>
				</div>			
			<div>
				<label>				  
					<div align="center">이미지 파일 첨부 :
					<input type="file" name="imageFileName" onchange="readURL(this);" /></div>
					<div style="margin-top: 18px;"></div>
					<div><img id="preview" src="#" width=200 height=190 >
					<align="left">이미지 파일 첨부<input type="button" value="파일추가" onClick="fn_addFile()" /></div>				
					</div>
			</label>
			</div>
		  </form>
		</table>
  <div class="add-goods">
	<button type="button" onclick="#seller_add_goods.jsp">상품 수정 하기</button>
</div>

</body>
</html>


