/**
 *
 * 注意： 此算法以的逐行扫描的方式划定区域，从最顶端开始优先连接最外侧的点，被圈在内的点将会被忽略。
 *
 * */
(function( $, undefined ) {

jQuery.HCMap = {
    width: 920,
    height: 400,
    unit_w: 36, // 矩形边长
    unit_h: 42, // 矩形边长
    unit_fix_x: 18, // 中线
    unit_fix_y: 9, // 蜂窝上角高度
    center_fix: 15, // 垂直中点
    real_height: 30, // 垂直中点
    cityMatrix: [],
    canvas: '',
    HTML: {
        rowOpen: '<div class="hcRow clearfix">',
        rowEvenOpen: '<div class="hcEvenRow clearfix">',
        rowClose: '</div>',
        unitOpen: '<div class="hcUnit hc_',
        unitClose: '"></div>'
    },

    setCanvas: function(el){//设置画布大小
        this.width = el.css('width');
        this.height = el.css('height');
    },

    setHoneycomb: function(el){//设置蜂窝大小
        this.unit_w = el.css('width');
        this.unit_h = el.css('height');
        this.unit_fix_x = this.unit/2;
        this.unit_fix_y = this.unit/4;
        this.center_fix = (this.unit - this.unit_fix_y)/2;
        this.real_height = this.unit - this.unit_fix_y;
    },

    init: function( city, el ){
        // 初始化所有蜂窝单位
        var unit_real_height = this.unit_h - this.unit_fix_y;
        for(var i=1; i <= this.height/unit_real_height+1; i++){
            if( i%2 == 0 ){
                this.canvas += this.HTML.rowEvenOpen;
                for(var j=0; j <= this.width/this.unit_w+1; j++){
                    this.canvas += this.HTML.unitOpen + i + '_' + j + this.HTML.unitClose;
                }
            }else{
                this.canvas += this.HTML.rowOpen;
                for(var j=1; j <= this.width/this.unit_w+2; j++){
                    this.canvas += this.HTML.unitOpen + i + '_' + j + this.HTML.unitClose;
                }
            }
            this.canvas += this.HTML.rowClose;
        }

        this.canvas = $(this.canvas);

        this.setCity( city );

        this.render();

        this.setListener();
    },

    render: function (el){
        if(typeof el == 'undefined'){
            return false;
        }else if(typeof el == 'string'){
            el = $(el);
        }
        el.append(this.canvas);
    },

    setCity: function( city ){//
        var map = this;
        $.each(city, function( title, area){
            map.setArea( title, area );
        });
        return true;
    },

    setArea: function( title, area ){
        var map = this;
        $.each(area, function( num, row ){
            $.each(row, function( key, rank ){
                map.canvas.find('.hc_'+num+'_'+rank).addClass('hcArea hcArea_'+title);
                map.canvas.find('.hc_'+num+'_'+rank).attr({ hcArea : title });
            });
        });
        return true;
    },

    setListener: function(){
        $('.hcArea').live('mouseover', function(){
            $('.hcArea_'+$(this).attr('hcArea')).addClass('hoveractive');
        });
        $('.hcArea').live('mouseout', function(){
            $('.hcArea_'+$(this).attr('hcArea')).removeClass('hoveractive');
        });
        $('.hcArea').live('click', function(){
            if($(this).is('.active')){
                $('.hcArea_'+$(this).attr('hcArea')).removeClass('active');
                $('.hcArea_'+$(this).attr('hcArea')).removeClass('hoveractive');
            }else{
                $('.hcArea_'+$(this).attr('hcArea')).addClass('active');
            }
        });
    }

}

$.fn.HCMap = function( city ){
    $.HCMap.init( city );
    this.append($.HCMap.canvas);
}

})( jQuery );
