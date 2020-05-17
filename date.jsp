<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Date Page</title>
    </head>
    <body>
    	<p>
    		今天的日期：<%= (new java.util.Date()).toLocaleString()%>
    	</p>
 	</body>
</html>