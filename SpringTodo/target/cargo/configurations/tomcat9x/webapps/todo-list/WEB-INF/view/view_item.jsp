<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="academy.learnprogramming.util.Mappings" %>
<html>

	<head>
    	<title>View Items</title>
	</head>

	<body>

		<div align="center">


			<table>

				<tr><!-- ID ROW --> 
					<td><label>ID</label></td>
					<td>
						<c:out value="${todoItem.id}"/>
					</td>
				</tr>

				<tr><!-- TITLE ROW -->
					<td><label>Title</label></td>
					<td>
						<c:out value="${todoItem.title}"/>
					</td>
				</tr>

				<tr> <!-- DEADLINE ROW -->
					<td><label>Deadline</label></td>
					<td>
						<c:out value="${todoItem.deadline}"/>
					</td>
				</tr>
				<tr> <!-- DETAILS ROW -->
					<td><label>Details</label></td>
					<td>
						<c:out value="${todoItem.details}"/>
					</td>
				</tr>



			</table>
			<c:url var="tableUrl" value="${Mappings.ITEMS}" />
			<a href="${tableUrl}">Show Table</a>

		</div>



	</body>

</html>