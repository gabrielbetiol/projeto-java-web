<%@page import="usuario.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Assets/css/bootstrap.min.css" >
<link rel="stylesheet" href="Assets/css/index.css">

<script type="text/javascript" src="Assets/js/boostrap.js"></script>
<script type="text/javascript" src="Assets/js/d3.min.js"></script>
<script type="text/javascript" src="Assets/js/index.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Graficos</title>
</head>
<body>
	<div id="dashboard">
		<p>Vendas x Produção</p>
		<div class="chart">

		</div>
	</div>
	
	<ul></ul>
	
	<script>
	
		var nomes = ['diego', 'joão', 'bruna', 'luana', 'marília'];
		d3.select('ul')
		  .selectAll('li')
		  .data(nomes)
		  .enter()
		  .append('li')
		  .text(function(nome) { return nome; });
		
	</script>
</body>

</html>