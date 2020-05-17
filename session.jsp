<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%
	// 获取session创建时间
   Date createTime = new Date(session.getCreationTime());
   // 获取最后访问页面的时间
   Date lastAccessTime = new Date(session.getLastAccessedTime());
%>
<html>
  <head></head>
  <body>
  	<%String s = session.getId(); //获取session ID号  %>
    <p>你的session对象ID是：</p>
	<%=s %>  
	<%!
	    int Num = 1; //定义前面要加!号
	    synchronized void countPeople() { //同步方法
	      Num++;
	    }
  	%>
  	<%
	    if (session.isNew()) { //判断是否为新用户
	      countPeople();
	      String str = String.valueOf(Num);
	      session.setAttribute("count", str); //将str 添加到session对象中
	    }else{
	    	session.setAttribute("count", String.valueOf(Num));
	    }
  	%>
  	<p>
	   	创建时间
	   	<% out.print(createTime); %>
    </p>
    <p>
	   	最后访问时间
		<% out.print(lastAccessTime); %>
    </p>
    <p>
	   	你是第
	   		<%=(String)session.getAttribute("count")%>
	   	个访问本站的人
    </p>
    <!--将session对象的count值取出-->
  </body>
</html>