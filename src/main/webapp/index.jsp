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
<body style="background-image: url('img/bk.png');">

	<div class="container">
		<%@include file="navebar.jsp"%>
		<div class="card py-5">
			<img alt="" class="img-fluid mx-auto" style="max-width: 300px"
				src="img/noteimg.png"><br>
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