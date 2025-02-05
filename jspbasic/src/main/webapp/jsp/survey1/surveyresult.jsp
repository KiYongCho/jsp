<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String[] hobbies = (String[])request.getAttribute("hobby");
	String strHobbies = "";
	for (String hobby : hobbies) {
		switch (hobby) {
			case "game": hobby="게임"; break;  
			case "youtube": hobby="유튜브"; break;  
			case "sleeping": hobby="잠자기";   
		}
		strHobbies += hobby + " ";
	}
	out.print("설문조사 결과<br>");
	out.print("이름 : " + request.getAttribute("name") + "<br>");
	out.print("취미 : " + strHobbies);
%>