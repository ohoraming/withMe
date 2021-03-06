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
                console.log(lastDate.getDate())
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

            year.insertAdjacentHTML('beforeend', `${years.map(y=>`<option value="${y}">${y} ???</option>`).join('')}`);

            month.insertAdjacentHTML('beforeend', `${months.map(y=>`<option value="${y}">${y+1} ???</option>`).join('')}`);

            day.insertAdjacentHTML('beforeend', `${days.map(y=>`<option value="${y}">${y} ???</option>`).join('')}`);

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