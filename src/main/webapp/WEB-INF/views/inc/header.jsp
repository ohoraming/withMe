<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String url = (String) request.getAttribute("javax.servlet.forward.request_uri");
%>
<nav id="gnb" class="navbar navbar-expand-xl fixed-top navbar-light w-100 zi-100">
  <div class="container-fluid">
    <a class="navbar-brand d-flex align-items-center" href="<%=url.equals("/")?"#":"/#" %>"><span class="text-capitalize ms-4 mb-0 h4 fw-bold">store bro</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav ms-4 me-auto mb-2 mb-lg-0 text-uppercase fs-8">
        <li class="nav-item">
          <a class="nav-link" href="#">수입차용품</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">세차용품</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">실내용품</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">실외용품</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">안전/편의용품</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">DIY용품</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">튜닝/레이싱</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">휴대폰</a>
        </li>
      </ul>
      <form class="d-flex" action="/search">
        <input class="form-control me-4" type="search" name="text" placeholder="Search" aria-label="Search" required>
        <button class="btn btn-outline-secondary" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<button class="btn position-fixed bg-white" style="width: 10rem; top:60px; right: 1%; z-index:50;" type="button" data-bs-toggle="offcanvas" data-bs-target="#userbar" aria-controls="userbar">
	<i class="fas fa-users-cog"></i>
	User Settings
</button>