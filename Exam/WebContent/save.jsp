<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.app.*" %>

<jsp:useBean id="p" class="com.app.Product"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>
<%

String p5=request.getParameter("pid");

String pname=request.getParameter("pname");
String pquan=request.getParameter("pquan");
String pdis=request.getParameter("pdis");

int p4=Integer.parseInt(pquan);
int p6=Integer.parseInt(p5);


p.setId(p6);
p.setProductName(pname);
p.setProductD(pdis);
p.setProductQuantity(p4);


int i=ProductDao.save(p);
out.print(i);
if(i>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
	rd.forward(request, response);
	
}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("ProductInfo.jsp");
	rd.forward(request, response);
	
}

%>

</body>
</html>