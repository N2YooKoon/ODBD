<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
    <%
    request.setCharacterEncoding("utf-8");
    %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>기업회원 가입창</title>
    <meta charset="utf-8">
	<title>일반회원 가입창</title>
    <!-- 주소 api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/js/addr_api.js"></script>

	<script src="https://code.jquery.com/jquery-latest.min.js"></script>

    <script>
    //도메인 자동 넘겨받기 스크립트
    document.addEventListener("DOMContentLoaded", function() {
      const domainSelect = document.getElementById('domainSelect');
      const domainInput = document.getElementById('domainInput');
      const emailInput = document.getElementById('email');

      domainSelect.addEventListener('change', () => {
        const selectedValue = domainSelect.value;
        if (selectedValue === 'inputSelf') {
          domainInput.value = '';
          domainInput.removeAttribute('disabled');
        } else {
          domainInput.value = selectedValue;
          domainInput.setAttribute('disabled', 'disabled');
        }
      });

      emailInput.addEventListener('input', () => {
        const email = emailInput.value;
        const atIndex = email.indexOf('@');
        if (atIndex !== -1) {
          domainInput.value = email.slice(atIndex + 1);
        }
      });
    });

    //체크박스 선택 해제 스크립트
 function checkSelectAll()  {
  // 전체 체크박스
  const checkboxes 
    = document.querySelectorAll('input[name="join_documant"]');
  // 선택된 체크박스
  const checked 
    = document.querySelectorAll('input[name="join_documant"]:checked');
  // select all 체크박스
  const selectAll 
    = document.querySelector('input[name="selectall"]');
  
  if(checkboxes.length === checked.length)  {
    selectAll.checked = true;
  }else {
    selectAll.checked = false;
  }

}

function selectAll(selectAll)  {
  const checkboxes 
     = document.getElementsByName('join_documant');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked
  })
}

// 이미지 미리보기
	function setThumbnail(event){
		var reader = new FileReader();
		
		reader.onload = function(event){
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			img.setAttribute("class", "col-lg-6");
			document.querySelector("div#image_container").appendChild(img);
		};
		
		reader.readAsDataURL(event.target.files[0]);
	}

</script>
<style>
/* Google web font CDN*/
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');

*{
    box-sizing: border-box; /*전체에 박스사이징*/
    outline: none; /*focus 했을때 테두리 나오게 */
}

body{
    font-family: 'Noto Sans KR', sans-serif;
    font-size:14px;
    background-color: #f5f6f7;
    line-height: 1.5em;
    color : #222;
    margin: 0;
}

a{
    text-decoration: none;
    color: #222;
}

/*member sign in*/
.member{
    width: 550px;
    /* border: 1px solid #000; */
    margin: auto; /*중앙 정렬*/
    padding: 0 20px;
    margin-bottom: 20px;
}

.member .logo{
    /*로고는 이미지라 인라인 블록이니까 마진 오토 안됨 블록요소만 됨 */
    display: block;
    margin :50px auto;
}

.member .field{
    margin :5px 0; /*상하로 좀 띄워주기*/
}

.member b{
    /* border: 1px solid #000; */
    display: block; /*수직 정렬하기 */
    margin-bottom: 5px;
}

/*input 중 radio 는 width 가 100%면 안되니까 */
.member input:not(input[type=radio]),.member select{
    border: 1px solid #dadada;
    padding: 15px;
    width: 100%;
    margin-bottom: 5px;
	
}

.member input[type=button],
.member input[type=submit]{
cursor: pointer;
background-color: #FFCD29;
color:black
}

.member input:focus, .member select:focus{
    border: 1px solid #FFCD29;
	
}

.field.birth div{ /*field 이면서 birth*/
    display: flex;
    gap:10px; /*간격 벌려줄때 공식처럼 사용핟나 */
    width: 500px;
}

/* .field.birth div > * {  gap 사용한거랑 같은 효과를 줌 
    flex:1;
} */

.field.tel-number div {
    display: inline-block;
}

.field.tel-number div input:nth-child(1){
    flex:2;
}

.field.tel-number div input:nth-child(2){
    flex:1;
}

.field.gender div{
    border: 1px solid #dadada;
    padding: 15px 5px;
    background-color: #fff;
}

.placehold-text{
    display: block; /*span 으로 감싸서 크기영역을 블록요소로 만들어ㅜ저야한다*/
    position:relative;
    /* border: 1px solid #000; */
}

.placehold-text:before{ 
    content : "@naver.com";
    position:absolute; /*before은 inline 요소이기 때문에 span으로 감싸줌 */
    right : 20px;
    top:13px;
    pointer-events: none; /*자체가 가지고 있는 pointer event 를 없애준다 */
}

.userpw{
    background:url(./images/images2/icon-01.png) no-repeat center right 15px;
    background-size: 20px;
    background-color: #fff;
}

.userpw-confirm{
    background:url(./images/images2/icon-02.png) no-repeat center right 15px;
    background-size: 20px;
    background-color: #fff;
}

.member-footer {
    text-align: center;
    font-size: 12px;
    margin-top: 20px;
}

.member-footer div a:hover{
    text-decoration: underline;
    color:#FFCD29
}

