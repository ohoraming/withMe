<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container-fluid h-100">
	<div class="pt-lg-5" data-section>
		<div class="d-flex flex-row flex-lg-column justify-content-center">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide" data-sl-src="slide01">
					</div>
					<div class="swiper-slide" data-sl-src="slide02">
					</div>
					<div class="swiper-slide" data-sl-src="slide03">
					</div>
				</div>
				<!-- If we need pagination -->
				<div class="swiper-pagination"></div>
				
				<!-- If we need navigation buttons -->
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>
		</div>
		<div class="row g-3 mt-lg-5">
			<div class="col-3" data-aos="fade-up" data-aos-delay="200">
				<h3>Reffer</h3>
				<div data-type="banner" data-sl-src="banner01"></div>
			</div>
			<div class="col-3" data-aos="fade-up" data-aos-delay="300">
				<h3>Reffer</h3>
				<div data-type="banner" data-sl-src="banner01"></div>
			</div>
			<div class="col-3" data-aos="fade-up" data-aos-delay="400">
				<h3>Reffer</h3>
				<div data-type="banner" data-sl-src="banner01"></div>
			</div>
			<div class="col-3" data-aos="fade-up" data-aos-delay="500">
				<h3>Reffer</h3>
				<div data-type="banner" data-sl-src="banner01"></div>
			</div>
		</div>
	</div>
	
	<div class="bg-light" data-section>
	
		<div class="container px-4 py-5" id="custom-cards">
		    <h2 class="pb-2 border-bottom" data-aos="fade-right">오늘 업데이트 된 상품</h2>
		    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
		      <div class="col" data-aos="flip-right">
		        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg" style="background-image: url('unsplash-photo-1.jpg');">
		          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
		            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Short title, long jacket</h2>
		            <ul class="d-flex list-unstyled mt-auto">
		              <li class="me-auto">
		                <img src="https://github.com/twbs.png" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
		              </li>
		              <li class="d-flex align-items-center me-3">
		                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#geo-fill"></use></svg>
		                <small>Earth</small>
		              </li>
		              <li class="d-flex align-items-center">
		                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#calendar3"></use></svg>
		                <small>3d</small>
		              </li>
		            </ul>
		          </div>
		        </div>
		      </div>
		
		      <div class="col" data-aos="flip-right">
		        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg" style="background-image: url('unsplash-photo-2.jpg');">
		          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
		            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Much longer title that wraps to multiple lines</h2>
		            <ul class="d-flex list-unstyled mt-auto">
		              <li class="me-auto">
		                <img src="https://github.com/twbs.png" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
		              </li>
		              <li class="d-flex align-items-center me-3">
		                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#geo-fill"></use></svg>
		                <small>Pakistan</small>
		              </li>
		              <li class="d-flex align-items-center">
		                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#calendar3"></use></svg>
		                <small>4d</small>
		              </li>
		            </ul>
		          </div>
		        </div>
		      </div>
		
		      <div class="col" data-aos="flip-right">
		        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg" style="background-image: url('unsplash-photo-3.jpg');">
		          <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
		            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Another longer title belongs here</h2>
		            <ul class="d-flex list-unstyled mt-auto">
		              <li class="me-auto">
		                <img src="https://github.com/twbs.png" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
		              </li>
		              <li class="d-flex align-items-center me-3">
		                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#geo-fill"></use></svg>
		                <small>California</small>
		              </li>
		              <li class="d-flex align-items-center">
		                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#calendar3"></use></svg>
		                <small>5d</small>
		              </li>
		            </ul>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
	
	</div>
	
	<div data-section>
	
		<!-- btn groups -->
        <div class="text-capitalize">
            <h3 class="fw-bold mb-2 mt-5" data-aos="fade-right">
	            <i class="fas fa-car"></i>
	            인기 상품
            </h3>
            <div class="d-flex justify-content-center" data-aos="fade-right">
                <div id="btnGroup" class="justify-content-center row g-3 w-100" data-target="#firstMenu">

                    <button class="col btn btn-outline-secondary rounded-0" data-value="all">
                        전체 보기
                    </button>
                    <button class="col btn" data-value="hud">
                        HUD기획전
                    </button>
                    <button class="col btn" data-value="protecter">
                        프로텍터
                    </button>
                    <button class="col btn" data-value="foreign">
                        수입차 파츠
                    </button>
                    <button class="col btn" data-value="tuning">
                        튜닝 파츠
                    </button>
                    <button class="col btn" data-value="aero">
                        에어로 파츠
                    </button>
                        
                </div>
            </div>
        </div>

        <!-- items group -->
        <div id="firstMenu" class="position-relative text-capitalize px-0 py-3 d-flex flex-wrap justify-content-start" data-aos="fade-right">
        
            <!-- item -->
            <div data-group="hud all">
                <div class="card shadow-sm" style="width: 15rem">
					<svg class="bd-placeholder-img card-img-top" width="100%" height="150" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#55595c">
						</rect>
						<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
					<div class="card-body">
						<p class="card-text">HUD 기획전!!</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
								<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
							</div>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
			</div>
            <div data-group="tuning all">
                <div class="card shadow-sm" style="width: 15rem">
					<svg class="bd-placeholder-img card-img-top" width="100%" height="150" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#55595c">
						</rect>
						<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
					<div class="card-body">
						<p class="card-text">튜닝!!!!</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
								<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
							</div>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
			</div>
            <div data-group="protecter all">
                <div class="card shadow-sm" style="width: 15rem">
					<svg class="bd-placeholder-img card-img-top" width="100%" height="150" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#55595c">
						</rect>
						<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
					<div class="card-body">
						<p class="card-text">프로텍터!!</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
								<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
							</div>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
			</div>
            <div data-group="foreign all">
                <div class="card shadow-sm" style="width: 15rem">
					<svg class="bd-placeholder-img card-img-top" width="100%" height="150" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#55595c">
						</rect>
						<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
					<div class="card-body">
						<p class="card-text">수입차 파츠!!</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
								<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
							</div>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
			</div>
            <div data-group="tuning all">
                <div class="card shadow-sm" style="width: 15rem">
					<svg class="bd-placeholder-img card-img-top" width="100%" height="150" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#55595c">
						</rect>
						<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
					<div class="card-body">
						<p class="card-text">튜닝 파츠!!</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
								<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
							</div>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
			</div>
            <div data-group="aero all">
                <div class="card shadow-sm" style="width: 15rem">
					<svg class="bd-placeholder-img card-img-top" width="100%" height="150" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#55595c">
						</rect>
						<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
					<div class="card-body">
						<p class="card-text">에어로 파츠!!</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
								<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
							</div>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
			</div>
            <div data-group="hud all">
                <div class="card shadow-sm" style="width: 15rem">
					<svg class="bd-placeholder-img card-img-top" width="100%" height="150" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#55595c">
						</rect>
						<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
					<div class="card-body">
						<p class="card-text">에어로 파츠!!</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
								<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
							</div>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
			</div>
            <!-- item -->
            
		</div>
		
	</div>
</div>
<%--
	https://designshack.net/articles/trends/best-website-color-schemes/
	페이지 내 색상 추천 사이트
	
	https://www.nextree.co.kr/p8468/
	css 속성 selector 특징
--%>