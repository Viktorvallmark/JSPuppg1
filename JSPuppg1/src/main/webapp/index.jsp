<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv ="Content-Type" content="text/html;charset=UTF-8">
<title>Okay</title>
</head>
<body>

<form action="receiveinfo.jsp">
First name: <input type="text" name="fname">
Last name: <input type="text" name="lname">
Age: <input type="text" name="age">
<input type="submit" name="Submit">
<input type = "reset" name="Reset">
</form>
<br>


<form>
	<label for="Homepage">Test redirect ---></label>
	<select name = "Homepage">
	
			<option value = "Choose page" disabled = "" >Choose page:</option>
			<option value = "second_page.jsp" selected ="">Second page</option>
			<option value = "third_page.jsp">Third page</option>
			<option value = "fourth_page.jsp">Fourth page</option>
	
	</select>

<input type="submit" value="Submit">
<input type="reset" value = "Reset">


</form>

<%
String pagenumber = request.getParameter("Homepage") == null ? "startingPage" : request.getParameter("Homepage");

switch (pagenumber) {

case "second_page.jsp": response.sendRedirect(pagenumber);
	break;
case "third_page.jsp": response.sendRedirect(pagenumber);
	break;
case "fourth_page.jsp": response.sendRedirect(pagenumber);
	break;
default: break;

}
%>

<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>

</html>