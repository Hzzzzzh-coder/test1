<%--
  Created by IntelliJ IDEA.
  User: 86175
  Date: 2024/5/15
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <h1>添加新的书籍信息</h1>
    <form action="admin.jsp" >
        书名:<input name="bookname" type="text"><br>
        价格:<input name="bookprice" type="number"><br>
        作者:<input name="bookauthor" type="text"><br>
        ISBN:<input name="ISBN" TYPE="text"><br>
        <input type="submit" value="添加">
        <input type="reset" value="重置">
    </form>

</body>
</html>
