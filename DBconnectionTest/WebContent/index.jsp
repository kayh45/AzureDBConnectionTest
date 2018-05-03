<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"  %>
<%@ page import = "com.microsoft.sqlserver.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test</title>
</head>
<body>
<form method = "post" action = "insert.jsp">
<p>test_no(int타입)</p>
<input type = "text" name = "no"><br>
<p>test_name(varchar타입)</p>
<input type = "text" name = "name"><br>
<button type = "submit" action = "">확인</button>
</form>
</body>
</html>
