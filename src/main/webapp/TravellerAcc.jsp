<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<table>
	<c:forEach var="cus" items="${TransDetails}">
	
	<c:set var="requestID" value="${Trans.id}"/>
	<c:set var="Name" value="${Trans.name}"/>
	<c:set var="email" value="${Trans.email}"/>
	<c:set var="date" value="${Trans.date}"/>
	<c:set var="Destination" value="${Trans.destination}"/>
	<c:set var="PickLocation" value="${Trans.PickLocation}"/>
	<c:set var="DropLocation" value="${Trans.DropLocation}"/>
	<c:set var="Vehicle" value="${Trans.Vehicle}"/>
	<c:set var="NoOfPassengers" value="${Trans.NoOfPassengers}"/>
	
	<tr>
		<td>Request ID </td>
		<td>${Trans.id}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${Trans.name}</td>
	</tr>
	<tr>
		<td> Email</td>
		<td>${Trans.email}</td>
	</tr>
	<tr>
		<td>Date</td>
		<td>${Trans.date}</td>
	</tr>
	<tr>
		<td>Destination</td>
		<td>${Trans.destination}</td>
	</tr>
	<tr>
		<td>PickUp Location</td>
		<td>${Trans.PickLocation}</td>
	</tr>
	<tr>
		<td>DropOff Location</td>
		<td>${Trans.DropLocation}</td>
	</tr>
	<tr>
		<td> Vehicle</td>
		<td>${Trans.Vehicle}</td>
	</tr>
	<tr>
		<td> Number of passengers </td>
		<td>${Trans.NoOfPassengers}</td>
	</tr>

	</c:forEach>
	</table>
	
	<c:url value="UpdateTransReq.jsp" var="transupdate">
		<c:param name="requestID" value="${requestID}"/>
		<c:param name="Name" value="${Name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="Destination" value="${Destination}"/>
		<c:param name="PickLocation" value="${PickLocation}"/>
		<c:param name="DropLocation" value="${DropLocation}"/>
		<c:param name="Vehicle" value="${Vehicle}"/>
		<c:param name="NoOfPassengers" value="${NoOfPassengers}"/>

	</c:url>
	
	
	<a href="${transupdate}">
	<input type="button" name="update" value="Update My Data"><br>
	</a>
	
</body>
</html>