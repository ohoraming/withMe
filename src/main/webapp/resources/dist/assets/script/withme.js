'use strict';

const Withme = (function () {
    function Controller() {
        let models = null;
        let box = {};

        this.init = function (model) {
            models = model;

            this.connectWithmeComponents();
            this.validBox();
            this.createContents();

            window.addEventListener('change', this.dateHandler);
            window.addEventListener('click', this.addScrap);
        }
        
        this.addScrap = function(ev){
			let target = ev.target;
			if(target.tagName !== 'BUTTON' || !target.getAttribute('fest-id'))return;
			models.addScrap(target);
		}

        this.dateHandler = function (ev) {
            let target = ev.target;
            if (target.id !== 'year' && target.id !== 'month' && target.id !== 'day') return;
            models.dateHandler(target);
        }

        this.connectWithmeComponents = function () {
            box['card-group'] = document.querySelector('.card-group');
        }

        this.validBox = function () {
            for (let inner in box) {
                if (!box[inner]) delete box[inner];
            }
        }

        this.createContents = function () {
            models.createContents(box);
        }
    }

    function Model() {
        let views = null;

        this.init = function (view) {
            views = view;
        }
        
        this.addScrap = function(target){
			const id = target.getAttribute('fest-id');
			fetch('/api/type/scrap/'+id)
			.then(response=>response.json())
			.then(data=>{
//				console.log(data);
			});
			target.classList.toggle('pick');
			if(target.classList.contains('pick')){
				target.innerHTML = '<i class="fas fa-bookmark text-danger"></i>';
			} else {
				target.innerHTML = '<i class="far fa-bookmark"></i>';				
			}
		}

        this.createContents = function (box) {
            views.createContents(box);
        }

        this.dateHandler = function (type) {
            views.updateDate(type.id);
        }
    }

    function View() {
        let nodes = null;
        let cardWrap = null;
        let year = document.getElementById('year');
        let month = document.getElementById('month');
        let day = document.getElementById('day');

        this.init = function (component) {
            nodes = component;

            year?this.settingDates():null;
        }

        this.updateDate = function (type) {
            if (type != 'day') {
                let lastDate = new Date(year.value, parseInt(month.value) + 1, 0);
                day.innerHTML = '';
                for(let i=0; i<lastDate.getDate(); i++){
					day.innerHTML += `<option value="${i+1}">${i+1}</option>`;
				}
            }
        }

        this.settingDates = function () {
            let years = [];
            let months = [];
            let days = [];

            for (let i = 1970; i < 2099; i++) {
                years.push(i);
            }
            for (let i = 0; i < 12; i++) {
                months.push(i);
            }
            for (let i = 1; i <= new Date(year.value, month.value + 1, 0).getDate(); i++) {
                days.push(i);
            }

            year.insertAdjacentHTML('beforeend', `${years.map(y=>`<option value="${y}">${y} 년</option>`).join('')}`);

            month.insertAdjacentHTML('beforeend', `${months.map(y=>`<option value="${y}">${y+1} 월</option>`).join('')}`);

            day.insertAdjacentHTML('beforeend', `${days.map(y=>`<option value="${y}">${y} 일</option>`).join('')}`);

            year.value = new Date().getFullYear();
            month.value = new Date().getMonth();
            day.value = new Date().getDate();
        }

        this.createContents = function (box) {
            this.createTitle();
            this.createContainer(box);
            if(cardWrap) this.addNodes();
        }

        this.createTitle = function () {
            document.title = nodes.title.render('Home');
        }

        this.createContainer = function (box) {
            cardWrap = box['card-group'];
        }

        this.addNodes = function () {
            for (let key in nodes.pages) {
                cardWrap.insertAdjacentHTML('beforeend', nodes.card.render(
                    nodes.pages[key]
                ));
            }
            
            document.querySelector('.recommend-categories').innerHTML = `<span class="tag tag-warning">지역을 선택하시면 선택지가 나옵니다.</span>`;
        }
    }

    return {
        init: function () {
            const components = {
                title,
                pages,
                card: withmeCard.type('simple'),
            }

            const view = new View();
            const model = new Model();
            const controller = new Controller();

            view.init(components);
            model.init(view);
            controller.init(model);
        }
    }
})();

// Withme.init();