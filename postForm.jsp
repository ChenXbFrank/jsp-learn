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
    	<h1>使用 POST 方法提交数据</h1>
		<form action="post.jsp" method="post">
			站点名: <input type="text" name="name">
			<br />
			网址: <input type="text" name="url" />
			<input type="submit" value="提交" />
		</form>
 	</body>
</html>