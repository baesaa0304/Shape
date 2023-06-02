<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html>
<!-- 지현 qna main(list) page -->
<html>
<head>
<meta charset="UTF-8">
<title>Shape</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', () => {
    const modifyForm = document.querySelector('#modifyForm');
    
    const btnDelete = document.querySelector('#btnDelete');
    btnDelete.addEventListener('click', () => {
        const check = confirm('정말 삭제할까요?');
        if(check){
            modifyForm.action = './delete'; //'delete' //폼 요청 주소
            modifyForm.method = 'post'; //폼 요청 방식
            modifyForm.submit(); // 폼 제출 -> 요청을 서버로 보냄.
        }
    })
});
</script>
</head>
<body>
	<div class="container-fluid">
		<header class="my-2 p-5 text-center">
			<h1>Q&amp;A</h1>
			<p>문의를 남겨주시면 영업시간(09:30 ~ 17:30)내에 답변드리겠습니다.</p>
		</header>

		<main class="my-2">
			<section class="card">
				<form class="card-body" id="modifyForm">
					<!-- 사용자 문의 출력 -->
					<div class="my-2">
						<label class="form-label" for="qid">번호</label> <input
							class="form-control" id="qid" value="${ infoQnA.qid }" readonly />
					</div>
					<div class="my-2">
						<label class="form-label" for="title">제목</label> <input
							class="form-control" id="title" value="${ infoQnA.title }"
							readonly />
					</div>
					<div class="my-2">
						<label class="form-label" for="content">내용</label>
						<textarea class="form-control" id="content" readonly>${ infoQnA.content }</textarea>
					</div>
					<div class="my-2">
						<label class="form-label" for="author">작성자 아이디</label> <input
							class="form-control" id="author" value="${ infoQnA.writer }"
							readonly />
					</div>
					<div class="my-2">
						<label class="form-label" for="createdTime">작성 날짜</label>
						<fmt:formatDate value="${ infoQnA.created_date }"
							pattern="yyyy-MM-dd" var="created" />
						<input class="form-control" id="createdTime" value="${ created }"
							readonly />
					</div>
					<!-- 관리자 답변출력 -->
					<!-- an_title이 확인중이 아닐때만 출력 -->
					<c:if test="${infoQnA != null}">
						<c:choose>
							<c:when test="${infoQnA.an_title!='확인중'}">
								<div class="my-2">
									<label class="form-label" for="an_title">제목</label> <input
										class="form-control" id="an_title"
										value="${ infoQnA.an_title }" readonly />
								</div>
								<div class="my-2">
									<label class="form-label" for="an_comment">답변</label>
									<textarea class="form-control" id="an_comment" readonly>${ infoQnA.an_comment }</textarea>
								</div>
								<div class="my-2">
									<label class="form-label" for="answer_date">답변 날짜</label>
									<fmt:formatDate value="${ infoQnA.answer_date }"
										pattern="yyyy-MM-dd" var="answered" />
									<input class="form-control" id="answer_date"
										value="${ answered }" readonly />
								</div>
							</c:when>
						</c:choose>
					</c:if>

					<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<c:url var="qnaDelete" value="/info/qna/delete" />
						<button onclick="location.href='${ qnaDelete }'"
							class="btn btn-primary me-md-2" id="btnDelete" type="button">삭제하기</button>
						<c:url var="qna" value="/info/qna" />
						<button onclick="location.href='${ qna }'" class="btn btn-primary"
							type="button">목록</button>
					</div>
				</form>
			</section>
		</main>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
			crossorigin="anonymous"></script>
	</div>
</body>
</html>
<%@ include file="/WEB-INF/views/common/header.jsp"%>