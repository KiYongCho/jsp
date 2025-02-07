<%--
EL (Expression Language) : 표현식(값으로 평가되는 문장) 언어

* 형식 : ${표현식}

* EL기본객체
1) pageContext : JSP의 pageContext, 타입>javax.servlet.jsp.PageContext
2) pageScope : page영역 객체, 타입>Map
3) requestScope : request영역 객체, 타입>Map
4) sessionScope : session영역 객체, 타입>Map
5) applicationScope : application영역 객체, 타입>Map
6) param : 파라미터, 타입>Map
7) paramValues : 파라미터값들, 타입>Map
8) header : 헤더, 타입>Map
9) headerValues : 헤더값들, 타입>Map
10) cookie : 쿠키, 타입>Map
11) initParam : 초기화파라미터, 타입>Map

* EL연산자
- 수치연산자 : +, -, *, /, div, %, mod
- 비교연산자 : ==, eq, !=, ne, <, lt, >, gt, <=, le, >=, ge
- 논리연산자 : &&, and, ||, or, !, not
- empty연산자 : empty
  empty 값 : 값이 null, 빈문자열, 엔트리가 없는 맵, 요소가 없는 컬렉션(List, Set)인 경우는 true
                  나머지 모든 경우는 false
- 비교선택연산자(3항 연산자) : 식 ? 값1 : 값2, 식이 true이면 값1, 식이 false이면 값2
- 문자열연결연산자 : +

* 람다식
- 일회용 함수 (화살표 함수)
- 문법 : () ->

* 스트림API
- stream()함수로 스트림 추출
- filter() : 필터링
- map() : 변환
- sorted() : 정렬
- limit() : 개수 제한
- toList() : 리스트로 변환
- toArray() : 배열로 변환
- count() : 개수 확인
- sum() : 합계
- average() : 평균
- min() : 최소
- max() : 최대
- anyMatch() : 어떤 하나가 존재
- allMatch() : 모두 존재
- noneMatch() : 존재하지 않음
 
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%-- 스크립트릿 문법 --%>
<%
	out.print((1+2)+"<br>");
	out.print("Hello<br>");
%>

<%-- EL 문법 --%>
${1+2}<br>
${"Hello"}<br>

<%-- 스크립트릿 문법 --%>
<%
	out.print(request.getParameter("name"));
%>

<%-- EL 문법 --%>
${param.name}<br>

<%-- 스크립트릿 문법 --%>
<%
	request.setAttribute("a", 1);
	out.print(request.getAttribute("a")+"<br>");
%>

<%-- EL 문법 --%>
${requestScope.a}<br>

<%-- JSTL 문법 --%>
<c:set var="a" value="1" scope="request" />
<c:out value="${a}"/><br>

<%
	String str1 = null;
 	String str2 = "";
 	int[] intArr = {};
 	Map<String, Object> map = new HashMap<String, Object>();
 	List<String> list = new ArrayList<String>();
 	pageContext.setAttribute("str1", str1);
 	pageContext.setAttribute("str2", str2);
 	pageContext.setAttribute("intArr", intArr);
 	pageContext.setAttribute("map", map);
 	pageContext.setAttribute("list", list);
%>

${empty str1}<br>
${empty str2}<br>
${empty intArr}<br>
${empty map}<br>
${empty list}<br>

<%
	int i1 = 3;
	int i2 = 5;
	pageContext.setAttribute("i1", i1);
	pageContext.setAttribute("i2", i2);
%>

${i1>i2 ? "i1이 i2보다 큼" : "i1이 i2보다 크지 않음"}<br>

${greater = (i1, i2) -> i1>i2 ? "i1이 i2보다 큼" : "i1이 i2보다 크지 않음"}<br>
${greater(3,5)}<br>
${greater(5,3)}<br>

<%
	int[] intArr2 = {1, 2, 3, 4, 5};
	pageContext.setAttribute("intArr2", intArr2);
%>
<c:set var="nums" value="${intArr2}" />
<%-- 배열에서 스트림 추출 --%>
${nums.stream()}<br>
${nums.stream().filter(x -> x%2==0).toList()}<br>
${nums.stream().filter(x -> x%2==0).toArray()}<br>
${nums.stream().map(x -> x%2==0).toList()}<br>
${nums.stream().sorted((x, y) -> x - y).toList()}<br>
${nums.stream().sorted((x, y) -> y - x).toList()}<br>
${nums.stream().count()}<br>
${nums.stream().sum()}<br>
${nums.stream().average().get()}<br>
${nums.stream().min().get()}<br>
${nums.stream().max().get()}<br>
${nums.stream().limit(3).sum()}<br>
${nums.stream().filter(x -> x%2==1).sum()}<br>
${nums.stream().anyMatch(x -> x < 3).get()}<br>
${nums.stream().allMatch(x -> x < 3).get()}<br>
${nums.stream().noneMatch(x -> x < 3).get()}<br>

