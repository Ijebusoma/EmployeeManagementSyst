<%-- 
    Document   : adminpage
    Created on : 08-Apr-2016, 11:20:40
    Author     : OSUKA VANESSA
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" type="text/css" href="styling.css" />
    </head>
    <body>
        <nav class="nav_bar">
            <ul class="options">
                <li> <a href="employeeinfo.jsp">Manage Company Data</a></li>
                <!--<li><a href="#">Location</a></li>
                <li><a href="#">Department</a></li>
                <li><a href="#">Project</a></li>
                <li><a href="#">Allowances</a></li>
            -->
            <li><a href="#"> NewsBoard</a> </li>
            <li><a href="#"> Employee Transfer History</a></li>
            <li><a href="#">Manage Transfer</a></li>
            <li><a href="employeeinfo.jsp">Manage Employee Credential</a></li>
            <li><a href="#"> Search Tools</a></li>
            <li><a href="#">Manage Credentials</a></li>
            <li>
                <%
            Cookie cookie = null;
           Cookie[] cookies = null;
           // Get an array of Cookies associated with this domain
           cookies = request.getCookies(); 
           String cookieName = "uname"; 
           String cookieValue = ""; 
           for (int i=0; i<cookies.length; i++) 
            {
                cookie = cookies[i]; 
                if(cookieName.equals(cookie.getName())) 
                    {
                        cookieValue = cookie.getValue();
                        out.print("Name: " + cookie.getName( ) + ", ");
                        out.print("Value: " + cookie.getValue( ) + "<br/>");
                    }
            }
    %>
            </li>
            </ul>
        </nav>
        <h1></h1>
    </body>
</html>
