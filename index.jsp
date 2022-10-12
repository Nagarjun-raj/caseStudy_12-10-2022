<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h3>
<h4 style="color:green"><font size="+2"><u><i>Company Share List</i></u></font></h4>
<br/>
<h1>
<a href="company-entry"><p style="color:magenta"><font size="+1"><u>Enlist a new Company</u></font></p></a>
</h1>
<br/>
<table border="2">
<tr bgcolor="orange">
<th style="color:blue">COMPANY ID</th>
<th style="color:blue">COMPANY Name</th>
<th style="color:blue">SHARE PRICE</th>
<th style="color:blue">Actions</th>
</tr>
<c:forEach items="${companyList}" var="company">
<tr bgcolor="yellow">
<td style="color:blue">${company.companyId}</td>
<td style="color:blue">${company.companyName}</td>
<td style="color:blue">${company.sharePrice}</td>
<td style="color:magenta">
<a href="edit-company/${company.companyId}">Edit_Share_Price</a> 
&nbsp;&nbsp;&nbsp;<a href="delete-company/${company.companyId}">Delete_Company</a>
</h3>
</td>
<td>
</tr>
</c:forEach>
</table>
<br/><br/>
</h2>
</div>
</body>
</html>