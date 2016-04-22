<%-- 
    Document   : employeeinfo2
    Created on : 15-Apr-2016, 12:18:23
    Author     : OSUKA VANESSA
--%>
<!--This code is a duplicate of the employee.info jsp page -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <li><a href="#"> News-Board</a> </li>
            <li><a href="employeeinfo2.jsp"> Employee Transfer History</a></li>
            <li><a href="#">Manage Transfer</a></li>
            <li><a href="updateinfo.jsp">Manage Employee Credential</a></li>
            <li><a href="#"> Search Tools</a></li>
            <li><a href="#">Manage Credentials</a></li>
            </ul>
        </nav>
      <!--  <h1>Employee info page</h1> -->
        <sql:setDataSource var ="myDS" driver ="com.mysql.jdbc.Driver" url ="jdbc:mysql://localhost:3306/abc"
                           user = "root" password="" />
        <sql:query dataSource ="${myDS}" var ="employeeinfo" >
            select * from employeeinfo
            
        </sql:query>
       <form action ="updateinfo.jsp" method ="post"> 
              <table border="1" width="100%" id="table_display">
                <caption></caption>
                <tr>
                    <th>Name</th>
                    <th>Location</th>
                     <th>Dept</th>
                      <th>Project</th>
                       
                </tr>
                <c:forEach var="row" items="${employeeinfo.rows}">
                    <tr>
                        
                        <td contenteditable="false"><c:out value= "${row.name}" /></td>
                          <td contenteditable="true"><c:out value= "${row.location}" /></td>
                          <td contenteditable="true"><c:out value= "${row.dept}" /></td>
                          <td contenteditable="true"><c:out value= "${row.project}" /></td>
                          <td> <input type="button" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
        
       
               
       </form>   
          
    </body>
</html>
