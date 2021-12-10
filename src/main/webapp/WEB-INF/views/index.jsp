<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="fence-full">
    <div class="my-3">
        <span class="h5">
            이번 달 축제
        </span>
        <span class="us-none tag tag-danger" data-pop-type="msg" data-msg-dir="end"
            data-msg="이번 달 축제를 소개합니다.">
            ?
        </span>
        <div class="w-flex align-items-center justify-content-between mt-3" style="gap: 5em;">
            <div class="col">
                <label for="inputText">지역/축제 검색</label>
                <input type="text" id="inputText" class="form-input form-input-lg col">
                <div class="favorite-local mt-2"></div>
                <div class="w-flex align-items-center justify-content-between mt-3">
		            <div class="btn-bundle">
					    <select id="year" class="form-select form-select-lg"></select>
					    <select id="month" class="form-select form-select-lg"></select>
					    <select id="day" class="form-select form-select-lg"></select>
					</div>
		        </div>
		        <div><input type="checkbox" name="withFestSearch">지역 & 월별 조건 합치기</div>
            </div>
            <div class="col recommend-categories">
            	
            </div>
        </div>
    </div>
    <hr>
    <div class="card-group justify-content-around card-dv-1 card-dv-sm-2 card-dv-lg-3 g-2" id="result">
        <div class="loadResources">
            
        </div>
    </div>
</section>

<%--
	https://designshack.net/articles/trends/best-website-color-schemes/
	페이지 내 색상 추천 사이트
	
	https://www.nextree.co.kr/p8468/
	css 속성 selector 특징
--%>