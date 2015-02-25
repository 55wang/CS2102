
<%@ page contentType="text/html; charset=GBK" %>
<html>
<head>
<title>get method</title>
</head>
<body>
<%
String username = request.getParameter("username");
String age      = request.getParameter("age");
out.println("<h3> hello," + username +
        ". you are " + age + "</h3>");
%>
</body>
</html>
