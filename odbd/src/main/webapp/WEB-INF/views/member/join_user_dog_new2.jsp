<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
    <%
    request.setCharacterEncoding("utf-8");
    %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>견종정보 입력</title>
    <!-- 제이쿼리 CDN -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
        $('document').ready(function () {
            var area0 = ["강아지 크기 선택", "소형견", "중형견", "대형견"];
            var area1 = ["미니핀", "요크셔테리어"];
            var area2 = ["보더콜리", "진도견"];
            var area3 = ["말라뮤트", "레브라도 리트리버"];

            // 강아지 크기 박스 초기화

        $("select[name^=sido]").each(function () {
            $selsido = $(this);
            $.each(eval(area0), function () {
                $selsido.append("<option value='" + this + "'>" + this + "</option>");
            });
            $selsido.next().append("<option value=''>강아지 종 선택</option>");
        });

            // 강아지 크기 선택시 강아지 종 선택

        $("select[name^=sido]").change(function () {
            var area = "area" + $("option", $(this)).index($("option:selected", $(this))); // 선택지역의 구군 Array
            var $gugun = $(this).next(); // 선택영역 강아지 종 객체
            $("option", $gugun).remove(); //강아지 종 초기화

            if (area == "area0")
                $gugun.append("<option value=''>강아지 종 선택</option>");
            else {
                $.each(eval(area), function () {
                    $gugun.append("<option value='" + this + "'>" + this + "</option>");
                });
            }
        });
    });

    //체크박스 펑션
    function toggleCheckbox(checkbox) {
    const otherCheckbox = checkbox.id === 'checkbox1' ? document.getElementById('checkbox2') : document.getElementById('checkbox1');
    otherCheckbox.checked = !checkbox.checked;
    }

    //이미지 미리보기 스크립트
    document.addEventListener("DOMContentLoaded", function() {
        const imageInput = document.getElementById("imageInput");
        const previewImage = document.getElementById("previewImage");
        const filenameDisplay = document.getElementById("filename");

    imageInput.addEventListener("change", function() {
        const selectedImage = imageInput.files[0];
        if (selectedImage) {
            const reader = new FileReader();

            reader.onload = function(event) {
                previewImage.src = event.target.result;
            };

            reader.readAsDataURL(selectedImage);

            // 파일명 표시
            filenameDisplay.textContent = selectedImage.name;
        } else {
            previewImage.src = "#";
            filenameDisplay.textContent = "";
        }
    });
});

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

#resize2{
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

.filebox {
    display: flex;
}

.filebox .upload-name {
    display: inline-block;
    height: 40px;
    padding: 0 10px;
    vertical-align: middle;
    border: 1px solid #dddddd;
    width: 78%;
    color: #999999;
}

.filebox label {
    display: inline-block;
    padding: 10px 20px;
    color: black;
    vertical-align: middle;
    background-color: #FFCD29;
    cursor: pointer;
    height: 40px;
    margin-left: 10px;
}

.filebox input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
    display: none;
}

/*이미지 미리보기 구역 css */
.image-preview {
    width: 300px;
    height: 300px;
    border: 1px solid #ccc;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
}

#previewImage {
    max-width: 100%;
    max-height: 100%;
}

    </style>
</head>
<body>
    <form>
        <section>
        <h1 align="center">일반 회원가입</h1>
            <div>
                <div class="member">
                    <h3>견종정보 입력</h3>
                    <hr>
                    
                    <!-- 2. 필드 -->

                    <div>
                        <b>강아지 사진</b>
                        <div align="center">
                            <div class="image-preview" >
                                <img id="previewImage" src="#" alt="Image Preview">
                            </div>

                            <div class="filebox">
                                
                                <input type="text" id="filename" placeholder="첨부파일" disabled>
                                <label for="imageInput" style="width: 300;" align="center">파일찾기</label> 
                                <input type="file" id="imageInput" accept="image/*">
                            </div>
                            
                        </div>
                    </div>
                    
                    <div class="field">
                        <b>강아지 이름</b>
                        <input class="userpw" type="password">
                    </div>

                    <div class="field birth">
                        <b>강아지 정보</b>
                        <div>
                            <select name="sido1" id="sido1"></select>
                            <select name="gugun1" id="gugun1"></select>
                        </div>
                    </div>
                    
                    <div class="field birth">
                        <b>태어난 날짜</b>
                        <div>
                        <label for="year"></label>
                        <select id="year"></select>
                    
                        <label for="month"><b>년</b></label>
                        <select id="month"></select>
                    
                        <label for="day"><b>월</b></label>
                        <select id="day"></select>
                        <b>일</b>
                        </div>
                    </div>
                    
                    <hr>
                    <div>
                        <input type="submit" class="member" value="일반회원 가입하기" style="font-size: 18px; font-weight: bold;">
                        <input type="button" class="member" value="나중에 입력하고 회원가입하기" style="font-size: 18px; font-weight: bold;">
                        <a href="${contextPath}#">
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>