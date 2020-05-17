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
    	<h1>使用 POST 方法提交checkBox数据</h1>
		<form action="checkBoxResult.jsp" method="post" target="_blank">
			<input type="checkbox" name="google" checked="checked" /> Google
			<input type="checkbox" name="runoob" /> 菜鸟教程
			<input type="checkbox" name="taobao" checked="checked" /> 淘宝
			<input type="submit" value="选择网站" />
		</form>
 	</body>
</html>