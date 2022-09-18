<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:choose>
	<c:when test="${mem.memDistin eq 0}">
	<li><a href="mypage.jsp" class="nav-link text-left">마이페이지</a>
		<ul id="sub-menu">
			<li><a href="mypage.jsp" class="sub-title">정보 수정</a></li>
			<li><a href="mypage_deleteAccount.jsp" class="sub-title">회원
					탈퇴</a></li>
		</ul></li>
	</c:when>
</c:choose>