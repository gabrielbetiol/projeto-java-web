<%@page import="usuario.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="Assets/production/ximages/favicon.ico" type="image/ico" />

    <title>Local Farm </title>

    <!-- Bootstrap -->
    <link href="Assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="Assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="Assets/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="Assets/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="Assets/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
	<%
		if(request.getParameter("email") != null && (request.getParameter("senha") != null)) {
   			String email = request.getParameter("email").toString();
   			String senha = request.getParameter("senha").toString();
        	Usuario usuario = new Usuario("","","",email,senha,"");
       		if ( usuario.checkLogin() ){
       			HttpSession httpSession = request.getSession(true);
       			
       			httpSession.setAttribute("id", usuario.getId());
    			httpSession.setAttribute("nome", usuario.getNome());
    			httpSession.setAttribute("email", usuario.getEmail());
    			httpSession.setAttribute("cpf", usuario.getCpf());
    			httpSession.setAttribute("end", usuario.getEndereco());
    			httpSession.setAttribute("senha", usuario.getSenha());
       			//out.print("Usuario Autenticado");
       			response.sendRedirect("index.jsp");
       			
         	}else{
         		%>
      			<div>
			      <a class="hiddenanchor" id="signup"></a>
			      <a class="hiddenanchor" id="signin"></a>

			      <div class="login_wrapper">
			        <div class="animate form login_form">
			          <section class="login_content">
			            <form method="get">
			            	<h1>Fazer login</h1>
			                <h2 class="text-danger">Usuário ou Senha incorretos!</h2>
			            	<div>
			                	<input type="text" name="email" class="form-control" placeholder="E-mail" required="" />
			              	</div>
			              	<div>
			                	<input type="password" name="senha" class="form-control" placeholder="Senha" required="" />
			              	</div>
			          		<button id="send" type="submit" class="btn btn-success">Entrar</button>
							<div>
								<a class="btn btn-default submit" href="recover.jsp">Esqueceu sua senha?</a>
			              	</div>
							<div class="clearfix"></div>
			        		<div class="separator">
			              		<p class="change_link">Novo no site?
			                		<a href="#signup" class="to_login"> Crie sua conta </a>
			              		</p>
			              		<div class="clearfix"></div>
			              		<br />
								<div>
			                		<h1><i class="fa fa-leaf"></i> Local Farm</h1>
			                		<p>©2019 All Rights Reserved. Local Farm!</p>
			              		</div>
							</div>
						</form>
			          </section>
			        </div>
			        <div id="register" class="animate form registration_form">
			          <section class="login_content">
			            <form >
			              <h1>Crie uma conta</h1>
					        <!-- page content -->
			                        <div class="item form-group">
										 <div class="col-md-12 col-sm-12">
										  <input id="name" class="form-control" data-validate-length-range="6" data-validate-words="2" name="name" placeholder="Nome" required="required" type="text">
										</div>
			                        </div>
									<div class="item form-group">                      
										<div class="col-md-12 col-sm-12">
										  <input type="email" id="email" name="email" required="required" class="form-control" placeholder="Email">
										</div>
									</div>
									<div class="item form-group">
										<div class="col-md-12 col-sm-12">
										  <input type="email" id="email2" name="confirm_email" data-validate-linked="email" required="required" class="form-control" placeholder="Confirme seu Email">
										</div>
									</div>
			                        <div class="item form-group">
										<div class="col-md-8 col-sm-8">
			                          		<input id="password" type="password" name="password" data-validate-length="6,8" class="form-control" required="required" placeholder="Digite uma senha">
			                      		</div>
			                      	</div>
			                      	<div class="item form-group">
			                      		<div class="col-md-8 col-sm-8">
					                        <input id="password2" type="password" name="password2" data-validate-linked="password" class="form-control" required="required" placeholder="Confirme a senha">
					                    </div>
					                </div>
			                        <div class="col-md-12">
			                          <button type="submit" class="btn btn-primary">Cancelar</button>
			                          <button id="send" type="submit" class="btn btn-success">Submeter</button>
			                        </div>
									<!-- /page content -->
								<div class="clearfix">
								</div>
								<div class="separator">
									<p class="change_link">Tem uma conta?
										<a href="#signin" class="to_register"> Login</a>
									</p>
									<div class="clearfix"></div>
								<br />
								<div>
			                  <h1><i class="fa fa-leaf"></i> Local Farm</h1>
			                  <p>©2019 All Rights Reserved. Local Farm!</p>
			                </div>
			              </div>
			            </form>
			          </section>
			        </div>	
			      </div>
			    </div>
            		<%
            		HttpSession httpSession = request.getSession(true);
        			httpSession.setAttribute("email", "none");
            	}
         }else {
            %>
			   	<div>
			      <a class="hiddenanchor" id="signup"></a>
			      <a class="hiddenanchor" id="signin"></a>

			      <div class="login_wrapper">
			        <div class="animate form login_form">
			          <section class="login_content">
			            <form method="get">
			            	<h1>Fazer login</h1>
			            	<div>
			                	<input type="text" name="email" class="form-control" placeholder="E-mail" required="" />
			              	</div>
			              	<div>
			                	<input type="password" name="senha" class="form-control" placeholder="Senha" required="" />
			              	</div>
			          		<button id="send" type="submit" class="btn btn-success">Entrar</button>
							<div>
								<a class="btn btn-default submit" href="recover.jsp">Esqueceu sua senha?</a>
			              	</div>
							<div class="clearfix"></div>
			        		<div class="separator">
			              		<p class="change_link">Novo no site?
			                		<a href="#signup" class="to_login"> Crie sua conta </a>
			              		</p>
			              		<div class="clearfix"></div>
			              		<br />
								<div>
			                		<h1><i class="fa fa-leaf"></i> Local Farm</h1>
			                		<p>©2019 All Rights Reserved. Local Farm!</p>
			              		</div>
							</div>
						</form>
						
			          </section>
			        </div>
			
			        <div id="register" class="animate form registration_form">
			          <section class="login_content">
			            <form >
			              <h1>Crie uma conta</h1>
			
					        <!-- page content -->
			                        <div class="item form-group">
										 <div class="col-md-12 col-sm-12">
										  <input id="name" class="form-control" data-validate-length-range="6" data-validate-words="2" name="name" placeholder="Nome" required="required" type="text">
										</div>
			                        </div>
			
									<div class="item form-group">                      
										<div class="col-md-12 col-sm-12">
										  <input type="email" id="email" name="email" required="required" class="form-control" placeholder="Email">
										</div>
									</div>
			
									<div class="item form-group">
										<div class="col-md-12 col-sm-12">
										  <input type="email" id="email2" name="confirm_email" data-validate-linked="email" required="required" class="form-control" placeholder="Confirme seu Email">
										</div>
									</div>
			
			                        <div class="item form-group">
										<div class="col-md-8 col-sm-8">
			                          		<input id="password" type="password" name="password" data-validate-length="6,8" class="form-control" required="required" placeholder="Digite uma senha">
			                      		</div>
			                      	</div>
			
			                      	<div class="item form-group">
			                      		<div class="col-md-8 col-sm-8">
					                        <input id="password2" type="password" name="password2" data-validate-linked="password" class="form-control" required="required" placeholder="Confirme a senha">
					                    </div>
					                </div>
			
			                      
			                        <div class="col-md-12">
			                          <button type="submit" class="btn btn-primary">Cancelar</button>
			                          <button id="send" type="submit" class="btn btn-success">Submeter</button>
			                        </div>
			                    
			   
			
									<!-- /page content -->
			
					
								<div class="clearfix">
								</div>
			
			              
			
								<div class="separator">
									<p class="change_link">Tem uma conta?
										<a href="#signin" class="to_register"> Login</a>
									</p>
			
									<div class="clearfix"></div>
								<br />
			
								<div>
								
			                  <h1><i class="fa fa-leaf"></i> Local Farm</h1>
			                  <p>©2019 All Rights Reserved. Local Farm!</p>
			                </div>
			
			              </div>
			
			
			
			            </form>
			          </section>
			        </div>
			
			
			
			      </div>
			    </div>
    <%
            	}
    %>
  </body>


    <!-- jQuery -->
    <script src="Assets/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="Assets/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="Assets/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="Assets/vendors/nprogress/nprogress.js"></script>
    <!-- validator -->
    <script src="Assets/vendors/validator/validator.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="Assets/build/js/custom.js"></script>

</html>
