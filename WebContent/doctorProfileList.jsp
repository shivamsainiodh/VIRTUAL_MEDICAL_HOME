<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.HttpSession" %>
    <%@ page import="com.model.Patient" %>
    <%@ page import="com.model.Doctor" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="com.model.Admin" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%   
HttpSession Session;
Session=request.getSession(true);
ArrayList<Doctor> doctor = (ArrayList<Doctor>)Session.getAttribute("DPL");
Admin admin = (Admin)Session.getAttribute("ADMIN");
%>

       <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <meta name="viewport" content="width=device-width, initial-scale=1">
                 <link rel="stylesheet" type="text/css" href="mystylesheet.css">
        
        <title>Login</title>
                 
    </head>
    <body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
              <div class="navbar-header">
           
                   <a class="navbar-brand" href="doctorProfileList.jsp">Virtual Medical Home </a>
                </div>
                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="doctorProfileList.jsp"><span class="glyphicon glyphicon-user"></span> WELCOME <%out.println(admin.getName()); %></a></li>
                         <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>log out</a></li>
                        
                    </ul>
                </div>
	</nav><br><br><br><br><br>
     <center>
        
       <form method="get" action="#">
		<table style="background-color:rgba (0, 0, 0, 0.5);" border="3" >
  		<tr><th colspan="9">Doctor List</th></tr>
  		<tr><th> Doctor Id </th>
       	<th> Doctor Name </th>
      	<th> Doctor Address </th>
       	<th> Doctor Gender </th>
       	<th> Doctor Phone </th>
       	<th> Doctor Qualification </th>
       	<th> Doctor Experience(in years) </th>
       	<th> Doctor Specialization </th>
       	</tr>


    	<% for(Doctor doct:doctor)
  	  	{
    	%>
          <tr>
          	 <td><%out.println(doct.getDoctorId());%></td>
             <td><%out.println(doct.getName());%></td>
             <td><%out.println(doct.getAddress());%></td>
             <td><%out.println(doct.getGender());%></td>     
             <td><%out.println(doct.getPhone());%></td>
             <td><%out.println(doct.getQualification());%></td>
             <td><%out.println(doct.getExperience());%></td>
             <td><%out.println(doct.getSpecialization());%></td>
         </tr>
           	
    	<% 
    	}
    	%>
    	
     	</table>
       </form>
     </center> 
   
</body>

</html>