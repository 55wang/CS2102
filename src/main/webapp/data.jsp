<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="java.sql.*"%>
<html>
    <body>
        <%
        Connection con;
        Statement sql;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        }
        catch(ClassNotFoundException e){out.println("not found");}
        out.println("mysql的jdbc找到了");
        try{
        con=DriverManager.getConnection("jdbc:mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/Employees","adminTEEydtv","6HSRrUaA3gxr");
        sql=con.createStatement();
        rs=sql.executeQuery("select * from Employees");
        out.println("<hr/>");
      while(rs.next())
      {
       out.println(rs.getString("name"));
      }
      con.close();
        }
        catch(SQLException e1){out.println("SQL异常");}
        %>
    </body>
</html>