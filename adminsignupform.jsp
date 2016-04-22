<%-- 
    Document   : signup
    Created on : 06-Apr-2016, 11:49:06
    Author     : OSUKA VANESSA
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Signup Page</title>
          <link rel="stylesheet" type="text/css" href="styling.css">
    </head>
    <body>
        <%--
         <c:set var = "fname" value ="${param.fname}" />
    <c:set var = "lname" value ="${param.lname}" />
    <c:set var = "number" value ="${param.number}" />
    <c:set var = "location" value ="${param.location}" />
    <c:set var = "email" value ="${param.email}" />
    <c:set var = "work" value ="${param.work}" />
     <c:set var = "pwd" value ="${param.pwd}" />
    <c:set var = "state" value ="${param.state}" />
     --%>
   
    
     <div class="login">
  <div class="login-triangle"></div>
  
  <h2 class="login-header">ADMIN SIGNUP</h2>

  <form  action="mainoriginal.jsp" class="login-container" method="get" >
    <p><input type="text" placeholder="Firstname" name="fname"></p>
    <p><input type="text" placeholder="Lastname" name="lname"></p>
     <p><input type="text" placeholder="username" name="uname"></p>
    <p><input type="number" placeholder="Contact Number" name="number"></p>
    <p><input type="address" placeholder="Location(Country)" name="location"></p>
    <p><input type="email" placeholder="Enter a valid email" name="email"></p>
    <p><input type="number" placeholder="Years of experience" name="work"></p>
    <p <input type="text" placeholder="Gender" name="gender"/></p>
    <p><input type="password" placeholder="Select a Password" name="pwd"></p>
   <!-- <p><input type="text" placeholder="State" name="state"></p> -->
    <p><input type="submit" value="Sign Up"></p>
  </form>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    


        <div></div>
        
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
                                <c:choose>
                                    <c:when test="${admininfo > 1}" >
                                        Record inserted successfully
                                    </c:when>
                                    <c:otherwise>
                                        Record not inserted
                                    </c:otherwise>
                                </c:choose>
   
      </sql:update>
   
            
    </c:when>
   <c:otherwise>
         <font color="#cc0000">Please Enter Required Information</font> 
   </c:otherwise>
       
    </c:choose> 
      
    </body>
</html>
