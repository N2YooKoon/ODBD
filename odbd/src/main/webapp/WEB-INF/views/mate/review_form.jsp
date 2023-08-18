<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>산책메이트 후기 등록</title>
  <style>
.header{
  font-weight: bold;
  text-align: center;
  font-size: 30px;
}
hr {
  border: 1px solid black;
}
 .form-container {
    width: 300px;
    margin: 0 auto;
  }
  .form-row {
    margin-bottom: 10px;
  }
  label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
  }
  input[type="text"],
  input[type="date"],
  select {
    width: 100%;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }
   button {
    display: block;
    margin: 0 auto;
    padding: 10px 20px;
    background-color: yellow;
    font-weight: bold;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }
  </style>
</head>
<body>

<div class="header">산책메이트 후기 등록</div>
<hr>

  <div class="form-container">
    <div class="form-row">
      <label for="nickname">작성자 닉네임</label>
      <input type="text" id="nickname" placeholder="(작성자 닉네임)">
    </div>
    
    <div class="rating">별점
      <fieldset>
        <span class="text-bold">별점을 선택해주세요</span><br>
        <input type="radio" name="reviewStar" value="1" id="rate1"><label
          for="rate1">★</label>
        <input type="radio" name="reviewStar" value="2" id="rate2"><label
          for="rate2">★★</label>
        <input type="radio" name="reviewStar" value="3" id="rate3"><label
          for="rate3">★★★</label>
        <input type="radio" name="reviewStar" value="4" id="rate4"><label
          for="rate4">★★★★</label>
        <input type="radio" name="reviewStar" value="5" id="rate5"><label
          for="rate5">★★★★★</label>
      </fieldset>
      </div>
      <br>      
    
    
    <div class="form-row">
      <label for="breed">견종</label>      
    </div>    
<script language="javascript">
function firstChange() {// 대분류 변한 경우
 var x = document.form1.first.options.selectedIndex;//선택한 인덱스
 var groups=document.form1.first.options.length;//대분류 갯수
 var group=new Array(groups);//배열 생성
 for (i=0; i<groups; i++) {
  group[i]=new Array();
 }//for
 // 옵션(<option>) 생성
 group[0][0]=new Option("대분류를 먼저 선택하세요","");
 group[1][0]=new Option("대형견 견종 선택","");
  group[1][1]=new Option("로트와일러");//결과 <option value="ss">삼성</option>
 group[1][2]=new Option("라브라도 리트리버");
 group[1][3]=new Option("독일 몬스터 허");
 group[1][4]=new Option("세인트 버나드");
 group[1][5]=new Option("허스키");
 group[1][6]=new Option("말라뮤트");
 group[1][7]=new Option("차우차우");
 group[1][8]=new Option("코카스");
 group[1][9]=new Option("기타");
 
    
 group[2][0]=new Option("중형견 견종  선택","");
 group[2][1]=new Option("비글");
 group[2][2]=new Option("퍼그");
 group[2][3]=new Option("코카 스파니");
 group[2][4]=new Option("시바 이누");
 group[2][5]=new Option("진돗개");
 group[2][6]=new Option("삽살개");
 group[2][7]=new Option("비즐라");
 group[2][8]=new Option("아이리시세터");
 group[2][9]=new Option("기타");

    
 group[3][0]=new Option("소형견 견종  선택","");
 group[3][1]=new Option("요크셔테리어");
 group[3][2]=new Option("웨일스");
 group[3][3]=new Option("몰티즈");
 group[3][4]=new Option("시추");
 group[3][5]=new Option("나만의핀셔");
 group[3][6]=new Option("닥스훈트");
 group[3][7]=new Option("치와와");
 group[3][8]=new Option("비숑");
 group[3][9]=new Option("기타");

 temp = document.form1.second;//두번 째 셀렉트 얻기(<select name=second>)
 for (m = temp.options.length-1 ; m > 0 ; m--) {//현재 값 지우기
  temp.options[m]=null
 }
 for (i=0;i<group[x].length;i++){//값 셋팅
  //예) <option value="ss">삼성</option>
  temp.options[i]=new Option(group[x][i].text,group[x][i].value);
 }
 temp.options[0].selected=true//인덱스 0번째, 즉, 첫번째 선택
}//firstChange

function secondChange() {//중분류 변한 경우
 var first = document.form1.first.options.selectedIndex;
 var x = document.form1.second.options.selectedIndex;
 var groups=document.form1.second.options.length;
 var group=new Array(groups);
 for (i=0; i<groups; i++) {
   group[i]=new Array();
 }
 
 temp = document.form1.third;
 for (m = temp.options.length-1 ; m > 0 ; m--) {
  temp.options[m]=null
 }
 for (i=0;i<group[x].length;i++){
  temp.options[i]=new Option(group[x][i].text,group[x][i].value)
 }
 temp.options[0].selected=true
}//secondChange
</script>

<form name="form1">

