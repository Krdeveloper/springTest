<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form role="form" method="post">
	
		<p>
			<label>프로젝트 이름</label>
			<input type="text" name="name" value="${projectVO.name}">
			<!-- <span class="error">이름 입력하세요.</span> -->
		</p>
		<p>
			<label>프로젝트 내용</label>
			<textarea rows="10" cols="50" name="content" >${projectVO.content}</textarea>
			<!-- <span class="error">내용 입력하세요.</span> -->
		</p>
		<%-- <p>
			<label>시작날짜</label>			  
			<input type="date" name="bDate" value="${jspProject.bStringDate}">
			<!-- <span class="error">시작날짜 입력하세요.</span> -->
		</p>
		<p>
			<label>마감날짜</label>
			<input type="date" name="eDate" value="${jspProject.eStringDate}">
			<!-- <span class="error">마감날짜 입력하세요.</span> -->
		</p> --%>
		<p>
		
			<label>상태</label>
			<select name="state">
				<c:if test="${projectVO.state == '준비'}">
					<option selected="selected">준비</option>
					<option>진행중</option>
					<option>종료</option>
					<option>보류</option>
				</c:if>
				<c:if test="${projectVO.state == '진행중'}">
					<option>준비</option>
					<option selected="selected">진행중</option>
					<option>종료</option>
					<option>보류</option>
				</c:if>
				<c:if test="${projectVO.state == '종료'}">
					<option>준비</option>
					<option>진행중</option>
					<option selected="selected">종료</option>
					<option>보류</option>
				</c:if>
				<c:if test="${projectVO.state == '보류'}">
					<option>준비</option>
					<option>진행중</option>
					<option>종료</option>
					<option selected="selected">보류</option>
				</c:if>
				

			</select>
			<!-- <span class="error">상태를 선택하세요</span> -->
		</p>
		<p>
			<button type="submit" class="btn btn-primary">수정</button>
			<button type="submit" class="btn btn-warning">취소</button>
		</p>
	
	</form>
	
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[role='form']");
			console.log(formObj);
			
			$(".btn-warning").on("click",function(){
				self.location = "/project/projectList";
			})
			$(".btn-primary").on("click",function(){
				formObj.submit();
			})
			
		});
	</script>
</body>
</html>