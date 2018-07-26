<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.ibm.model.Department"
    import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="bootstrap/js/bootstrap.js">
</script>
<script type="text/javascript" src="bootstrap/jquery.js">
</script>
<title>Department list</title>
</head>
<body style = "background: lightBlue">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@include file="header.jsp" %> --%>
<c:import url="header.jsp"></c:import>
<div class = "container">
<table class = "table table-striped">
<tr>
<th>Department id</th>
<th>Department Name</th>
<th>Location id</th>
</tr>
<c:forEach items="${list}" var =  "d">
<tr>
<td>${d.deptId}</td>
<td>${d.deptName}</td>
<td>${d.locId}</td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>