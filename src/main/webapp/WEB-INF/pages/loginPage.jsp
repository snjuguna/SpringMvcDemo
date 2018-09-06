<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<html>
<head>
	<title>Login</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<style>.login-form .form-control {
		  background: #f7f7f7 none repeat scroll 0 0;
		  border: 1px solid #d4d4d4;
		  border-radius: 4px;
		  font-size: 14px;
		  height: 70px;
		  line-height: 70px;
		  background-color:blue;
		}
	</style>
</head>
<body id="LoginForm">
   <jsp:include page="_menu.jsp" />
    
   <h1 style="color:blue;text-align:center">Please login into your account</h1> 
     
     <!-- /login?error=true -->
     <c:if test="${param.error == 'true'}">
         <div style="color:#000;background-color:#FF9999;font-weight:bold;margin:20px 20px;">
          
                Login Failed! You entered incorrect username and/or password
                ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                 
         </div>
    </c:if>
       
   <h3>Please enter your username and password:</h3>  
     
   <form name='f' action="${pageContext.request.contextPath}/j_spring_security_check" method='POST'>
      <table>
         <tr>
            <td>Username:</td>
            <td><input type='text' name='username' value=''></td>
         </tr>
         <tr>
            <td>Password:</td>
            <td><input type='password' name='password' /></td>
         </tr>
         <tr>
            <td><input name="submit" type="submit" value="submit" /></td>
         </tr>
      </table>
  </form>

</body>
</html>