<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Note Taker: Home Page</title>
<%@include file="all_js_css.jsp"%>

</head>
<body style="background-color:powderblue;">

	<div class="container">
		<%@include file="navebar.jsp"%>
		<div class="card py-5">

			<div class="container">
				<h1>Welcome to my Home page</h1>
				<h3>This project is passionately created by Roshan Dhote to
					demonstrate my full stack developement understanding</h3>
				<p>Frontend Technology: HTML, CSS.</p>
				<p>Backend Technology : Hibernate, Servlet and JSP</p>
				
			</div>
			<h1 class="text-primary text-upercase text-center">Take your
				notes</h1>
			<br>
			<div action="add-notes.jsp" class="container text-center">
				<button class="btn btn-outline-primary">
					<a href='add_notes.jsp'>Start here</a>
				</button>

			</div>
		</div>
	</div>




</body>
</html>