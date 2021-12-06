<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="sr"></div>

<section class="fence-full">
    <div class="my-3">
        <span class="h5">
            월별 축제
        </span>
        <span class="us-none tag tag-danger" data-pop-type="msg" data-msg-dir="end"
            data-msg="이번 달 축제를 소개합니다.">
            ?
        </span>
        <div class="w-flex align-items-center justify-content-between mt-3">
            <div class="btn-bundle">
			    <select id="year" class="form-select form-select-lg"></select>
			    <select id="month" class="form-select form-select-lg"></select>
			    <select id="day" class="form-select form-select-lg"></select>
			</div>
        </div>
    </div>
    <hr>
    <div class="card-group justify-content-around card-dv-1 card-dv-sm-2 card-dv-lg-3 g-2" id="result">
        <div class="loadResources">
            
        </div>
    </div>
</section>

<div class="sr"></div>