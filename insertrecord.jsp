<%-- 
    Document   : insertrecord
    Created on : 21-Apr-2016, 22:39:31
    Author     : OSUKA VANESSA
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <sql:setDataSource var ="myDS" driver ="com.mysql.jdbc.Driver" url ="jdbc:mysql://localhost:3306/abc"
                           user = "root" password=""  />
     <c:choose>
         
         <c:when test="${not empty param.fname && not empty param.lname && not empty param.uname && not empty param.number 
                 && not empty param.location && not empty param.email && not empty param.work &&
                 not empty param.gender && not empty param.pwd}">
     
    
      <sql:update dataSource="${myDS}" var="admininfo" >
          
   INSERT into admininfo VALUES (?,?,?,?,?,?,?,?,?)
                       <sql:param value="${param.fname}"/>
                                <sql:param value="${param.lname}"/>
                                <sql:param value="${param.uname}" />
                                <sql:param value="${param.number}"/>
                                <sql:param value="${param.location}"/>
                                <sql:param value="${param.email}"/>
                                <sql:param value="${param.work}"/>
                                <sql:param value="${param.gender}"/>
                                 <sql:param value="${param.pwd}"/>
                                
      </sql:update>
   
            
    </c:when>
   <c:otherwise>
         <font color="#cc0000">Please Enter Required Information</font> 
   </c:otherwise>
       
    </c:choose>
    </body>
</html>
