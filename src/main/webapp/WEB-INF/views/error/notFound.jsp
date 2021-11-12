<%@page import="com.storebro.web.entity.ExceptionError"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ExceptionError err = (ExceptionError) request.getAttribute("exception");
// 	System.out.print(err==null);
%>
<main>
	<div class="container-fluid container-xxl p-5" style="margin-top: calc(56px + 2rem) !important">
		<div class="text-center mb-5 p-5">
			<h1 class="display-1 fw-bold mb-2" data-aos="fade-right">
				${exception.id }
			</h1>
			<div class="display-2 fw-bold mb-2" data-aos="fade-right">
				${exception.code }
			</div>
			<div class="fs-3 mb-2" data-aos="fade-right">
				${exception.info }
			</div>
			<div>
				<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
			</div>
			<%-- <div class="text-muted" data-aos="fade-right">
				${exception.reason }
			</div> --%>
		</div>
	</div>
</main>