<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


myinfoOK.jsp 입니다.<br> 
<!-- jsp 내장객체 request , response  
 -->

<%
// 이 영역은 jsp영역이라 자바 주석이 가능하다. 
// form에 입력된 한글데이터가 post 방식으로 전송될때 한글데이터깨지는현상방지
// 아래콕드를 최초 request.getParameter("name")가 실행되기전에 적는다.  

	request.setCharacterEncoding("UTF-8");


// get방식도 한글이 깨졌엇는데 톰캣7 부터 깨지지않게되었다. 
//한글깨지면 서버환경설정에서 Server폴더,server.xml 파일을 열고 Connector
// 태그에 URLEncoding="UTF-8" 속성을 추가한다. 
// 서버에 추가하기때문에 프로젝트를 생성할떄마다 설정할 필요가 없고 이클립스를 다시 세팅할때 하면된다.

//   request.getParameter()메소드로 이전페이지에서  submit 버튼이 클릭ㄷ되면 넘어는 데이터를 받는다. 
// 이전 페이지에서 넘어오는 데이터는 무조건 문자열 형태로 넘어온다. 
	String name = request.getParameter("name");
	out.println(name + "님 안녕하세요" + "<br>");
	
	String id = request.getParameter("id");
	out.println(name + "님 아이디는" + id + "<br>");
	
	String password = request.getParameter("password");
	out.println(name + "님 비번은" + password + "<br>");
	
	try {
	int age = Integer.parseInt(request.getParameter("age"));
	out.println(name + "님 올해" + age + "살 입니다." + "<br>");
	
	out.println(name + "님 내년에" + (age +1) + "살 입니다." + "<br>");
	} catch (NumberFormatException e) {
		out.println("잘못된 나이가 입력되었습니다." + "<br>");
		out.println("<script>");
		out.println("alert('잘못된 나이가 입력되었습니다.')");
		out.println("</script>");
	}
	boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
//	String gender = request.getParameter("gender");
//	out.println(name + "님 성별은" + gender + "<br>");
	out.println(name + "님 성별은" + (gender ? "남자":"여자") + "<br>");
	
// checkbox는 여러항목 체크 가능. request.getParameter()로 받으면 첫선택값만 받을수잇음.


	String[] hobbies = request.getParameterValues("hobbies");

//	out.println(name + "님의 취미는 " + Arrays.toString(hobbies));

	out.println(name + "님의 취미는 ");
	
	try {
		for(String str: hobbies) {
		out.print(str + " ");
	}
	
	out.println("입니다." + "<br>");
	} catch (NullPointerException e) {
		out.println("없습니다." + "<br>");
	}

	String trip = request.getParameter("trip");
	out.println(name + "님 " + trip + " 가고싶어합니다. " + "<br>");
	
	String[] travel = request.getParameterValues("travel");
	out.println(name + "님의 여행지는 ");
		
		try {
			for(String str: travel) {
			out.print(str + " ");
		}
		
		out.println("입니다." + "<br>");
		} catch (NullPointerException e) {
			out.println("없습니다." + "<br>");
		}

		out.println(name + "님의 여행지는 " + Arrays.toString(travel) + "<br>");

	String content = request.getParameter("content");
// 태그사용가능, 줄바꿈 불가능
	out.println(name + "님이 남긴 글 " + content + "<br>");
	
// 태그사용불가능 , 줄바꿈 불가능 
	out.println(name + "님이 남긴 글 " + content.replace("<", "&lt;").replace(">", "&gt;") + "<br>");

// 태그사용 가능 , 줄바꿈 가능 
		out.println(name + "님이 남긴 글 " + content.replace("\r\n", "<br>") + "<br>");
// 태그사용불가능 , 줄바꿈 가능 
		out.println(name + "님이 남긴 글 " + content.replace("<", "&lt;").replace(">", "&gt;").replace("\r\n", "<br>") + "<br>");
		
%>

</body>
</html>








