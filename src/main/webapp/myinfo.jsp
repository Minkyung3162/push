<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- html주석: 지정 ctrl + shift +/ , 해제 ctrl + shift +\  -->
<%-- jsp주석 : jsp 요소는 html 주석으로 주석 설정이 되지 않는다.  --%>
<%--

<

 --%>

<%-- <%0 ~ %>  --%>

<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Hello world</title> 
</head>
<body>
myinfo.jsp 입니다. <br><br><br>반갑습니다.<br><br>

<% out.println(application.getRealPath("/"));%>

<!--

form 사이에 작성한다. 현재페이지에 입력해서 특정페이지로 전송할 내용을. form태크 안에 쓴다. 
action 속성은 전송(type="submit")버튼이 클릭되면 form에 입력된 데이터를 가지고 넘어갈 jsp페이지 이름을 쓴다.
?는 현재페이지를 의미한다. <form action="?"  라고 쓰면 현재페이지로. 
method속성은 action페이지로 데이터가 존송될때 정보가 url창에 표시되는 여부를 지정한다. 
method 기본값은get이다. 안쓰면get으로 지정. 전송되는데이터가 주소창(url창)에 표시된다. 
post로 변경하면 표시되지 않는다. 아이디나 비번이 표시되면안되니까.. 

밑에 name은 변수명을 의미 "name" 이라고 변수명 쓴거임 임. 

password는 한글타자 안됨. 무조건영문으로 입력되게 되어있음. 복붙할때는 들어가긴함.키보드로치면 안들어감..

  -->




<form action="myinfoOK.jsp" method="post">
<label> 이름: <input type="text" name="name"></label> <br>
<label> 아이디: <input type="text" name="id"></label> <br>
<label> 비번: <input type="password" name="password"></label> <br>
<label> 나이: <input type="text" name="age"></label> <br><br>
<!-- 

radio와 checkbox는 같은 그룹끼리 반드시 같은 이름의 name 속성을 지정해서 그룹으로 묶어야한다. 
 
 -->
 <fieldset style="width: 120px;">
 	<legend>성별</legend>
	 <input type="radio" name= "gender" checked="checked" value="true">남자
	 <input type="radio" name= "gender" value="false">여자
 </fieldset><br>
 
 <fieldset style="width: 200px;">
 <legend>취미</legend>
 <input type="checkbox" name="hobbies" value="등산">등산
  <input type="checkbox" name="hobbies" value="바둑">바둑
   <input type="checkbox" name="hobbies" value="낚시">낚시
 </fieldset><br>	
 
 <!-- 콤보상자만들기  -->
 <select name = "trip" style="width: 200px; height: 30px;" >
 
 	<option>괌 </option>
 	<option>코타키나발루 </option>
 	<option selected="selected">다낭 </option>
 	<option>나트랑 </option>
 	<option>대만 </option>
 	<option>보라카이 </option>
 
 </select><br>
 

 
 <!-- 목록상자만들기  -->
   
 <select name = "travel" style="width: 200px; height: 100px;" multiple="multiple" size="8" >
 
 	<option>괌 </option>
 	<option selected="selected"> 코타키나발루 </option>
 	<option>다낭 </option>
 	<option>나트랑 </option>
 	<option>대만 </option>
 	<option selected="selected">보라카이 </option>
  
 </select><br><br>
 
 메모<br>
 <textarea rows="10" cols="60" name="content" style="resize: none;"
 ></textarea><br>
 
        <input type="submit" value="정보보기">
        <input type="reset" value="다시쓰기">
        <input type="button" value="버튼">
        <button type="submit">서브밋</button>
        <button type="reset">다시쓰기</button>
</form>





</body>
</html>





