<select name=first onchange="firstChange();" size=1>
<option value=''>대분류</option>
<option value=''>대형견</option>
<option value=''>중형견</option>
<option value=''>소형견</option>
</select>

<select name=second onchange="secondChange();" size=1>
 <option value=''>대분류를 먼저 선택하세요</option>
</select>

</form>
    
  
    
  
    <div class="form-row">
      <label for="preferredRoute">참여지역</label>
          
<script language02="javascript02">
  function firstChange02() {// 대분류 변한 경우
   var x = document.form02.first02.options.selectedIndex;//선택한 인덱스
   var groups=document.form02.first02.options.length;//대분류 갯수
   var group=new Array(groups);//배열 생성
   for (i=0; i<groups; i++) {
    group[i]=new Array();
   }//for
    // 옵션(<option>) 생성
 group[0][0]=new Option("대분류를 먼저 선택하세요","");
 group[1][0]=new Option("동구 선택","");
  group[1][1]=new Option("oo동");//결과 <option value="ss">삼성</option>
 group[1][2]=new Option("oo동");
 group[1][3]=new Option("oo동");
 group[1][4]=new Option("oo동");
 group[1][5]=new Option("oo동");
 group[1][6]=new Option("oo동");
 group[1][7]=new Option("oo동");
 group[1][8]=new Option("oo동");
 group[1][9]=new Option("기타");
 
    
 group[2][0]=new Option("서구  선택","");
 group[2][1]=new Option("oo동");
 group[2][2]=new Option("oo동");
 group[2][3]=new Option("oo동");
 group[2][4]=new Option("oo동");
 group[2][5]=new Option("oo동");
 group[2][6]=new Option("oo동");
 group[2][7]=new Option("oo동");
 group[2][8]=new Option("oo동");
 group[2][9]=new Option("기타");

    
 group[3][0]=new Option("유성구 선택","");
 group[3][1]=new Option("oo동");
 group[3][2]=new Option("oo동");
 group[3][3]=new Option("oo동");
 group[3][4]=new Option("oo동");
 group[3][5]=new Option("oo동");
 group[3][6]=new Option("oo동");
 group[3][7]=new Option("oo동");
 group[3][8]=new Option("oo동");
 group[3][9]=new Option("기타");

 group[4][0]=new Option("대덕구  선택","");
 group[4][1]=new Option("oo동");
 group[4][2]=new Option("oo동");
 group[4][3]=new Option("oo동");
 group[4][4]=new Option("oo동");
 group[4][5]=new Option("oo동");
 group[4][6]=new Option("oo동");
 group[4][7]=new Option("oo동");
 group[4][8]=new Option("oo동");
 group[4][9]=new Option("기타");

 group[5][0]=new Option("중구  선택","");
 group[5][1]=new Option("oo동");
 group[5][2]=new Option("oo동");
 group[5][3]=new Option("oo동");
 group[5][4]=new Option("oo동");
 group[5][5]=new Option("oo동");
 group[5][6]=new Option("oo동");
 group[5][7]=new Option("oo동");
 group[5][8]=new Option("oo동");
 group[5][9]=new Option("기타");

 temp = document.form02.second02;//두번 째 셀렉트 얻기(<select name=second>)
 for (m = temp.options.length-1 ; m > 0 ; m--) {//현재 값 지우기
  temp.options[m]=null
 }
 for (i=0;i<group[x].length;i++){//값 셋팅
  //예) <option value="ss">삼성</option>
  temp.options[i]=new Option(group[x][i].text,group[x][i].value);
 }
 temp.options[0].selected=true//인덱스 0번째, 즉, 첫번째 선택
}//firstChange

function secondChange02() {//중분류 변한 경우
 var first = document.form02.first02.options.selectedIndex;
 var x = document.form02.second02.options.selectedIndex;
 var groups=document.form02.second02.options.length;
 var group=new Array(groups);
 for (i=0; i<groups; i++) {
   group[i]=new Array();
 }
 
 temp = document.form02.third;
 for (m = temp.options.length-1 ; m > 0 ; m--) {
  temp.options[m]=null
 }
 for (i=0;i<group[x].length;i++){
  temp.options[i]=new Option(group[x][i].text,group[x][i].value)
 }
 temp.options[0].selected=true
}//secondChange
</script>

<form name="form02">

<select name=first02 onchange="firstChange02();" size=1>
<option value=''>지역선택해주세요.</option>
<option value=''>대전동구</option>
<option value=''>대전서구</option>
<option value=''>대전유성구</option>
<option value=''>대전대덕구</option>
<option value=''>대전중구</option>
</select>

<select name=second02 onchange="secondChange02();" size=1>
 <option value=''>지역을 먼저 선택하세요</option>
</select>

</form>

   
    </div> 
    
     <div class="form-row">
     <label for="notice">후기(50자 이내)</label>       
     <textarea rows="5" cols="40" name="contents">
        DB에서 가져온 후기

    </textarea>
     
     </div>
       
     
     
 <button onclick="location.href='mate_review01.jsp';">등록하기</button>
     
  </div>
</body>
</html>

