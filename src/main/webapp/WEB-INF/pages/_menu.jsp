<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<div style="border: 5px solid #ccc;padding:5px;margin-top: 100px;margin-bottom:30px; background-color:;">
 
  <a href="${pageContext.request.contextPath}/welcome">Home Page</a>
 
  | &nbsp;
  
   <a href="${pageContext.request.contextPath}/userInfo" >User</a>
  
  | &nbsp;
  
  <a href="${pageContext.request.contextPath}/admin">Admin</a>
  
  <c:if test="${pageContext.request.userPrincipal.name != null}">
  
     | &nbsp;
     <a href="${pageContext.request.contextPath}/logout">Logout</a>
     
  </c:if>
  
</div>