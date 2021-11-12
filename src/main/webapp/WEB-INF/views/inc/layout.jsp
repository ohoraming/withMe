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
	
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <!-- sun editor -->
	<link href="https://cdn.jsdelivr.net/npm/suneditor@latest/dist/css/suneditor.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/suneditor@latest/dist/suneditor.min.js"></script>
	<!-- languages (Basic Language: English/en) -->
	<script src="https://cdn.jsdelivr.net/npm/suneditor@latest/src/lang/ko.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500;700;900&display=swap" rel="stylesheet">
    <!-- main.css -->
    <link rel="stylesheet" href="/resources/dist/assets/style/main.css">
    <link rel="stylesheet" href="/resources/dist/assets/style/forSwiper.css">
    <link rel="stylesheet" href="/resources/dist/assets/style/forSelector.css">
    <!-- AOS fullpage -->
   	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
   	<!-- swiper.js -->
   	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	<!-- swiper.js -->
	<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <title>Store Bro</title>
</head>
<body data-aos-easing="ease-out-back" data-aos-duration="1000" data-aos-delay="0">

	<!-- header -->
	<tiles:insertAttribute name="header" />
	<!-- header -->
	
	<!-- body -->
	<tiles:insertAttribute name="body" />
	<!-- body -->
	
	<!-- userbar -->
	<tiles:insertAttribute name="userbar" />
	<!-- userbar -->
	
	<!-- footer -->
	<tiles:insertAttribute name="footer" />
	<!-- footer -->
	
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <!-- AOS js -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init(); 
	</script>
	<script src="/resources/dist/assets/script/main.js" defer></script>
	<script src="/resources/dist/assets/script/sunedit.js" defer></script>
	<script>
		var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
		var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
		  return new bootstrap.Tooltip(tooltipTriggerEl)
		})
	</script>
	<script>
	const swiper = new Swiper('.swiper-container', {
		  // Optional parameters
		  direction: 'horizontal',
		  loop: true,
		  
		  speed: 400,
		  spaceBetween: 5,
		  
		  effect: 'flip',
			// 'slide' | 'fade' | 'cube' | 'coverflow' | 'flip'
		  cubeEffect: {
		  	slideShadows: false,
		  },
		  autoplay:{
			  delay: 5000,
		  },
		  
		  // If we need pagination
// 		  pagination: {
// 		    el: '.swiper-pagination',
// 		  },

		  // Navigation arrows
		  navigation: {
		    nextEl: '.swiper-button-next',
		    prevEl: '.swiper-button-prev',
		  },

		  // And if we need scrollbar
// 		  scrollbar: {
// 		    el: '.swiper-scrollbar',
// 		  },
	});
	</script>
</body>
</html>
