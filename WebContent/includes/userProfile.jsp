<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${empty user }">
		<p>Sorry, there are no results.</p>
	</c:when>
	<c:otherwise>
		<table cellspacing="0">
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.getFirstName}</td>
				</tr>
			</c:forEach>
		</table>
	</c:otherwise>
	
	
</c:choose>