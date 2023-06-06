<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
<%@ include file="../../common/header.jsp" %>
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script defer src="static/js/pwd-confirm.js"></script>
<title>마이페이지 > 회원정보 > 비밀번호 수정</title>
</head>
<body>
	<%--
		<div id="sidebar">
			<%@ include file="../sidebar.jsp" %>
		</div>
	 --%>
	<main>
		<!-- 메인콘텐츠 시작 -->
		<section class="main_content">
			<form class="pwd_form">
				<input type="hidden" name="ReturnUrl" value="">
				<div class="sub_content">
					<h3 class="title">비밀번호 재입력</h3>
					<h4 class="sub_title">
						본인확인을 위해 <strong>로그인 비밀번호</strong>를 한 번 더 입력해주세요.
					</h4>
					<input type="password" id="inputPwd" name="inputPwd"
						placeholder="비밀번호를 입력해 주세요"> 
					<button class="btn_confirm">확인</button>
					<!--
					<input type="submit"
						class="btn_confirm" value="확인">
						  -->
					<input type="hidden" id="userPwd"
					  value="<c:out value='${userPwd}' />">
					<!-- 배너 영역 -->
					<div>
						<a href="" target="" title="새 창 이동"> <img src="" alt="배너타이틀">
						</a>
					</div>
				</div>
			</form>
		</section>
		<!-- 메인콘텐츠 끝 -->
	</main>
</body>
</html>
<%--
<%@ include file="../../common/footer.jsp" %>
 --%>