<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2024/4/24
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String str=request.getParameter("number");
    int number=Integer.parseInt(str);
%>
该数字的立方为:<%=number*number*number%><hr>