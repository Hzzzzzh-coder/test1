<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2024/4/24
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <%
         for(int i=1;i<=12;i++){
    %>

           <a href="p2.jsp?number=<%=i%>"><%=i%></a><br>
    <%
        }
    %>

</body>
</html>
