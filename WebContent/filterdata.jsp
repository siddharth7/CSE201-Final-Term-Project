<%@page import="java.util.ArrayList"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.util.ArrayList" %>

<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>current orders</title>
</head>
<body>
<%
		if(session.getAttribute("adminActive")==null){
			request.getRequestDispatcher("admin").forward(request,response);
		}
	%>
<h1> welcome user</h1>
<%!
public void printorders(javax.servlet.jsp.JspWriter myOut)
{
 	try{
 			
		   	myOut.println("</h1>hello user, welcome<h1>");
		}
	catch(Exception e)
	{
		
	}
}
%>
<%
	HttpSession s = request.getSession();
	printorders(out);
%>
<form action="logout" method="get">
	<button type="submit">LogOut</button>
</form>
</body>
</html>