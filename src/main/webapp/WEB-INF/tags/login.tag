<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${mem!=null}">
		<li><a class="nav-link text-left" id="memName">๐${mem.memName}๋</a></li>
		<li><a href="logout.do" class="nav-link text-left">๋ก๊ทธ์์</a></li>
	</c:when>	
	<c:otherwise>
		<li><a class="nav-link text-left" id="popup_open_btn">๋ก๊ทธ์ธ</a></li>
	</c:otherwise>
</c:choose>
