<%-- 
    Document   : updateinfo
    Created on : 08-Apr-2016, 21:06:40
    Author     : OSUKA VANESSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <!-- This page gathers info from the employeeinfo.jsp page and actually saves into the DB-->
           <link rel="stylesheet" type="text/css" href="styling.css" /> 
    </head>
    <body>
         <form name="updateemployeeform"
        action=""
        method="POST">
          
        <table border="0" id ="table_form">
            <caption><h4> Employee Update Form</h4> </caption>>
            <tr>
                <td>* Enter employee First name</td>
                <td><input type="text" name="fname" />
            </tr>           
            <tr>
                <td>* Enter New location:</td>
                <td><textarea rows="10" cols="20" name="location"></textarea>
            </tr>
            <tr>
                <td>* Enter New dept:</td>
                <td><input type="text" name="dept" />
            </tr>
            <tr>
                <td>* Enter New project:</td>
                <td><input type="text" name="project" />
            </tr>
            <tr>
                <td><input type="submit" value="Update"/></td>
            </tr>
        </table>
         
    </form>
          <sql:setDataSource var ="myDS" driver ="com.mysql.jdbc.Driver" url ="jdbc:mysql://localhost:3306/abc"
                           user = "root" password="" />
           <sql:transaction dataSource ="${myDS}" >
           <c:choose>
              
            <c:when test="${ not empty param.fname &&
                            not empty param.location && 
                            not empty param.dept && 
                           
                            not empty param.project}">
                           
                    <sql:update  var = "employeeinfo" >
                     
    UPDATE employeeinfo SET location=?, dept =?, project=? 
    WHERE fname = '${param.fname}' 
                        
                         <sql:param value ="${param.location}" />
                        <sql:param value ="${param.dept}" />
                        <sql:param value ="${param.project}" />
                        
                    </sql:update>
                        
            </c:when>
        
                  
        </c:choose>
           </sql:transaction>
        
        
        <br><br>
       
                        
     
       
      
    </body>
</html>
