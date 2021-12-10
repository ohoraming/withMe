Array.prototype.insertInto = function (insertInto = 0, ...args) {
    this.splice(insertInto, 0, ...args);
    return this;
}

const replaceRegex = new RegExp(/\([\s\S]+?\)|[0-9\,]+곳|[0-9\,]+기|[0-9\(\)ㄱ-힣]+부터|[0-9\(\)ㄱ-힣]+까지|옛|[0-9\,]+보|[0-9\,]+인|넘치는|따른|따르는|[0-9\,]+개|[ㄱ-힣]+하고\s|[ㄱ-힣]+되며\s|[ㄱ-힣]+하다\s|[ㄱ-힣]+는\s|[ㄱ-힣]+하는\s|[ㄱ-힣]+한\s|[ㄱ-힣]+에\s|에서|에게|[ㄱ-힣]+하여\s|하게|[[^놀]ㄱ-힣]+이\s|[ㄱ-힣]+가[^요제]|[ㄱ-힣]+로\s|있고|[ㄱ-힣]+로한\s|다양한|활용한|[ㄱ-힣]+의\s|\s등|[\s\S[^유]]+?등$|\“[\s\S]+?\”|\&[\s\S]+?\;|ㅇ/,'gm');
const splitRegex = new RegExp(/[\s]|\·|\+|\_|\,|외|것|과|와|을|를|및|○|\/|\:|\&|\./, 'gm');
let choose = '';
let filteredFest = [];
let withFestSearch = false;

const theme = {
    card: {
        render: (
            {
				축제번호,
				홈페이지주소 = '#',
	            관련정보 = '공개된 정보가 아직 없습니다.',
	            축제이름 = 'No Title',
	            내용 = 'No Contents',
	            시작일 = '-',
	            종료일 = '-',
	            도로명주소 = '-',
	            전화번호 = '제공되는 번호가 없습니다.',
            }
        ) => {
			console.log(축제이름)
            return `
                <div class="card p-5" fest-id="${축제번호}">
                    <div class="card-title"><span class="h3">${축제이름.replace(/[\&\;a-z]+/gm,'')}</span> <span class="tag text-muted">${관련정보}</span> </div>
                    <a class="card-content">
                        <div class="card-body">
                            <p class="tag"></p>
                            <p>${내용}</p>
                            <p class="my-1">${도로명주소}</p>
                            <p>
                                <span class="tag tag-info">${전화번호}</span>
                            </p>
                        </div>
                        <a href="${홈페이지주소}" class="card-link">Link</a>
                        <div class="card-time">
                            <span>${시작일}</span>
                            <span class="vr"></span>
                            <span>${종료일}</span>
                        </div>
                    </div>
                </div>
            `;
        }
    },
    simple: {
        render: (
            {
				축제번호,
                홈페이지주소 = '#',
                축제이름 = 'No Title',
                도로명주소 = 'No Address',
                지번주소 = 'No Address',
                내용,
                시작일,
                종료일,
            }
        )=>{
			let tagLists = [...new Set(내용.replace(replaceRegex, '').split(splitRegex).filter(item=>item!='' && item!=' ' && item!='가' && item!='등' && item!='온' && item!='첫' && item!='즐길' && item!='수' && item!='된' && item!='사' && item!='한').sort())].map(item=>`<span class="tag tag-brand">${item}</span>`);
			let tags = tagLists.splice(0, 10).join(' ');
			let restLists = tagLists.length;
			
            return `
                <div class="card w-flex flex-column justify-content-center align-items-center flex-grow-0 position-relative" style="height: 22rem;background-color: rgba(${parseInt(Math.random()*256)},${parseInt(Math.random()*256)},${parseInt(Math.random()*256)}, .3);">
                	<div class="position-absolute top-0 end-0 mt-2 me-2"><button class="px-2 btn btn-info" fest-id=${축제번호}><i class="far fa-bookmark"></i></button></div>
                    <div class="shape-${parseInt(Math.random()*5)+1} position-absolute top-50 start-50 position-middle" style="height: 14rem; width: 14rem;"></div>
                    <div class="w-flex flex-column justify-content-center align-items-center" style="width:15rem; z-index: 10;">
                        <div class="card-title">${축제이름.replace(/[\&\;a-z]+/gm,'')}</div>
                            <a class="card-content">
                            <div class="card-body">
                                <p class="my-1">${도로명주소!=''?도로명주소:지번주소}</p>
                            </div>
                            <div>
                            	<a href="/fest/detail/${축제번호}" class="tag tag-info text-white">Detail</a>
                            	<a href="${홈페이지주소}" class="tag tag-danger text-white">Link</a>
                            </div>
                            <div>
                            	<span>${시작일}</span> ~ 
                            	<span>${종료일}</span>
                            </div>
                        </div>
                        <div>${tags}${restLists>0?` <span class="tag tag-warning">more ${restLists} tag${restLists==1?'':'s'}</span>`:''}</div>
                    </div>
                </div>
            `;
        }
    }

}

