<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cookie Page</title>
    </head>
    <body>
    	<form action="cookieResult.jsp" method="GET">
			站点名: <input type="text" name="name">
			<br />
			网址: <input type="text" name="url" />
			<input type="submit" value="提交" />
		</form>
 	</body>
</html>