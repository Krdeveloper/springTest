<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
   <form role="form" method="post">
		<p>
			<label>프로젝트 이름</label><input type="text" name="name">
			<!-- <span class="error">이름 입력하세요.</span> -->
		</p>
		<p>
			<label>프로젝트 내용</label><textarea rows="10" cols="50" name="content"></textarea>
			<!-- <span class="error">내용 입력하세요.</span> -->
		</p>
		<!-- <p>
			<label>시작날짜</label><input type="date" name="beginDate">
			<span class="error">시작날짜 입력하세요.</span>
		</p>
		<p>
			<label>마감날짜</label><input type="date" name="endDate">
			<span class="error">마감날짜 입력하세요.</span>
		</p> -->
		<p>
			<label>상태</label>
			<select name="state">
				<option>준비</option>
				<option>진행중</option>
				<option>종료</option>
				<option>보류</option>
			</select>
			<!-- <span class="error">상태를 선택하세요</span> -->
		</p>
		<p>
			<button type="submit">저장</button>
			<input onclick="history.back()"  type="reset" value="취소"> 
		</p>
	
	</form>
	
	
</body>
</html>