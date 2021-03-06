<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
    <form id="contentsFrom" method="post" action="<c:url value='/sample/insertBoard.do' />" >
        <table class="board_view">
            <colgroup>
                <col width="15%">
                <col width="*"/>
            </colgroup>
            <caption>게시글 작성</caption>
            <tbody>
                <tr>
                    <th scope="row">제목</th>
                    <td><input type="text" id="title" name="map['TITLE']" class="wdp_90"></input></td>
                </tr>
                <tr>
                    <td colspan="2" class="view_text">
                        <textarea rows="20" cols="100" title="내용" id="contents" name="map['CONTENTS']"></textarea>
                    </td>
                </tr>
            </tbody>
        </table>
	    <input id="write" class="btn" type="submit" value="작성하기" />
    </form>	
       
       	<form id ="listForm" action="<c:url value='/sample/openBoardList.do' />" >
	        <input id="list" class="btn" type="submit" value="목록으로" /> 
	    </form>   
  

<script type="text/javascript">

$(document).ready(function(){

	$("#list").click(function(){
		fn_openBoardList();
	});

	$("#write").on("click", function(){
		fn_insertBoard();
	});

});

function fn_openBoardList(){
	$("#listForm").submit();
}

function fn_insertBoard(){
	$("#contentsFrom").submit();
}
    
</script>

</body>
</html>