<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2024/4/27
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h1>请输入一个500到800之间的整数</h1>
<form action="p1.jsp" method="post">
    <label>输入整数：</label>
    <input type="text" name="number" required>
    <button type="submit">提交</button>
</form>

<%
    String numberStr = request.getParameter("number");
    if (numberStr != null) {
        try {
            int number = Integer.parseInt(numberStr);
            if (number >= 500 && number <= 600) {
                response.sendRedirect("p2.jsp?number=" + number);
            } else if (number > 600 && number <= 800) {
                response.sendRedirect("p3.jsp?number=" + number);
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (NumberFormatException e) {
            response.sendRedirect("error.jsp");
        }
    }
%>
</body>
</html>