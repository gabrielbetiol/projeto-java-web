<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="Assets/production/images/favicon.ico" type="image/ico" />
	  
    <title>Local Farm </title>

    <!-- Bootstrap -->
    <link href="Assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="Assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="Assets/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="Assets/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="Assets/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="Assets/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="Assets/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="Assets/vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="Assets/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="Assets/build/css/custom.min.css" rel="stylesheet">
  </head>
  <%
  	HttpSession httpSession = request.getSession();
  	if(request.getParameter("novasenha") == request.getParameter("novasenha2")){
  		out.print("Senhas Conferem");
  	}else {
  		out.print("Senhas nao conferem");
  	}
  %>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.jsp" class="site_title"><i class="fa fa-leaf"></i> <span>Local Farm</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="Assets/production/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2><% out.print((String)httpSession.getAttribute("nome")); %></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a href="index.jsp "><i class="fa fa-home"></i> Home <span class="fa fa-chevron"></span></a>
                    
                  </li>
                  <li><a href="form.jsp"><i class="fa fa-edit"></i> Edit <span class="fa fa-chevron"></span></a>
                    
                  </li>
                  
                </ul>
              </div>
			  

            </div>
            <!-- /sidebar menu -->

            
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
              <nav class="nav navbar-nav">
              <ul class=" navbar-right">
                <li class="nav-item dropdown open" style="padding-left: 15px;">
                  <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                    <img src="Assets/production/images/img.jpg" alt=""><% out.print((String)httpSession.getAttribute("nome")); %>	
                  </a>
                  <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item"  href="index.jsp"> Dashboard</a>
                    <a class="dropdown-item"  href="login.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                  </div>
                </li>

				
				
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Editar Dados</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Dados pessoais </h2>
                    
					<div class="clearfix"></div>
					</div>
				
					<div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Nome <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <input type="text" id="first-name" required="required" name="nome"
                          	class="form-control" value="<% out.print((String)httpSession.getAttribute("nome")); %>">
                        </div>
                      </div>
					  <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="cpf" >CPF <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 ">
                          <input type="text" id="cpf" required="required" name="cpf"
                          	class="form-control" value="<% out.print((String)httpSession.getAttribute("cpf")); %>" >
                        </div>
                      </div>
                      
                      <!-- 
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Genero</label>
                        <div class="col-md-6 col-sm-6 ">
                          <div id="gender" class="btn-group" data-toggle="buttons">
                            <label class="btn btn-secondary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="gender" value="male" class="join-btn"> &nbsp; M &nbsp;
                            </label>
                            <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                              <input type="radio" name="gender" value="female" class="join-btn"> &nbsp; F &nbsp;
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Nascimento <span class="required">*</span>
                        </label>
                        <div  class="col-md-6 col-sm-6 ">
                          <input type="text" class="form-control" data-inputmask="'mask': '99/99/9999'">
                          <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                        </div>
                      </div>
					  -->

                      <div class="form-group row ">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" >E-mail</label>
                        <div class="col-md-6 col-sm-6  ">
                          <input type="text" name="email"
                          class="form-control" placeholder="Default Input" value="<% out.print((String)httpSession.getAttribute("email")); %>">
                        </div>
                      </div>
                      
                      <div class="form-group row">
                        <label class="col-form-label col-md-3 col-sm-3 label-align">Endere�o <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6  ">
                          <textarea class="form-control" name="end" rows="3" ><% out.print((String)httpSession.getAttribute("end")); %></textarea>
                        </div>
                      </div>
					  
					  <div >
                    <h2>Alterar senha</h2>
                    
					<div class="clearfix"></div>
					</div>
				
                      <div class="item form-group">
                        <label for="password" class="col-form-label col-md-3 label-align">Nova senha </label>
                        <div class="col-md-3 col-sm-3">
                          <input id="password" type="password" name="novasenha" data-validate-length="6,8" class="form-control" required="required">
                        </div>
                      </div>
					  
                      <div class="item form-group">
                        <label for="password2" class="col-form-label col-md-3 col-sm-3 label-align ">Digite novamente </label>
                        <div class="col-md-3 col-sm-3">
                          <input id="password2" type="password" name="novasenha2" data-validate-linked="novasenha" class="form-control" required="required">
                        </div>
                      </div>
                      


                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-9 col-sm-9  offset-md-3">
                          <button type="reset" class="btn btn-danger">Resetar</button>
                          <button type="submit" class="btn btn-success">Submeter</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>

			</div>



          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="Assets/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="Assets/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="Assets/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="Assets/vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="Assets/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="Assets/vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="Assets/vendors/moment/min/moment.min.js"></script>
    <script src="Assets/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="Assets/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="Assets/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="Assets/vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="Assets/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="Assets/vendors/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="Assets/vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="Assets/vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="Assets/vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="Assets/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="Assets/vendors/starrr/dist/starrr.js"></script>

	<!-- validator -->
    <script src="Assets/vendors/validator/validator.js"></script>
	

	
    <!-- Custom Theme Scripts -->
    <script src="Assets/build/js/custom.js"></script>
	
	    
    <!-- Initialize datetimepicker -->
<script  type="text/javascript">
   /*
   $(function () {
                $('#myDatepicker').datetimepicker();
            });
    
    $('#myDatepicker2').datetimepicker({
        format: 'DD.MM.YYYY'
    });
    
    $('#myDatepicker3').datetimepicker({
        format: 'hh:mm A'
    });
    
    $('#myDatepicker4').datetimepicker({
        ignoreReadonly: true,
		
        allowInputToggle: true
    });

    $('#datetimepicker6').datetimepicker();
    
    $('#datetimepicker7').datetimepicker({
        useCurrent: false
    });
    
    $("#datetimepicker6").on("dp.change", function(e) {
        $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });
    
    $("#datetimepicker7").on("dp.change", function(e) {
        $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
    });
    */
</script>
	
  </body>
</html>
