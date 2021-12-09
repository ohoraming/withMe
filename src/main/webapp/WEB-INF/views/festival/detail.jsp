<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="sr"></div>

<section class="fence-full">
	<div class="card-detail"></div>
</section>

<div class="sr"></div>

<script id="once" type="text/javascript">
setTimeout(async ()=>{	
	let find = setInterval(() => {
		if(window['festInfo']) {
			console.log(window['festInfo'].festivals.filter(fest=>fest.축제번호==${num}))
			document.querySelector('.card-detail').insertAdjacentHTML('beforeend', theme.card.render(window['festInfo'].festivals.filter(fest=>fest.축제번호==${num})[0]));
			clearInterval(find);
		}
	}, 10);
	setTimeout(() => {
		once.remove();
	},1000);
}, 100);
</script>