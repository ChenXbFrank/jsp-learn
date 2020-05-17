<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POST Page</title>
    </head>
    <body>
    	<h1>使用 POST 方法读取数据</h1>
		<ul>
			<li>
				<p><b>站点名:</b>
					<%
					// 解决中文乱码的问题
					String name = new String((request.getParameter("name")).getBytes("ISO-8859-1"),"UTF-8");
					%>
					<%=name%>
				</p>
			</li>
			<li>
				<p><b>网址:</b>
			   		<%= request.getParameter("url")%>
				</p>
			</li>
		</ul>
 	</body>
</html>