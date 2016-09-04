<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="js/delete.js"></script>
</head>
<body>
<div class="contents">
	<h1> 공지사항 목록 </h1>
	<div id="list-contain" class="ui-widget">
		<table class="list">
			<thead>
			<tr>
				<td class="addbtn" colspan="7" style="text-align:right; border:none;"><a href="pjt.do?cmd=pjt_insert_page"><button id="back">공지사항 등록</button></a></td>
			</tr>
			<tr class="ui-widget-header">
				<th>글 번호</th>
				<th>제 목</th>
				<th>등록일</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			</thead>
			<tbody>
			</tbody>
			<c:forEach var="item" items="${reqNotiList}">
				<tr class="${item.notino}">
					<td>${item.notino}</td>
					<td>
						<a href="noti.do?cmd=admin_noti_detail&no=${item.notino}">${item.tit}</a>
					</td>
					<td>${item.regdt}</td>
					<td>${item.empid}</td>
					<td>${item.rdcnt}</td>
					<td><a href="noti.do?cmd=noti_update_page&notino=${item.notino}">수정</a></td>
					<td><a href="#" onClick="deleteItem('noti','${item.notino}')">삭제</a></td>
				</tr>
			</c:forEach>
		</table>
		<div id="paging" style="text-align:center; font-size:20px; padding:1em">
   		<span>
   			<c:if test="${blockNo > 1}">
   				<span><a href="noti.do?cmd=admin_noti_list&pageNo=${prevPageNo}">&laquo;이전 페이지</a></span>
   			</c:if>
       		<c:choose>
       		<c:when test="${blockNo < totBlock }">
        		<c:forEach var="i" begin="${firstPageNoInBlock}" end="${lastPageNoInBlock}" step="1">
            		<c:choose>
                		<c:when test="${i eq pageNo}"><span>${i}</span></c:when>
                		<c:otherwise><a href="noti.do?cmd=admin_noti_list&pageNo=${i}">${i}</a></c:otherwise>
            		</c:choose>
        		</c:forEach>
        	</c:when>
        	<c:otherwise>
        		<c:forEach var="i" begin="${firstPageNoInBlock}" end="${totPage}" step="1">
            		<c:choose>
                		<c:when test="${i eq pageNo}"><span>${i}</span></c:when>
                		<c:otherwise><a href="noti.do?cmd=admin_noti_list&pageNo=${i}">${i}</a></c:otherwise>
            		</c:choose>
        		</c:forEach>
        	</c:otherwise>
       		</c:choose>
       		<c:if test="${blockNo < totBlock}">
   				<span><a href="noti.do?cmd=admin_noti_list&pageNo=${nextPageNo}">다음 페이지&raquo;</a></span>
   			</c:if>
   		</span>
		</div>
	</div>
	<br/>
</div>
</body>
</html>





























