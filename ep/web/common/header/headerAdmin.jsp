<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="js/header.js"></script>
</head>
<body>
<div class="header">
	<div class="hair">
		<div><a href="stafflogin.do">&nbsp;Mars EP</a></div>
		<div class="util">
			<table>
				<tr>
					<td><a href="stafflogin.do">Home</a></td>
					<td><a href="stafflogout.do">Logout</a></td>
					<td><a href="URL">${loginStaff.empnm}님</a></td>
				</tr>
			</table>
		</div>
	</div>
	<div class="face">
		<div class="logo">
			<a href="stafflogin.do"><img src="../images/logo.png" alt="로고 이미지"></a>
		</div>
		<div id="accordion">
			<div>
				<table>
					<tr>
						<td style="width:200px; line-height:10px">개인 정보</td>
						<td style="width:200px; line-height:10px">공지사항</td>
						<td style="width:200px; line-height:10px">프로젝트</td>
					</tr>
				</table>
			</div>
			<div>
				<table>
					<tr>
						<td style="width:200px; line-height:10px">
							<p><a href="">개인 정보 목록</a></p>
							<p><a href="">개인 정보 삭제</a></p>
						</td>
						<td style="width:200px; line-height:10px">
							<p><a href="">공지사항 목록</a></p>
							<p><a href="">공지사항 관리</a></p>
						</td>
						<td style="width:200px; line-height:10px">
							<p><a href="">프로젝트 목록</a></p>
							<p><a href="">프로젝트 관리</a></p>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="search">
		<form action="URL" method="get" name="frm">
			<table>
				<tr>
					<td>
						<input type="text" name="qry" id="qry" placeholder="이름을 입력하세요" required>
					</td>
					<td>
						<input type="submit" id="btn" value="검색" onclick="return function()">		
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</div>
</body>
</html>














