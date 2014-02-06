<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
  <head>
    <title>Adiciona usuário</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1">-->
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/lib/bootstrap.min.css" rel="stylesheet" media="screen">

    <!-- Dashboard
    <link href="css/dashboard.min.css" rel="stylesheet" media="screen"> -->
    <!--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/lib/jquery-ui.min.css">-->


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath}/js/lib/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/js/lib/respond.min.js"></script>
    <![endif]-->
    
    
   
  </head>
  <body style="background-color:#eee" >
  

    <div class="container bg-sand-gray header-title">
      <h1 class="pull-left">Novo Usuário</h1> 
      <div class="pull-right" style="margin-top: 15px">
        <span class="text-red" style="margin-right: -7px;">&lt;&lt;</span><a href="${pageContext.request.contextPath}/usuario/lista" class="btn btn-lnk text-white">voltar a lista </a>
      </div>
    </div>

    <div class="container" style="background-color:white">
    
      <form action="/usuario/salva"  class="form-horizontal" method="POST" role="form" >

		<c:forEach var="error" items="${errors}">
  			    <div class="alert alert-danger">
  					 ${error.message}<br />
      			</div>
		</c:forEach>
     
        <div class="form-group">
          <label for="txtName" class="form">Nome:</label> 
          <div>
            <div class="downbox">
              <input type="text" id="txtName" name="usuario.nome" class="form-field min-w-270" />          
              </div>
            </div>
          </div>
          
         <div class="form-group">
          <label for="txtEmail" class="form">Email:</label> 
          <div>
            <div class="downbox">
              <input type="email" id="txtEmail" name="usuario.email" class="form-field min-w-270" />          
              </div>
            </div>
          </div>
          
          
         <div class="form-group">
          <label for="txtSenha" class="form">Senha:</label> 
          <div>
            <div class="downbox">
              <input type="password" id="txtSenha" name="usuario.senha" class="form-field min-w-270" />          
              </div>
            </div>
          </div>
	
      
        <div class="form-group text-right" style="width: 270px">
		<input type="submit" value="Save" class="btn btn-primary" />
       	</div>
      </form>
    </div>



    

	
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/lib/jquery.min.js"></script> 
    <script src="${pageContext.request.contextPath}/js/lib/jquery-ui.min.js"></script>
    
    <!-- Include all others plugins -->
    <script src="${pageContext.request.contextPath}/js/lib/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/lib/bootstrap-multiselect.js"></script>
    

  </body>
  
  
</html>