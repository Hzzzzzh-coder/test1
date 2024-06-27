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
    <title>error.jsp</title>
</head>
<body>
<h1>输入错误！</h1>
<p>您输入的数字无效。</p>
<img src="C:\Users\86175\IdeaProjects\javaweb\web\lab1_2\error.jpg" alt="错误图像" />
</body>
</html>

