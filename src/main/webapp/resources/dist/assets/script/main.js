/**
 *
 * @project : storebro
 * @author : k.n Kim, k.l Kim
 * @description : 항상 작업 한 부분에는 각자 네임 ex) >> kn 주석 및 날짜표기 필수
 * @todo : 항상 메인에는 전체페이지에 공통되는 부분만 표기할 것, 부분적 or 하나라도 해당 안되면 파일 새로 만들어서 할 것.
 * @since : 2021-07-29
 *
 */

'use strict';

 window.addEventListener('load', function(){
	let xhr = new XMLHttpRequest();
	xhr.addEventListener('readystatechange', requestList);
	xhr.open('get', '/travelList');
	xhr.send();

	function requestList(ev){
		if(xhr.readyState == xhr.DONE){
			if(xhr.status == 200 || xhr.status == 201){
				getResult(JSON.parse(xhr.responseText));
			}
		}
	}
	
	function getResult (result){
		console.log(result)
	}
});
