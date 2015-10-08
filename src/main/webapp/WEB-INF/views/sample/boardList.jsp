<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>first</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
<h2>비트아카데미 게시판 목록</h2>

<table border="1px" cellspacing="0" cellpadding="5px" style="text-align:center">
	<colgroup>
		<col width="10%" />
		<col width="*" />
		<col width="15%" />
		<col width="20%" />
	</colgroup>
	<thead>
		<tr>
			<th scope="col">글번호</th>
			<th scope="col">제목</th>
			<th scope="col">조회수</th>
			<th scope="col">작성일</th>
		</tr>
	</thead>
	<tbody>
		 <c:choose>
			<c:when test="${fn:length(list) > 0}">
				<c:forEach items="${list}" var="row">
					<tr class="select">
						<td>${row.IDX}</td>
						<td class="title">${row.TITLE}</td>
						<td>${row.HIT_CNT}</td>
						<td>${row.CREA_DTM}</td>
					</tr>
				</c:forEach>	
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="4">조회된 결과가 없습니다.</td>
				</tr>
			</c:otherwise>		
		 </c:choose> 			
	</tbody>	
</table>

<br>

<form id="writeFrom"  action="<c:url value='/sample/openBoardWrite.do'/>" >
	<input id="write" type="button" class="btn" value="글쓰기" />
</form>
<form id="detailForm" method="post" action="<c:url value='/sample/openBoardDetail.do'/>" >
</form>


<script type="text/javascript">
$(document).ready(function(){
	$("#write").click(function(){
		openBoardWrite();
	});
	
	$(".title").click(function(){
		//var idx = ($(this).parent().children().eq(0).html());
		openBoardDetail(($(this).parent().children().eq(0).html()));
	});
	
});

function openBoardWrite(){
	$("#writeFrom").submit();
}

function openBoardDetail(idx){
	//alert(idx);
	//var idx = "idx="+idx;
	//$("#detailForm").append("idx", idx).submit();
	$("#detailForm").append("<input name='idx' type='hidden' value='"+idx+"'/>").submit();
}
</script>

</body>
</html>