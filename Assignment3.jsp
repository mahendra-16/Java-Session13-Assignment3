<%@page import="java.io.*, java.util.*, java.sql.*, javax.sql.*" %>
<%@page import="javax.servlet.http.*, javax.servlet.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
	Class.forName("com.mysql.jdbc.Driver");
	Connection db = null;
	db = DriverManager.getConnection("jdbc:mysql://localhost:3306/Test", "root", "mahendra@2016");
	
	String query = "select * from Employees";
	Statement mys = db.createStatement();
	ResultSet myss = mys.executeQuery(query);
	

%>


	 <TABLE BORDER="1">
            <TR>
                <TH>id</TH>
                <TH>age</TH>
                <TH>first</TH>
                <TH>last</TH>
            </TR>
            <% while(myss.next()){ %>
            <TR>
                <TD> <%= myss.getString(1) %></td>
                <TD> <%= myss.getString(2) %></TD>
                <TD> <%= myss.getString(3) %></TD>
                <TD> <%= myss.getString(4) %></TD>
            </TR>
            <% } %>
        </TABLE>








</body>
</html>