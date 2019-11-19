<%@page import="usuario.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Assets/css/bootstrap.min.css" >
<script src="Assets/js/boostrap.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login de Usuarios</title>
</head>
<body>
	<%
		if(request.getParameter("email") != null && (request.getParameter("senha") != null)){
			String email = request.getParameter("email").toString();
			String senha = request.getParameter("senha").toString();
			Usuario usuario = new Usuario("", "", "", email, senha, "");
			if(usuario.checkLogin()){
				HttpSession httpSession = request.getSession(true);
				httpSession.setAttribute("email", usuario.getEmail());
				out.print("Usuario Conectado!");
			}
		}else {
	%>
		<div class="container-fluid col-6">
			<form method="get">
			 	<div class="form-group">
			   		<label for="exampleInputEmail1">Email address</label>
			   		<input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
			 	</div>
			 	<div class="form-group">
			   		<label for="exampleInputPassword1">Password</label>
			   		<input name="senha" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
			 	</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	<%
	}
	%>
</body>
</html>