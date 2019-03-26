<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List" %>    
<%
	List<Map<String,Object>> accountList = (List<Map<String,Object>>)request.getAttribute("accountList");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	for(Object c:accountList){
		out.print(c);
	}
%>
</body>
</html>