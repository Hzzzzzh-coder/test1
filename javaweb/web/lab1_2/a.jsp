<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2024/4/27
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    // 从请求中获取参数
    String numberStr = request.getParameter("number");
    int number = 0;

    try {
        number = Integer.parseInt(numberStr);
    } catch(NumberFormatException e) {
        // 如果转换失败，跳转到error.jsp
        response.sendRedirect("error.jsp");
        return; // 结束当前页面的执行
    }

    if(number >= 500 && number <= 600) {
        // 如果在500-600之间，跳转到p2.jsp
        response.sendRedirect("p2.jsp?number=" + number);
        return; // 结束当前页面的执行
    } else if(number >= 600 && number <= 800) {
        // 如果在600-800之间，跳转到p3.jsp
        response.sendRedirect("p3.jsp?number=" + number);
        return; // 结束当前页面的执行
    } else {
        // 如果不在指定范围内，跳转到error.jsp
        response.sendRedirect("error.jsp");
        return; // 结束当前页面的执行
    }
%>
</body>
</html>
