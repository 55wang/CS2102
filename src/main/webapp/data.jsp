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
        
        try{
        con=DriverManager.getConnection("jdbc:mysql://127.5.234.2
        :3306/Employees","adminTEEydtv","6HSRrUaA3gxr");
        sql=con.createStatement();
        rs=sql.executeQuery("select * from Employees");
        System.out.println("<hr/>");
      while(rs.next())
      {
       out.println(rs.getString("age"));
      }
      con.close();
        }
        catch(SQLException e1){out.println("SQL expception");}
        %>
    </body>
</html>