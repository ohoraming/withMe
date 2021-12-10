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
                <a class="btn btn-brand text-white" href="#">로그인</a>
            </li>
        </ul>
    </div>
</nav>