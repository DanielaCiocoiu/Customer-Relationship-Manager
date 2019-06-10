<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">


<title>Save Customer</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Customer</h3>

		<!--in spate, spring: hei e un obiect  customer ale carui valori nu sunt nule,  
	cand formularul este incarcat, Spring mvc va apela customer.getFirstName() si getLastName() 
	si daca nu sunt null, le voi folosi sa prepopuleze aceste campuri, deci spring va apela getter method 
	cand acest form este incarcat iar cand submit datele, spring va apela setter method  -->

		<form:form action="saveCustomer" modelAttribute="customer"
			method="POST">

			<!-- need to associate this data with customer id, cand acest pormular este incarcat, 
			se obtine un id al customer-ului, care va fi plasat in acest camp  ascuns 
			  iar cand fac submit customer.setId. Este un camp important fara de care s-ar pierde contactul cu ID-ul clientului original. O informatie utila pt backend -->
			<form:hidden path="id" />

			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>

					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td><label>Company:</label></td>
						<td><form:input path="company" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save"
							class="btn btn-info col-2" /></td>
					</tr>


				</tbody>
			</table>


		</form:form>

		<div style=""></div>

		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back
				to List</a>
		</p>

	</div>

</body>

</html>










