<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${mem!=null}">
		<li><a class="nav-link text-left" id="memName">👑${mem.memName}님</a></li>
		<li><a href="logout.do" class="nav-link text-left">로그아웃</a></li>
	</c:when>	
	<c:otherwise>
		<li><a class="nav-link text-left" id="popup_open_btn">로그인</a></li>
	</c:otherwise>
</c:choose>
