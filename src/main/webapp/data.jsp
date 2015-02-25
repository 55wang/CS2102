<%@ page contentType="text/html;charset=GB2312"%>
<%@ page import="java.sql.*"%>
<html>
    <body>
        <%
String MYSQL_USERNAME = System.getenv("OPENSHIFT_MYSQL_DB_USERNAME");
String MYSQL_PASSWORD = System.getenv("OPENSHIFT_MYSQL_DB_PASSWORD");
String MYSQL_DATABASE_HOST = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
String MYSQL_DATABASE_PORT = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
String MYSQL_DATABASE_NAME = "Employees";
        Connection con;
        Statement sql;
        ResultSet rs;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        }
        catch(ClassNotFoundException e){out.println("not found");}
        out.println("test");
        try{
        String url = "jdbc:mysql://" + MYSQL_DATABASE_HOST + ":" + MYSQL_DATABASE_PORT + "/" + MYSQL_DATABASE_NAME;
        con=DriverManager.getConnection(url, MYSQL_USERNAME, MYSQL_PASSWORD);
        out.println(url);
        out.println(MYSQL_USERNAME+" "+MYSQL_PASSWORD);
        sql=con.createStatement();
        rs=sql.executeQuery("select * from Employees");
        out.println("<hr/>");
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