<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<table id="userTable">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email Address</th>
		</tr>
		<c:forEach var="user" items="${users}">
		<tr>
			<td>${user.firstName }</td>
			<td>${user.lastName }</td>
			<td>${user.emailAddress }</td>
		</tr>
		</c:forEach>
	</table>
