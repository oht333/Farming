<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frmWrite" method="post" 
	action="<c:url value='/admin/cateUpdate'/>" >
 <fieldset>
	<legend>수정</legend>
		<div>
            <label for="main">대분류</label>
            <input type="text" id="main" name="main" value="${vo.main }"/>
        </div>
        <div>
            <label for="detail">분야</label>
            <input type="text" id="detail" name="detail" value="${vo.detail }"/>
        </div>
        <div class="center">
            <input type = "submit" value="등록"/>
            <input type = "Button" id="btList" value="글목록" />         
        </div>
    </fieldset>
</form>
</body>
</html>