<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2024/5/8
  Time: 下午5:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        ArrayList books=new ArrayList();
        books.add("三国演义");
        books.add("西游记");
        books.add("水浒传");
    %>
    <a href="cart2_2.jsp">查看购物车</a>
</body>
</html>