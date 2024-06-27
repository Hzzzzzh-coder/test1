<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2024/4/27
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 从请求中获取参数
    String numberStr = request.getParameter("number");
    int number = 0;
    number = Integer.parseInt(numberStr);
%>

<html>
<head>
    <title>p2.jsp</title>
</head>
<body>
<h1>您输入的数字是：<%= number %></h1>
<img src="C:\\Users\\86175\\IdeaProjects\\javaweb\\web\\lab1_2\\A.jpg" width="<%= number %>" height="<%= number %>" alt="图像" />
</body>
</html>
