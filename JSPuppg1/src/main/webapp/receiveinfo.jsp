<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv ="Content-Type" content="text/html;charset=UTF-8">
<title>Page to receive information</title>
</head>
<body>

<%@ page import = " java.util.* " %>

<%
String firstname = request.getParameter("fname");
String lastname = request.getParameter("lname");
String age = request.getParameter("age");


out.print("First name: "+ firstname + " Last name: "+ lastname + " Age: " + age);


%>


<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>