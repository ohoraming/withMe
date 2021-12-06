<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%
	String url = (String) request.getAttribute("javax.servlet.forward.request_uri");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
 	<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1">
 	<link rel="shortcut icon" href="/resources/dist/assets/img/favicon/favicon.ico"/> 	
	<tiles:insertAttribute name="tracking-preload" />
	<tiles:insertAttribute name="tracking-head" />
    <title><tiles:insertAttribute name="title" /></title>
</head>
<body>

	<!-- header -->
	<tiles:insertAttribute name="header" />
	<!-- header -->
	
	<div class="main">
		<!-- leftSideBar -->
		<tiles:insertAttribute name="leftSideBar" ignore="true"/>
		<!-- leftSideBar -->
		<main>
			<!-- body -->
			<tiles:insertAttribute name="body" />
			<!-- body -->
	    </main>
	    <!-- leftSideBar -->
		<tiles:insertAttribute name="rightSideBar" ignore="true"/>
		<!-- leftSideBar -->
	</div>
	
	<!-- footer -->
	<tiles:insertAttribute name="footer" />
	<!-- footer -->
	
	<tiles:insertAttribute name="tracking-footer" />
    
</body>
</html>
