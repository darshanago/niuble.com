$.ajaxSetup({
    contentType: "application/json; charset=utf-8"
});

var Employee = Backbone.Model.extend({  
    validate: function(attrs){  
        for(var key in attrs){  
            switch(key){
                case 'chinese':
                case 'password':
                    if( ! attrs[key] )
                        return '密码不能为空';
            }
        }  
    }  
});

var EmployeeList = Backbone.Collection.extend({  
    model: Employee,
    url: '/api/employee'
});  

var EmployeeView = Backbone.View.extend({  
    tagName: 'li',  
    template: _.template('<span class="chinese"><%=chinese%></span> <span class="english"><%=english%></span> <span class="password"><%=password%></span> <a class="checkbox<%=options.noon?\' checked\':\'\'%> noon">午</a> <a class="checkbox<%=options.dinner?\' checked\':\'\'%> dinner">晚</a>'),
    events: {  
        "dblclick span:not(.checkbox)" : 'edit',
        "keypress input.edit" : 'update',
        "blur input" : 'update',
        "click a.checkbox" : 'toggle'
    },  
    initialize: function(){  
        this.model.bind('change', this.render, this);  
        this.model.bind('destroy', this.remove, this);  
    },
    render: function(){
        var data = this.model.toJSON();
        data['options'] = JSON.parse(data['options']);
        this.$el.html(this.template(data));
        return this;
    },
    move: function(){
    },
    edit: function(e){
        var el = $(e.target);
        el.html('<input type="input" name="'+el.attr('class')+'" id="'+el.attr('class')+'" value="'+el.text()+'">');
        el.find('input').focus();
    },
    update: function(e){
        var el = $(e.target);
        var value = el.val();
        if (!value) this.clear();
        var name = el.attr('name');
        this.model.save(JSON.parse('{"'+name+'":"'+value+'"}'));
        el.html(value);
    },
    toggle: function(){
    }
});  

var Employees = new EmployeeList();
var AppView = Backbone.View.extend({  
    el: $("#mainLayout"),
    events: {  
        "click #employee_generate" : "employe",
        "keypress #user_generator input" : "employeByEnter"
    },  

    initialize: function() {  
        this.user_generator = this.$('#user_generator');
        this.chinese = this.$('#chinese');
        this.english = this.$('#english');
        this.password = this.$('#password');
        this.noon = this.$('#noon');
        this.dinner = this.$('#dinner');

        Employees.bind('add', this.add, this);
        Employees.bind('reset', this.refresh, this);
        //Employees.bind('all', this.add, this);
        
        this.render();
        Employees.fetch();  
    },

    render: function(){
        this.chinese.val('');
        this.english.val('');
        this.password.val('');
        //this.noon.addClass('checked');
        //this.dinner.addClass('checked');
        return this;
    },

    employe: function(e) {  
        var data = {
            chinese: this.chinese.val(),
            english: this.english.val(),
            password: this.password.val(),
            options: JSON.stringify({
                noon: this.noon.is('.checked'),
                dinner: this.dinner.is('.checked')
            })
        }
        var result = Employees.create(data);
        if(result){
            this.render();
        }
    },

    employeByEnter: function (e){
        if (e.keyCode == 13) this.employe();
    },

    add: function( model ){
        var view = new EmployeeView({model: model});
        $(this.user_generator).before(view.render().el);
    },

    refresh: function (){
        Employees.each(this.add);
    }

}); 

var App = new AppView();

$('#user_generator .checkbox:not(#employee_generate)').live('click', function(){
    $(this).toggleClass('checked');
});
