<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<div data-role="page" id="page1">
	<div data-role="header">
    	<h1>header space</h1>
    </div>
     <div data-role="content">
     	<form action="joinAction.jsp" method="post">
        	ID<br>
            <input type="text" id="uId" name="uId"><br>
            NAME<br>
            <input type="text" id="uName" name="uName"><br>
            PASSWORD<br>
            <input type="password" id="uPassword" name="uPassword"><br>
            NICKNAME<br>
            <input type="text" id="uNick" name="uNick"><br>
            ADDRESS<br>
            <input type="text" id="uAddress" name="uAddress"><br>
            TEL <br>
            <input type="text" id="uTel" name="uTel" placeholder="999-999-9999"><br>
            EMAIL<br>
            <input type="text" id="uEmail" name="uEmail" placeholder="ooo@ooo.oo.oo"><br>
            <input type="submit" value="submit">
            <input type="reset" value="cancel">
        </form>
        
     </div>
     <div data-role="footer">
     <h4>footer</h4>
     </div>
     </div>
</body>
</html>