.member-footer div a:after{
    content:'|';
    font-size: 10px;
    color:#bbb;
    margin-right: 5px;
    margin-left: 7px;
    /*살짝 내려가 있기 때문에 위로 올려주기 위해 transform 사용하기*/
    display: inline-block;
    transform: translateY(-1px);

}

.member-footer div a:last-child:after{
    display: none;
}

#resize1{
    display: flex;
    gap: 10px;
}

#not-chkbox{
    width: 20px;
    display:inline-block;
    margin-bottom: 15px;
}

@media (max-width:768px) {
    .member{
        width: 100%;
    }
}

:root {
	accent-color: #FFCD29;
    accent-color:#FFCD29;
    accent-color: #FFCD29;
    accent-color: #FFCD29;
	
}
</style>
</head>
<body>
	<h1 align="center">기업회원 회원가입</h1>
			<body>
				<div class="member">
                    <h3>기본정보</h3>
                    <hr>
					
					<!-- 2. 필드 -->
                    <div>
                        <b>아이디</b>
                        <div id="resize1">
                            <input type="text" style="width: 786%">
                            <input type="button" value="중복확인">
                        </div>
                    </div>
					
					<div class="field">
						<b>비밀번호</b>
						<input class="userpw" type="password">
					</div>
					
					<div class="field">
						<b>비밀번호 재확인</b>
						<input class="userpw-confirm" type="password">
					</div>
					
					<div class="field">
						<b>이름(상호명)</b>
						<input type="text">
					</div>
					
					<div class="field">
						<b>사업자 등록번호 (-빼고 입력)</b>
						<input type="text">
					</div>

					<div>
						<b>사업자 등록증 이미지 첨부</b>
						<div id="resize1">
							<input type="text" style="width: 700"> <!-- 이곳에 첨부한 이미지 이름이 오게끔 하고싶다. -->
							<input type="button" value="이미지 첨부하기">
						</div>
					</div>

                    <div class="field birth">
						<b>연락처</b>
							<div>
							<select>
								<option value="">대한민국 +82</option>
							</select>
							<input type="text">
							<input type="text">
							</div>
					</div>
		
					<div class="field birth">
						<b>이메일 주소</b>
						<div>
                            <input type="email" id="email" placeholder="이메일"><p>@</p>
                            <input type="text" id="domainInput" placeholder="도메인">
                            <select id="domainSelect">
								<option value="">도메인 선택</option>
								<option value="naver.com">naver.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="gmail.com">gmail.com</option>
								<option value="inputSelf">직접입력</option>
                            </select>
						</div>
					</div> 
				
					<div class="field birth">
						<b>주소</b>
                        <div>
                            <input type="text" id="sample4_postcode" placeholder="우편번호">
                            <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                        </div>
                        <div>
                            <input type="text" id="sample4_roadAddress" class="boxBlock"placeholder="도로명주소">
                            <input type="text" id="sample4_jibunAddress" class="boxBlock" placeholder="지번주소">
                        </div> 
                        <div>
                            <span id="guide" style="color:#999;display:none"></span>
                            <input type="text" id="sample4_detailAddress" class="boxBlock" placeholder="상세주소">
                            <input type="text" id="sample4_extraAddress" class="boxBlock" placeholder="참고항목">
                        </div>   
					</div>

					<div>
						<b>대표 이미지 등록</b>
						<div id="resize1">
							<div class="form-group">
								<input class="form-control form-control-user" type="file" multiple="multiple"
								name="product_detail_image" id="product_detail_image" onchange="setDetailImage(event);">
							</div>
							<div id="images_container"></div>
							<input type="text" style="width: 700"> <!-- 이곳에 첨부한 이미지 이름이 오게끔 하고싶다. -->
							<input type="button" value="이미지 첨부하기">
						</div>
					</div>
                    
                    <div>
                        <h3>약관 동의</h3>
                        <div>
                            <div>
                                <input id="not-chkbox" type="checkbox" name='selectall' onclick='selectAll(this)'>
                                <label for="check_all">전체 동의</label>
                            </div>
                            <hr>
                            <div>
                                <input type="checkbox" id="not-chkbox" name='join_documant' onclick='checkSelectAll()'>
                                <label for="check_1">개인정보 처리방침 동의</label>
                                <div align="right">
                                    <a href="#">[약관보기]</a>
                                </div>
                            </div>
                            <div>
                                <input type="checkbox" id="not-chkbox" name='join_documant' onclick='checkSelectAll()'>
                                <label for="check_2">서비스 이용약관 동의</label>
                                <div align="right">
                                    <a href="#">[약관보기]</a>
                                </div>
                            </div>
                            <div>
                                <input type="checkbox" id="not-chkbox" name='join_documant' onclick='checkSelectAll()'>
                                <label for="check_3">마케팅 수신 동의</label>
                                <div align="right">
                                    <a href="#">[약관보기]</a>
                                </div>
                            </div>
                        </div>
				    </div>
                    <hr>
                    <div>
                        <input type="submit" class="member" value="기업회원으로 가입하기" style="font-size: 18px; font-weight: bold;">
                        <a href="${contextPath}#">
                    </div>
                </div>
		</section>
	</form>
</body>			
</html>