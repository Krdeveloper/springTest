<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table,td,th{
		border:1px solid black;
		border-collapse: collapse;
	}
</style>
</head>
<body>
	success!!!!!
	<p>
	<a href = "/project/register">새 프로젝트 등록</a>
	</p>
	<table>
		<tr>
			<th>프로젝트 이름</th>
			<th>시작날짜</th>
			<th>종료날짜</th>
			<th>상태</th>
		</tr>
		<c:forEach items="${list }" var="projectVO">
			<tr>
				<td><a href="/project/read?code=${projectVO.code }">${projectVO.name}</a></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${projectVO.beginDate }"/></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${projectVO.endDate}"/></td>
				<td>${projectVO.state}</td>
			</tr>
		</c:forEach>
	</table> 
	
	<script type="text/javascript">
		var result = "${result}"
		
		if(result=="success"){
			alert("등록 성공");
		}
	</script>
</body>
</html>