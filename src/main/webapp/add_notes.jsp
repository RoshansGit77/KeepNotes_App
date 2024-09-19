<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body style="background-color:powderblue;">
	<div class="container">
		<%@include file="navebar.jsp"%>
		<h1>Fill your note details</h1>
		<br>

		<!-- this is add form -->
		<form action="SaveNoteServlet" method="post">

			<div class="mb-3">
				<label for="title" class="form-label"> Note Title</label> <input required
					type="text" name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter the title">
			</div>

			<div class="mb-3">
				<label for="content" class="form-label">Note
					Content</label>
				<textarea required class="form-control" id="content"
					name="content" placeholder="Enter content here" style="height: 250px;"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>

			</div>

		</form>
	</div>
</body>
</html>