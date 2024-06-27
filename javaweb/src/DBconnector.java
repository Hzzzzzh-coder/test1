import com.mysql.cj.protocol.Resultset;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.ResultSet;
import java.util.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBconnector extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws SecurityException, IOException{
        request.setCharacterEncoding("utf-8");
        String str1=request.getParameter("username");
        String str2=request.getParameter("password");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/database?useUnicode=true&characterEncoding=utf-8";
            Connection conn= DriverManager.getConnection(url,"root","123456");
            String sql1="select * from user where username='admin' and password='123456'";
            Statement st=conn.createStatement();

            ResultSet rs= st.executeQuery(sql1);

            if(rs.next()){
                int juese=rs.getInt("authority");
                if(juese==1){
                    response.sendRedirect("admin.jsp");
                }else{
                    request.getRequestDispatcher("book.jsp").forward(request,response);
                }
            }else{
                response.sendRedirect("login.jsp");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
