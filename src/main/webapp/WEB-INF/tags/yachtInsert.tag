<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${mem.memDistin eq 1}">
		<li><a href="insertYacht.jsp" class="nav-link text-left">요트등록</a></li>
	</c:when>
</c:choose>