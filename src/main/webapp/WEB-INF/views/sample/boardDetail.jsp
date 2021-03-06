<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<title>Insert title here</title>
</head>
<body>
<h2>비트아카데미 게시판 상세페이지</h2>

<table width="700px" border="1px" cellspacing="0" cellpadding="5px" style="text-align:center">
	<colgroup>
    	<col width="15%"/>
        <col width="35%"/>
        <col width="15%"/>
        <col width="35%"/>
    </colgroup>
        <caption></caption>
        <tbody>
            <tr>
                <th>글 번호</th>
                <td>${vo.idx }</td>
                <th >조회수</th>
                <td>${vo.hitCnt }</td>
            </tr>
            <tr>
                <th scope="row">작성자</th>
                <td>${vo.creaId }</td>
                <th scope="row">작성시간</th>
                <td>${vo.creaDtm }</td>
            </tr>
            <tr>
                <th scope="row">제목</th>
                <td colspan="3">${vo.title}</td>
            </tr>
            <tr>
                <td colspan="4">${vo.contents }</td>
            </tr>
        </tbody>
    </table>
    <form id="listForm" action="<c:url value='/sample/openBoardList.do' />"> 
    <input id="list" type="button" class="btn" value="목록으로"/>
    </form>
    <a href="#this" class="btn" id="update">수정하기</a>
     
    <%@ include file="/WEB-INF/include/include-body.jspf" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").click( function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openBoardUpdate();
            });
        });
         
        function fn_openBoardList(){
            $("#listForm").submit();
        }
         
        function fn_openBoardUpdate(){
            var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardUpdate.do' />");
            comSubmit.addParam("IDX", idx);
            comSubmit.submit();
        }
    </script>
</body>
</html>