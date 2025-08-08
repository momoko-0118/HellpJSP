<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page errorPage="total-error.jsp" %>
	<%--Integer.parseInt:Stringをintに変換する。
	getParameterがStringだから 
	getParameterで入力フォームの指定のデータを持ってくる--%>
	<%
	request.setCharacterEncoding("UTF-8");
	int price=Integer.parseInt(request.getParameter("price"));
	int count=Integer.parseInt(request.getParameter("count"));
	int delivery=Integer.parseInt(request.getParameter("delivery"));
	%>
	<%=price %>円<%=count %>個＋送料<%=delivery %>円＝
	<%=price*count+delivery %>円

</body>
</html>