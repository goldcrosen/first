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
<h2>��Ʈ��ī���� �Խ��� ��������</h2>

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
                <th>�� ��ȣ</th>
                <td>${vo.idx }</td>
                <th >��ȸ��</th>
                <td>${vo.hitCnt }</td>
            </tr>
            <tr>
                <th scope="row">�ۼ���</th>
                <td>${vo.creaId }</td>
                <th scope="row">�ۼ��ð�</th>
                <td>${vo.creaDtm }</td>
            </tr>
            <tr>
                <th scope="row">����</th>
                <td colspan="3">${vo.title}</td>
            </tr>
            <tr>
                <td colspan="4">${vo.contents }</td>
            </tr>
        </tbody>
    </table>
     
    <a href="#this" class="btn" id="list">�������</a>
    <a href="#this" class="btn" id="update">�����ϱ�</a>
     
    <%@ include file="/WEB-INF/include/include-body.jspf" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //������� ��ư
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openBoardUpdate();
            });
        });
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
            comSubmit.submit();
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