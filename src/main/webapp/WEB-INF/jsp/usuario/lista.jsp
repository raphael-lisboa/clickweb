<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
  <head>
    <title>Lista usuários</title>
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
  <body>
  

    <div class="container bg-sand-gray header-title">
      <h1 class="pull-left">Lista Usuários</h1> 
    </div>

    
<c:forEach var="usuario" items="${usuarioList}">
  			    <tr>
  			    	<td>
  					${usuario.nome}
  					</td>
  					  	<td>
  					${usuario.email}
  					</td>
  					</tr>
		</c:forEach>
  </body>
  
  
</html>