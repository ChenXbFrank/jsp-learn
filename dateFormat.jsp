<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Date Page</title>
    </head>
    <body>
    	<%
		   Date dNow = new Date( );
		   SimpleDateFormat ft = 
		   new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
		   out.print( "<h2 align=\"center\">" + ft.format(dNow) + "</h2>");
		%>
 	</body>
</html>