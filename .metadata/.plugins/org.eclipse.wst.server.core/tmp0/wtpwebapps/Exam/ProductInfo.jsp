<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String p5=request.getParameter("pid");
String pname=request.getParameter("pname");
String pquan=request.getParameter("pquan");
String pdis=request.getParameter("pdis");

%>
<form action="index.jsp"  method="post">
<table border='1'>


<tr>
<td>Enter Unique Id</td>
<td><%=p5 %></td>
</tr>


<tr>
<td>Enter Product Name</td>
<td><%=pname %></td>
</tr>


<tr>
<td>product Quantity</td>
<td><%=pquan %></td>
</tr>

<tr>
<td>product Description</td>
<td><%=pdis %></td>
</tr>

<tr>
<td colspan=2>
<input type="submit" name="back" value="back">
</td>
</table>
</form>


</body>
</html>