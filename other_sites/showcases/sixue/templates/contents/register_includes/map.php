    <div class="mapContainer">
    </div>
    <script type="text/javascript">
        /**
         *
         * 所有坐标单位为像素， 数组中前者为left，后者为top
         *
         **/
        $(document).ready(function(){
            $('.mapContainer').HCMap({
                a:{
                    3:[7,8,9,10,11],
                    4:[6,5,4,9],
                    5:[5,6,7,8,11],
                    6:[4,2],
                    7:[4,1]
                    },
                b:{
                    6:[5,3],
                    7:[5,2],
                    8:[4,8]
                    },
                c:{
                    5:[14,21],
                }
            });
        });
        
    </script>
