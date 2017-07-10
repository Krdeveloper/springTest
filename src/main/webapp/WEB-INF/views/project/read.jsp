<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table,td,th{
		border:1px solid black;
		border-collapse: collapse;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<form role="form" method="post">
		<input type="hidden" name="code" value="${projectVO.code }">
	</form>

	<table>
		<tr>
			<th>프로젝트 이름</th>
			<td><input type="text" name="name" value="${projectVO.name }" readonly="readonly"></td>
			
		</tr>
		<tr>
			<th>프로젝트 내용</th>
			<td><textarea name="content" rows="3" readonly="readonly">${projectVO.content}</textarea></td>
			
		</tr>
		<tr>
			<th>시작날짜</th>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${projectVO.beginDate }"/></td>
				
			
		</tr>
		<tr>
			<th>종료날짜</th>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${projectVO.endDate}"/></td>
			
		</tr>
		<tr>
			<th>상태</th>
			<td><input type="text" name="state" value="${projectVO.state }" readonly="readonly"></td>
			
		</tr>
		
		
	</table>
	<p>
	
	
	<button type="submit" class="btn btn-warning">수정</button>
	
	<button type="submit" class="btn btn-danger">삭제</button>
	
	<button type="submit" class="btn btn-primary">돌아가기</button>
	</p>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[role='form']");
			
			console.log(formObj);
			
			$(".btn-warning").on("click", function(){
				formObj.attr("action", "/project/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});
			$(".btn-danger").on("click", function(){
				
				var result=confirm("정말 삭제하시겠습니까?");
				if(result==true){
					formObj.attr("action", "/project/remove");				
					formObj.submit();
				}
				
			});
			$(".btn-primary").on("click", function(){
				self.location = "/project/projectList";
			});
		});
	</script>
</body>
</html>