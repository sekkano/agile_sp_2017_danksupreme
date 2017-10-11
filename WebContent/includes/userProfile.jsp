<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<table>
		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.firstName }</td>
			</tr>
		</c:forEach>
	</table>
