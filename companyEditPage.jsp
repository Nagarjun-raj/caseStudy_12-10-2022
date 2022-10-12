<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1 style="color:red">
<u><i>Company Share Price updation</i></u>
</h1>
<br/>
<form:form method="post" action="company-edit" modelAttribute="companyRecord">
<h2>
COMPANY ID:<form:input type="text" path="companyId" readonly="readonly"/>
<br/><br/>
COMPANY Name:<form:input type="text" path="companyName" readonly="readonly"/>
<br/><br/>
ENTER NEW SHARE PRICE:<form:input type="text" path="sharePrice"/>
<br/><br/>

<input type="submit" value="Submit"/>

</h2>
</form:form>
</div>
</body>
</html>