<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="js/pldtl.js"></script>
</head>
<body>
<div class="contents">
	<div id="pl-info" title="Project Leader">
		<h2>PL 정보</h2>
		<div class="contain" class="ui-widget">
		<table id="plSchRs" class="ui-widget ui-widget-content">
			<thead>
				<tr class="ui-widget-header">
					<th>이 름</th>
					<th>부 서</th>
					<th>직 급</th>
					<th>연락처</th>
					<th>이메일</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		</div>
	</div>
	<h1> 프로젝트 목록 </h1>
	<div id="list_contain" class="ui-widget">
		<table class="list">
			<thead>
			<tr class="ui-widget-header">
				<th>번호</th>
				<th>프로젝트명</th>
				<th>PL</th>
				<!-- <th>시작일</th> -->
				<th>등록일</th>
				<th>종료일</th>
				<th>멤버수</th>
			</tr>
			</thead>
			<tbody>
			</tbody>
			<c:forEach var="item" items="${reqPjtList}">
				<tr>
					<td class="tit">${item.pjtno}</td>
					<td class="tit">
						<a href="pjt.do?cmd=staff_pjt_detail_page&pjtno=${item.pjtno}">${item.pjtnm}</a>
					</td>
					<td class="tit">
					 	<a href="#" class="plnm">${item.plnm}</a>
						<input type="hidden" class="plno" value="${item.plno}">
					</td>
					<%-- <td class="tit"><c:out value="${fn:substring(item.startdt,0,10)}"/></td> --%>
					<td class="tit"><c:out value="${fn:substring(item.regdt,0,10)}"/></td>
					<td class="tit"><c:out value="${fn:substring(item.enddt,0,10)}"/></td>
					<td class="tit">${item.memcnt}명</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br/>
</div>
</body>
</html>





















