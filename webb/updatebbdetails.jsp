<%--
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>


        <% try {

             String s = (String)session.getAttribute("uname");
             String email=request.getParameter("t4");
             String address=request.getParameter("m1");
             String zip=request.getParameter("t5");

             String district=request.getParameter("t8");
             String area=request.getParameter("t9");
             String phno=request.getParameter("t10");
       
           
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bds", "root", "mysql");
            Statement st = conn.createStatement();

            int i=st.executeUpdate("update bloodbankdetails set email='"+email+"',address='"+address+"',zip='"+zip+"',district='"+district+"',area='"+area+"',phno='"+phno+"' where uname='"+s+"'");
            response.sendRedirect("bloodbankhome.jsp");
            %>
 <%

 } catch (SQLException e) {
     e.printStackTrace();
                   %><%

 } catch (Exception e) {
                   %><%= "other error"%><%
            e.printStackTrace();
        }

                   %>



    </body>
</html>