const title = {
    render: page => `With Me${page.split('').insertInto(0, ' - ').join('')}`
};

const pages = {};

const withmeCard = {
    type: (type)=> theme[type],
}

const result = document.getElementById('result');
const select = document.getElementById('select');
const inputText = document.getElementById('inputText');
const date = document.getElementById('date');
const moreBtn = document.getElementById('moreBtn');
const next = document.getElementById('next');

let iss = false;
let page = 0;
let limit = 100;

let thisUrl = (total)=>{
    let totals = 100;
    if(total) totals = parseInt(total);
    return `http://api.data.go.kr/openapi/tn_pubr_public_cltur_fstvl_api?serviceKey=Gt5Gap%2FfosnAgnq2TqWCo8Jz1N8Gz%2ByDLIKAYJ1Yi%2ByBzDaA88sc6y7NLfblGtfhLkN4htmTfErFloQxDoFsxQ%3D%3D&pageNo=0&numOfRows=${totals}&type=xml`;
}
let loading = null;
if(result) {
	loading = result.querySelector('.loadResources').insertAdjacentElement('afterbegin', document.createElement('div'));
	loading.classList.add('text-center');
	loading.innerHTML = `<span><i class="fas fa-spinner fa-spin fa-2x"></i></span>`;
}

let baseDate = new Date();
let loadPeriod = baseDate.getDate();

window.addEventListener('load', () => {
    // loadPeriod%7==0?
    fetchData(thisUrl());
});

function fetchData(url) {
    
    //fetch를 활용한 allOrigins방식 사용
    fetch(`https://api.allorigins.win/raw?url=${encodeURIComponent(url)}`).then(response => {
        if (response.ok) return response.text(); //.json(), .blob()사용가능
        throw new Error('Network response was not ok.');
    }).then((data) => {
        let total = new DOMParser().parseFromString(data, 'application/xml').querySelector('totalCount');
        getDatas(total);
        resultData(data);
    });
    
    function getDatas(total){
        if(iss == false) {
            fetchData(thisUrl(total.textContent));
			iss = true;
        }
    }

    function resultData(data){
        let allData = new DOMParser().parseFromString(data, 'application/xml');
        window.festInfo = new TotalData(allData);
        festInfo.total = parseInt(allData.querySelector('totalCount').textContent);
        loading?loading.parentNode.remove():null;
    }

}

let count = 0;
requestAnimationFrame(requestData);

function requestData(){
    if(window['festInfo']) {
        festInfo.festivals.forEach(item => {
            pages[count] = {}
            Object.keys(item).forEach(name => {
                pages[count][name] = item[name]
            });
            count++;
        });
        Withme.init()
    } else requestAnimationFrame(requestData)
}

function TotalData(all) { // 모든 축제 데이터
    this.festivals = [];
    all.querySelectorAll('item').forEach((item, idx)=>{
        this.festivals.push(new festival(item, idx));
    });
}

