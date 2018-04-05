<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<html>
   <head>
      <title>SELECT Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://10.128.93.89/sampledb"
         user = "userPHM"  password = "Fou0RJQFndA4q3Qr"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from student_test;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Roll No</th>
            <th>First Name</th>
       
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.rollno}"/></td>
               <td><c:out value = "${row.name}"/></td>
               
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>