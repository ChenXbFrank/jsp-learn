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
    	<h1>从复选框中读取数据</h1>
		<ul>
			<li><p><b>Google 是否选中:</b>
			   <%= request.getParameter("google")%>
			</p></li>
			<li><p><b>菜鸟教程是否选中:</b>
			   <%= request.getParameter("runoob")%>
			</p></li>
			<li><p><b>淘宝是否选中:</b>
			   <%= request.getParameter("taobao")%>
			</p></li>
		</ul>
		<h1>读取所有表单参数</h1>
		<table width="100%" border="1" align="center">
			<tr bgcolor="#949494">
				<th>参数名</th>
				<th>参数值</th>
			</tr>
			<%
			   Enumeration paramNames = request.getParameterNames();
			
			   while(paramNames.hasMoreElements()) {
			      String paramName = (String)paramNames.nextElement();
			      out.print("<tr><td>" + paramName + "</td>\n");
			      String paramValue = request.getParameter(paramName);
			      out.println("<td> " + paramValue + "</td></tr>\n");
			   }
			%>
		</table>
 	</body>
</html>