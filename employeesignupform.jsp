<%-- 
    Document   : EmployeeForm
    Created on : 06-Apr-2016, 12:14:26
    Author     : clarkson
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Cookie cookie = null;
   Cookie[] cookies = null;
   // Get an array of Cookies associated with this domain
   cookies = request.getCookies(); 
   String cookieName = "uname"; 
   String cookieValue = "pwd"; 
   for (int i=0; i<cookies.length; i++) 
    {
        cookie = cookies[i]; 
        if(cookieName.equals(cookie.getName())) 
            {
                cookieValue = cookie.getValue();
            }
    }
   
   if( cookies != null ){
      out.println("<h2> Found Cookies Name and Value</h2>");
      for (int i = 0; i < cookies.length; i++){
         cookie = cookies[i];
         out.print("Name : " + cookie.getName( ) + ",  ");
         out.print("Value: " + cookie.getValue( )+" <br/>");
      }
  }else{
      out.println("<h2>No cookies founds</h2>");
  }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet"  type="text/css" href="styling.css"/>
        <title>Employee SignUp Page</title>
    </head>
    <body>
    
        <div class="login">
           <div class="login-triangle"></div>
           <h2 class="login-header">LOGIN</h2>
           <form action="" class="login-container" method="post">
          
                        <p><input type="text" placeholder="First Name" name="fname"/></p>
                        <p><input type="text" placeholder="Last Name" name="lname"/></p>
                         <p><input type="text" placeholder="username" name="uname"></p>
                        <p><input type="password" placeholder="Password" name="pwd"/></p>
                        <p><input type="text" placeholder="Project" name="project"/></p>
                        <p><input type="text" placeholder="Department" name="dept"/></p>
                        <p><input type="text" placeholder="Work Experience" name="work"/></p>
                        <p><input type="text" placeholder="State" name="state"/></p>
                        <p <input type="text" placeholder="Gender" name="gender"/></p>
                        <p><input type="date" placeholder="Date of birth" name="dob"/></p>
                        <p><input type="number" placeholder="Phone Number" name="number"/></p>
                        <p><input type="text" placeholder="Location" name="location"/></p>
                        <p><input type="email" placeholder="Email" name="email"/></p>
                        <p><input type="submit" value="Sign Up" /></p>
                  
        </form>
       </div>
    
    <sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/abc" user="root" password=""/>
        <c:choose>
                    <c:when test="${not empty param.fname && not empty param.lname && not empty param.uname && not empty param.pwd && not empty param.project && 
                                        not empty param.dept && not empty param.work && not empty param.state && not empty param.gender && not empty param.dob
                                         && not empty param.number && not empty param.location && not empty param.email}">
                             <sql:update  var="employeetable">
                                INSERT into employeetable values(?,?,?,?,?,?,?,?,?,?,?,?,?)
                                <sql:param value="${param.fname}"/>
                                <sql:param value="${param.lname}"/>
                                <sql:param value="${param.uname}" />
                                <sql:param value="${param.pwd}"/>
                                <sql:param value="${param.project}"/>
                                <sql:param value="${param.dept}"/>
                                <sql:param value="${param.work}"/>
                                <sql:param value="${param.state}"/>
                                <sql:param value="${param.gender}"/>
                                <sql:param value="${param.dob}"/>
                                <sql:param value="${param.number}"/>
                                <sql:param value="${param.location}"/>
                                <sql:param value="${param.email}"/>
                            </sql:update>
                    </c:when>
                    <c:otherwise>
                        <font color="#cc0000">Please Enter Required Information</font>
                   </c:otherwise>
       </c:choose></br>
       
       <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
       <div></div>
    </body>
</html>
