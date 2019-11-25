<%@page import="usuario.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Assets/css/bootstrap.min.css" >
<link rel="stylesheet" href="Assets/css/index.css">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Graficos</title>
</head>
<body>
		<h1>Vendas x Produção</h1>

		<svg class="line-chart"></svg>
	
	<ul></ul>
	
	<script type="text/javascript" src="Assets/js/boostrap.js"></script>
	<script type="text/javascript" src="Assets/js/d3.min.js"></script>
	<script type="text/javascript" src="Assets/js/index.js"></script>
	<script>
		/*
		var nomes = ['diego', 'joão', 'bruna', 'luana', 'marília'];
		d3.select('ul')
		  .selectAll('li')
		  .data(nomes)
		  .enter()
		  .append('li')
		  .text(function(nome) { return nome; });
		
		*/
		/*
		var svg = d3.select('svg');
		 svg.append('rect');
			.attr('x', 50)
			.attr('y', 50)
			.attr('width', 200)
			.attr('height', 200)
			.attr('fill', 'green');
		*/
		
		
	</script>

</body>
</html>