<!DOCTYPE html>
<!--#include file="defaults.asp"-->
<!--#include file="generate_breadcrumb.asp"-->
<!--#include file="generate_title.asp"-->
<!--#include file="lib.asp"-->
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html class=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>RMB | <% response.write titleString %></title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script src="js/jquery-ui.js" ></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/header.js"></script>
	<script type="text/javascript" src="js/body.js"></script>
	<script type="text/javascript" src="js/footer.js"></script>

	<script src="js/selectivizr-min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="http://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- here we add any JS that may pertain to this file specifically -->
    <% filename = GetFileNameSansExtension()
    	
    	if(DoesFileExist("js\pages\" + filename + ".js") = TRUE) then
    		response.write("<script type='text/javascript' src='js/pages/" + filename + ".js'></script>")
    	end if
    %>

</head>
<body>


<div class="rmb-wrapper container-fluid"> <!-- Begin outer container -->
	<div class="row menu-search-row"> <!-- This row contains the menu and search item -->
	<!--#include file="menu.asp"-->
	<!--#include file="search.asp"-->
	</div>

	<%
	'Here we add logic dealing with index pages
	if currentScript <> "index.asp" Then
	%>
	<div class="row">
		<div class="rmb-md-header-img">

			<img src="<% response.write headerStripImage %>">	
		</div>
	</div>
	<div class="row">
		<div class="insideCopy">
			<div class="rmb-full-top-item-funcs">
				<div class="rmb-breadcrumb"><% response.write(breadcrumbString) %></div>
				<div class="rmb-print-mail">
					<a href="javascript:window.print()" class="serviceMenu">Print this page</a> | 
					<a href="mailto:?subject=See this page from RMB's website&amp;body=<% response.write currentUrl %>" class="serviceMenu">Mail this page</a>
				</div>
			</div>
			<div class="rmb-full-top-item-device">
				<div class="rmb-think-device">
					<img src="images/inside/thinkMessages/thinkAfrica.png" alt="Think RMB.">
				</div>
			</div>
		

	<%
		Else 'we're looking at index.asp
		%>
			<!-- TODO: any special computations required by index.asp -->

		<%

		End if

	%>
	