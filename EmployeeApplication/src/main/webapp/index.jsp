<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="bootstrap/js/bootstrap.js">
</script>
<script type="text/javascript" src="bootstrap/jquery.js">
</script>
</head>
<body style = "background: lightBlue">
<%@include file="header.jsp" %>
<form action="department">
<div class="form-group">
<label for="loc">location id:</label>
<input type="number" class="form-control" name="loc">

</div>
<button type="submit" class="btn btn-default">get location details</button>
</form>
</body>
</html>