$.fn.extend({
    unescaped_html : function(){
        return this.html().unescape();
    }
});
String.prototype.unescape = function(){
    return this.replace(/&#39;/g, '\'')
        .replace(/&quot;/g, '"')
        .replace(/&gt;/g, '>')
        .replace(/&lt;/g, '<')
        .replace(/&amp;/g, '&');
}

$.ajaxSetup({
    contentType: "application/json; charset=utf-8"
});

var Employee = Backbone.Model.extend({  
    validate: function(attrs){  
        for(var key in attrs){  
            switch(key){
                case 'chinese':
                case 'mobile':
                    if( ! attrs[key] )
                        return '手机号不能为空';
            }
        }  
    },
    toggle: function( name ){
        var options = JSON.parse(this.get('options'));
        eval('options.'+name+' = !options.'+name);
        this.save( {options: JSON.stringify(options)} );
    }
});

var EmployeeList = Backbone.Collection.extend({  
    model: Employee,
    url: '/api/employee'
});  

var EmployeeView = Backbone.View.extend({  
    tagName: 'li',  
    template: _.template($('#employeeNode').unescaped_html()),
    events: {  
        "dblclick span:not(.checkbox)" : 'edit',
        "keypress input" : 'update',
        "blur input" : 'update',
        "click a.checkbox" : 'toggle',
        "click a.remove" : 'remove'
    },  
    initialize: function(){  
        this.model.bind('change', this.render, this);  
        this.model.bind('destroy', this.clear, this);  
    },
    render: function(){
        var data = this.model.toJSON();
        data['options'] = JSON.parse(data['options']);
        this.$el.html(this.template(data));
        return this;
    },
    clear: function(){
        this.$el.remove();
    },
    edit: function(e){
        var el = $(e.target);
        el.html('<input type="input" name="'+el.attr('class')+'" id="'+el.attr('class')+'" value="'+el.text()+'">');
        el.find('input').focus();
    },
    update: function(e){
        var key = e.which || e.keyCode;
        if(key && key!=13){
            return;
        }
        var el = e.target;
        var value = el.value;
        var name = el.id;
        this.model.save(JSON.parse('{"'+name+'":"'+value+'"}'));
        $(el).html(value);
    },
    toggle: function(e){
        var classes = e.target.className;
        if(classes.match(/noon/i)){
            this.model.toggle('noon');
        }else if(classes.match(/dinner/i)){
            this.model.toggle('dinner');
        }
    },
    remove: function(){
        if(confirm('真的要删除这个人吗？')){
            this.model.destroy();
        }
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
        this.mobile = this.$('#mobile');
        this.department = this.$('#department');
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
        this.mobile.val('');
        this.department.val('');
        //this.noon.addClass('checked');
        //this.dinner.addClass('checked');
        return this;
    },

    employe: function(e) {  
        var data = {
            chinese: this.chinese.val(),
            english: this.english.val(),
            mobile: this.mobile.val(),
            department: this.department.val(),
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

