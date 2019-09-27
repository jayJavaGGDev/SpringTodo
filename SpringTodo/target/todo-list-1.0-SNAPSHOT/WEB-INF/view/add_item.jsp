<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import ="academy.learnprogramming.util.AttributeNames" %>
<html>

	<head>
    	<title>Add Items</title>
	</head>

	<body>

		<div align="center">

			<form:form method="POST" modelAttribute="${AttributeNames.TODO_ITEM}">

			<table>

				<tr><!-- ID ROW --> 
					<td><label>ID</label></td>
					<td><form:input path ="id" disabled ="true" /></td>
				</tr>

				<tr><!-- TITLE ROW -->
					<td><label>Title</label></td>
					<td><form:input path="title"/></td>
				</tr>

				<tr> <!-- DEADLINE ROW -->
					<td><label>Deadline</label></td>
					<td><form:input path="deadline"/></td>
				</tr>
				<tr> <!-- DETAILS ROW -->
					<td><label>Details</label></td>
					<td><form:textarea path="details"/></td>
				</tr>

				<tr> <!-- SUBMIT FIELD -->
					<td><button type="SUBMIT">CLICK TO SUBMIT</button></td>
				</tr>



			</table>

		</form:form>

		</div>



	</body>

</html>