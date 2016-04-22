<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        
        <title></title>
        <link rel="stylesheet" type="text/css" href="styling.css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <div class="login">
            <div class="login-triangle"></div>
            <h2 class="login-header">LOGIN </h2>
            <form action="" class="login-container" method="post">
                <p><input type="text" placeholder="Username" name="uname"></p>
                <P><input type="password" placeholder="Password" name="pwd"></P>
                <p><input type="submit" value="Log In"></p>
        </form>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'>
            
        </script>
        <div></div>
        <sql:setDataSource var ="myDS" driver ="com.mysql.jdbc.Driver" url ="jdbc:mysql://localhost:3306/abc"
                           user = "root" password="" />
       
        <sql:query dataSource ="${myDS}" var ="employeeinfo" >
            
            select * from employeeinfo where uname =? and pwd = ?
                        <sql:param value="${param.uname}"/>
                         <sql:param value="${param.pwd}"/> 
            
        </sql:query>
                         
        
    </body>
</html>
