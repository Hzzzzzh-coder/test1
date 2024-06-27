<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="com.mysql.cj.protocol.Resultset" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2024/5/15
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <h1>这是admin.jsp页面</h1>
    <h2>本页面的功能:管理员的功能--对书籍进行增删查改操作</h2>
    <hr color="red" size="6">
    <table border="2" width="80%" align="center">
        <tr>
            <th>书名</th>
            <th>价格</th>
            <th>作者</th>
            <th>ISBN</th>
        </tr>
     <%
         try{
             Class.forName("com.mysql.jdbc.Driver");
             String url="jdbc:mysql://localhost:3306/database1?useUnicode=true&characterEncoding=utf-8";
             Connection conn= DriverManager.getConnection(url,"root","123456");

             String sql1="select * from book";
             Statement st=conn.createStatement();

             ResultSet rs=st.executeQuery(sql1);

             while (rs.next()) {
                 //out.print(rs.getString("bookname"));
                 //out.print(rs.getInt("bookprice"));
                 %>
                <tr>
                    <td><%=rs.getString("bookname")%></td>
                    <td><%=rs.getInt("bookprice")%></td>
                    <td><%=rs.getString("bookauthor")%></td>
                    <td><%=rs.getString("ISBN")%></td>
                    <td></td>
                </tr>
        <%
             }
         }catch (Exception e){
             System.out.println("failure");
             e.printStackTrace();
         }
     %>
    </table>
</body>
</html>
