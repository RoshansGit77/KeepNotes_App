<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit page</title>
<%@include file="all_js_css.jsp"%>

</head>
<body style="background-color:powderblue;">
	<div class="container">
		<%@include file="navebar.jsp"%>
		<h1>Edit your notes</h1>
		<%
		int id = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, id);
		%>
		<!-- this is edit form -->
		<form action="UpdateServlet" method="post">
		
		 	<input value="<%=note.getId()%>" name= "noteId" type="hidden" >

			<div class="mb-3">
				<label for="title" class="form-label"> Note Title</label> <input
					required type="text" name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter the title"
					value="<%=note.getTitle()%>">
			</div>

			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea required class="form-control" id="content" name="content"
					placeholder="Enter content here" style="height: 250px;"><%=note.getContent() %></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save the note</button>

			</div>

		</form>

	</div>
</body>
</html>