function festival(item, idx){
	
    function validate(type){
        let target = item.querySelector(type);
        let content = target?target.textContent:undefined;
        if(target) return content=='없음'?undefined:content;
        else return undefined;
    }
    
    this.축제번호 = idx;
    this.축제이름 = validate('fstvlNm');
    this.축제장소 = validate('opar');
    this.내용 = validate('fstvlCo');
    this.시작일 = validate('fstvlStartDate');
    this.종료일 = validate('fstvlEndDate');
    this.홈페이지주소 = validate('homepageUrl');
    this.도로명주소 = validate('rdnmadr');
    this.지번주소 = validate('lnmadr');
    this.관련정보 = validate('relateInfo');
    this.전화번호 = validate('phoneNumber');
    this.주관기관 = validate('mnnst');
    this.주최기관 = validate('auspcInstt');
    this.후원기관 = validate('suprtInstt');
    this.제공기관코드 = validate('instt_code');
    this.제공기관명 = validate('instt_nm');
    this.위도 = validate('latitude');
    this.경도 = validate('longitude');
    this.데이터기준일자 = validate('referenceDate');
}

function TotalFestivalNum({response}) { // 등록된 축제 데이터의 수
    this.totalFesNum = response.body.totalCount;
}

// function render(fest){
//     result.innerHTML += `<li>
//         <p>축제 이름: ${fest.축제이름}</p>
//         <p>장소: ${fest.축제장소}</p>
//         <p>행사 일시: ${fest.시작일}~${fest.종료일}</p>
//         <p>${fest.내용}</p>
//         <p>전화 번호: ${fest.전화번호}</p>
//         <p><a href="${fest.홈페이지주소}">${fest.홈페이지주소}</a></p>
//         <p>관련 정보: ${fest.관련정보}</p>
//         <p>주소: ${fest.도로명주소}</p>
//         <p>위도: ${fest.위도}</p>
//         <p>경도: ${fest.경도}</p>
//     </li>`;
// }

if(inputText) inputText.addEventListener('keyup', searchHandlar);

window.addEventListener('click', handleRadioSearch);
window.addEventListener('click', handleWithFestSearch);

function handleWithFestSearch(ev){
	let target = ev.target;
	if(target.tagName !== 'INPUT' || target.name !== 'withFestSearch') return;
	if(target.checked) withFestSearch = true;
	else withFestSearch = false;
	console.log(target.checked);
}

function handleRadioSearch(ev){
	const target = ev.target;
	if(!target.attributes['radio-search'])return;
	
	const searchText = target.textContent.trim();
	
	let resultFest = filteredFest.filter(fest=>{
		if(fest.내용.indexOf(searchText)>-1){
			return fest;
		}
	});
	result.innerHTML = '';
	
	resultFest.forEach(fest=>{
    	result.innerHTML += withmeCard.type('simple').render(fest);
	});
	
	console.log(resultFest)
	if(resultFest.length==0){
		result.innerHTML = 
        `<p>일치하는 결과가 없습니다.</p>`;
	}
	
	randomRecommend();
}

function randomRecommend(){
	let random = [];
	for(let i=0; i<3; i++){
		let rand = festInfo.festivals[parseInt(Math.random()*festInfo.festivals.length)];
		if(!random.includes(rand)){			
			random.push(rand);
		} else {
			i--;
		}
	}
	
	document.querySelector('.favorite-local').innerHTML = `${random.map(({도로명주소, 축제이름, 지번주소, 내용})=>{
		return `<span class="tag tag-info fs-8">${지번주소?지번주소.split(' ').shift():도로명주소.split(' ').shift()} - ${축제이름}</span>`;
	}).join(' ')}`;
}

