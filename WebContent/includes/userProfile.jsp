<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<table>
		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.firstName }</td>
				<td>${user.lastName }</td>
				<td>${user.emailAddress }</td>
			</tr>
		</c:forEach>
	</table>
