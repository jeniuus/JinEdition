<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="mailSending.do" class="row">

		<input type="hidden" name="to" value="soo980201@naver.com"> 
		
		<label for="input-1">이름:</label>
		<input type="text" name="name" value="${mem.memName}" class="form-control" id="input-1"> 
		
		<label for="input-2">인원수:</label> 
		<input type="text" name="peopleNum" class="form-control" id="input-2">

		<label for="input-3">인수일:</label>
		<input type="text" name="startDate" class="form-control datepicker" id="input-3"> 
		
		<label for="input-4">반납일:</label> 
		<input type="text" name="endDate" class="form-control datepicker" id="input-4"> 
		
		<label for="input-6">회원님 이메일 주소:</label>
		<input type="text" name="from" value="${mem.memEmail}" class="form-control" id="input-6">
		 
		<label for="input-7">회원님 연락처:</label> 					
		<input type="text" name="phoneNum"id="input-7"> 
		
		<label for="input-5">제목:</label>
		<input type="text" name="title" id="input-7">

		<label for="input-8">내용:</label>
		<textarea name="content" id="input-8" cols="30" rows="5"></textarea>

		<input type="submit" value="제출">

	</form>
	
</body>
</html>