function searchHandlar(ev){
    let value = ev.target.value; // 입력한 검색어
    let keyCode = ev.key; // 키 코드 code -> key

    if(keyCode == 'Enter') { // 검색어 입력 후 enter
        result.innerHTML = '';
        filteredFest = festInfo.festivals.filter((fest)=>fest.축제이름.indexOf(value) != -1 || 
            fest.축제장소.indexOf(value) != -1 ||
            (fest.도로명주소!=undefined && fest.도로명주소.indexOf(value) != -1) ||
            fest.내용.indexOf(value) != -1 ||
            (fest.관련정보!=undefined && fest.관련정보.indexOf(value) != -1));
        
        filteredFest.forEach(fest=>{
        	result.innerHTML += withmeCard.type('simple').render(fest);
		});
		
        if(filteredFest.length == 0) {
			filteredFest = [];
            result.innerHTML = 
            `<p>일치하는 결과가 없습니다.</p>`;
		    document.querySelector('.recommend-categories').innerHTML = '<span class="tag tag-warning">검색된 내용이 없습니다.</span>';
        } else {
			let removeDup = [];
			
			filteredFest.forEach(fest=>{
				removeDup.push(...fest.내용.replace(replaceRegex, '').split(splitRegex).filter(item=>item!='' && item!=' ' && item!='가' && item!='등' && item!='온' && item!='첫' && item!='즐길' && item!='수' && item!='된' && item!='사' && item!='한'));
			});
			
			document.querySelector('.recommend-categories').innerHTML = [...new Set(removeDup.sort())].map(s=>`<span class="tag tag-brand" radio-search="${s}">${s}</span>`).join(' ');
		}
    }
    
    randomRecommend();
}

let year = document.getElementById('year');
let month = document.getElementById('month');
let day = document.getElementById('day');

// 처음에 같은 배열로 시작해서 같은 변수를 받아 단계적으로 거르기
year?year.addEventListener('change', yearHandlar):null;
month?month.addEventListener('change', yearHandlar):null;
day?day.addEventListener('change', yearHandlar):null;

function yearHandlar(ev){
    let yvalue = year.value
    let mvalue = month.value
    let dvalue = day.value
    result.innerHTML = '';

    let festStartYear = (year)=>parseInt(year.시작일.split('-').shift());
    let festEndYear = (year)=>parseInt(year.종료일.split('-').shift());
    let festStartMonth = (month)=>parseInt(month.시작일.split('-')[1]);
    let festEndMonth = (month)=>parseInt(month.종료일.split('-')[1]);
    let festStartDay = (day)=>parseInt(day.시작일.split('-').pop());
    let festEndDay = (day)=>parseInt(day.종료일.split('-').pop());
    
    let resultFest = null;
    
    if(!withFestSearch) filteredFest = festInfo.festivals;
    else filteredFest = filteredFest.length==0?festInfo.festivals:filteredFest;

    resultFest = 
    filteredFest
    .filter(year=>festStartYear(year)<=parseInt(yvalue)&&festEndYear(year)>=parseInt(yvalue))
    .filter(month=>festStartMonth(month)<=parseInt(mvalue)+1&&festEndMonth(month)>=parseInt(mvalue)+1)
    .filter(day=>festStartDay(day)<=parseInt(dvalue)&&festEndDay(day)>=parseInt(dvalue));

	let removeDup = [];
			
	resultFest.forEach(fest=>{
		removeDup.push(...fest.내용.replace(replaceRegex, '').split(splitRegex).filter(item=>item!='' && item!=' ' && item!='가' && item!='등' && item!='온' && item!='첫' && item!='즐길' && item!='수' && item!='된' && item!='사' && item!='한'));
	});
	
	document.querySelector('.recommend-categories').innerHTML = [...new Set(removeDup.sort())].map(s=>`<span class="tag tag-brand" radio-search="${s}">${s}</span>`).join(' ');
	
	resultFest.length==0?document.querySelector('.recommend-categories').innerHTML = '<span class="tag tag-warning">검색된 내용이 없습니다.</span>':null;
	
    resultFest.length==0?result.innerHTML = 
    `<p>일치하는 결과가 없습니다.</p>`:resultFest.forEach(fest=> result.innerHTML += withmeCard.type('simple').render(fest));
    
    randomRecommend();
}