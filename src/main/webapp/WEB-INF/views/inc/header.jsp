<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="gnb position-sticky bg-light us-none gnb-primary">
    <div class="gnb-inner gnb-expand-md hide align-items-center">
        <div class="brand fw-bold">
            <a href="/">WithMe</a>
        </div>
        <div class="menu-btn">
            <button class="btn btn-light text-gray fs-4" data-target="#gnbMenu" style="line-height: 1">
                <i class="fas fa-bars"></i>
            </button>
        </div>
        <ul id="gnbMenu" class="gnb-menu gx-5 w-flex">
            <li>
                <a class="nav-link" href="#">축제 검색</a>
            </li>
            <li>
                <a class="nav-link" href="#">날씨 검색</a>
            </li>
            <li>
                <a class="btn btn-brand text-white" href="#">로그인</a>
            </li>
            <li class="search btn-bundle g-0">
                <input type="text" class="form-input col">
                <button class="btn btn-warning">
                    <i class="fas fa-search"></i>
                </button>
            </li>
        </ul>
    </div>
</nav>
<section class="bg-light" style="z-index: 1170;position: relative;">
    <div class="w-flex justify-content-between g-3 p-1">
        <div class="col-10 text-start">
            <div class="btn text-dark btn-focus-gray pe-none" data-target="#lsb">
                <i class="fas fa-bars"></i> 메뉴
            </div>
        </div>
        <c:if test="${user}">
	        <div class="col-10 text-end">
	            <button class="btn text-dark btn-focus-gray" data-target="#rsb">
	                <i class="fas fa-bars"></i> 회원정보
	            </button>
	        </div>
        </c:if>
    </div>
</section>