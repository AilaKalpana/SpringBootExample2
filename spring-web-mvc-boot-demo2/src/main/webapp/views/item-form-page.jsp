<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
//here are using spring framework tags

<html>
<head>
<title>loan</title>
<link rel="stylesheet" href="css/site.css" />
</head>
<body>
	<jsp:include page="/header" />
	<section>
		<form:form method="POST" modelAttribute="item"> //name of modelAttribute item
			<div>
				<form:label path="icode">Item Code</form:label> //instead of label,we use form:label and instead of name , we use path
				<form:input type="number" path="icode" /> //instead of input , we use form:input
			</div>
			<div>
				<form:label path="name">Item Name</form:label>
				<form:input type="text" path="name" />
			</div>
			<div>
				<form:label path="price">Price</form:label>
				<form:input type="decimal" path="price" />
			</div>
			<div>
				<form:label path="category">Item Category</form:label>
				<form:select path="category" items="${categories }" /> //select is used for drop down
			</div>
			<button>OK</button>
		</form:form>
	</section>
</body>
</html>