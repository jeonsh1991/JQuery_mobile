<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.UserDTO" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%

String id = request.getParameter("uId");
String name = request.getParameter("uName");
String password = request.getParameter("uPassword");
String nick = request.getParameter("uNick");
String address = request.getParameter("uAddress");
String tel = request.getParameter("uTel");
String email = request.getParameter("uEmail");

UserDAO dao = new UserDAO();
UserDTO dto = new UserDTO();

dto.setId(id);
dto.setName(name);
dto.setPassword(password);
dto.setNick(nick);
dto.setAddress(address);
dto.setTel(tel);
dto.setEmail(email);

int result = dao.join(dto);

String msg = "";

if(result == 1) {
	
	msg = "성공";
}
else if(result == 0) {
	msg = "실패";
}

%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=id %>, <%=name %>, <%=password %>, <%=nick %>, <%= address %>
,<%=tel %>, <%=email %>
<br>
<%=msg %>
</body>
</html>