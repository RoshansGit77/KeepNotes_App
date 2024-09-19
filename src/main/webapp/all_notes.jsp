<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body style="background-color:powderblue;">

	<div class="container">
		<%@include file="navebar.jsp"%>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt-3" >
					<img class="card-img-top pl-2 pt-2 mx-auto"  style="width:50px" src="img/noteimg.png" alt="Card image cap">
					<div class="card-body">
					
						<h5 class="card-title"><%= note.getTitle()%></h5>
						<p class="card-text"><%= note.getContent()%></p>
						<p><b class="text-primary"><%=note.getAddedDate()%></b></p>
						<div class="container text-center">
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">delete</a>
						<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary" >update</a> 
						</div>
						
						
					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>
	</div>
</body>
</html>