<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<h1>hello world</h1>
    	<% 
    		out.println("ip is " + request.getRemoteAddr());
    	%>
    	<!--这是一段注释-->
    	<%-- 该部分注释在网页中不会被显示--%> 
    	<p>
    		今天的日期：<%= (new java.util.Date().toLocaleString()) %>
    	</p>
    	
    	<p>
    		申明变量：
    		<%! int day = 3; %> 
    	</p>
    	<p>
    		if 语句：
    		<% if(day == 1 | day == 7){ %>
    				<p>今天是周末</p>
    		<%	} else { %>
    			<p>今天是工作日</p>
    		<% } %>
    		
    	</p>
    	<p>
    		switch语句：
    		<%
    			switch(day){
    				case 0:
	    				out.println("星期天");
	    				break;
	    			case 1:
	    				out.println("星期一");
	    				break;
	    			default:
	    				out.println("星期六");
	    				break;
    			}
    		%>
    	</p>
    	
    	<div>
    		<%! int fontSize;%>
    		<%for(fontSize = 1; fontSize<=3; fontSize ++){ %>
    			<font color="red" size="<%= fontSize %>">
    				jsp的for循环语句
    			</font> <br>
    		<% } %>
    	</div>
    	
    	<div>
    		<%! int fontSize1;%>
    		<% while (fontSize1 <=3){ %>
    			<font color="red" size="<%= fontSize1 %> ">
    				jsp的while循环
    			</font><br>
    		<%fontSize1++;%>
    		<%}%>
    	</div>
 	</body>
</html>