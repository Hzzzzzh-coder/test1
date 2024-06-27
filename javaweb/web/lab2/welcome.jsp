<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2024/5/15
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
    String username = (String) session.getAttribute("username");
    if (username != null) {
%>
<h2>Welcome, <%= username %>!</h2>
<%
    } else {
        response.sendRedirect("login.jsp");
    }
%>
