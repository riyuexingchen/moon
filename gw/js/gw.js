(function(){
    //1)实现切换二维码
    $("dl.ewmarea dt").on("click",function(){
        $(this).siblings().removeClass("cur");
        $(this).addClass("cur");
        $(this).next().addClass("cur");
    });


    //2)实现轮播图
    var imgs1=[],tabs1=[];
    var imgs2=[],tabs2=[];
    var LIWIDTH=799,moved=0,interval=500,
        WAIT=3000+interval,timer=null;
    var str="", strNum="";

    $.ajax({
        type:"GET",
        url:"data/gw.php",
        success:function(data){
            var rotatephoto=data.rotatePhoto;
            var newsbox=data.newsBox;
            var mediabox=data.mediaBox;
            var strategybox=data.strategyBox;

            //2）轮播图
            for(var i=0;i<rotatephoto.length-7;i++){
                var obj=rotatephoto[i];
                imgs1[i]=obj.img;
                tabs1[i]=obj.title;
            }
            for(var i=7;i<rotatephoto.length;i++){
                var obj=rotatephoto[i];
                imgs2[i-7]=obj.img;
                tabs2[i-7]=obj.title;
            }
            rotate(imgs1,tabs1);
            //3）newsbox新闻盒子
            var sub_newsbox=[];
            var news="";
            for(var j=0;j<4;j++){
                sub_newsbox[j]=newsbox.slice(j*8,j*8+8);

                news+=`<ul class="newslists">`;
                for(var lis of sub_newsbox[j]){
                    news+=`
          <li class="n1i">
              <a href="javascript:;" class="cltag"><i>${lis.nhead}</i></a>
              <a href="javascript:;" class="cltit">
                  ${lis.nbody}</a>
              <span class="cltime">${lis.ndate}</span>
          </li>

                `;
                }
                news+=`</ul>`;
            }
            $("#newslist").html(news);

            //4)媒体//5)攻略
            var sub_mediabox=[],sub_strategybox=[];
            var medias="",strategy="";
            for(var j=0;j<4;j++){
                sub_mediabox[j]=mediabox.slice(j*8,j*8+8);
                sub_strategybox[j]=strategybox.slice(j*8,j*8+8);

                medias+=`<ul class="nul">`;
                strategy+=`<ul class="nul">`;
                for(var lis of sub_mediabox[j]){
                    medias+=`
       <li class="nli">
            <a href="javascript:;" class="cltit">${lis.nbody}</a>
            <span class="cltime">${lis.ndate}</span>
       </li>

                `;
                }
                medias+=`</ul>`;
                for(var lis of sub_strategybox[j]){
                    strategy+=`
       <li class="nli">
            <a href="javascript:;" class="cltit">${lis.nbody}</a>
            <span class="cltime">${lis.ndate}</span>
       </li>

                `;
                }
                strategy+=`</ul>`;
            }
            $("#mediabox").html(medias);
            $("#strategybox").html(strategy);
        }
    });

    //0:拼接子元素内容
    function rotate(imgs,tabs) {
        //创建li图片，添加到ul上
        for (var src of imgs) {
            str += `
               <li><a href="">
               <img src="imgs/${src}" alt=""/>
               </a></li>
               `;
        }
        for (var tab of tabs) {
            strNum += `
            <li>${tab}</li>
            `
        }
        str += `
        <li><a href="">
            <img src="imgs/${imgs[0]}" alt="${tabs[0]}"/>
        </a></li>
        `;
        $(".rotate").append(str).css("width", (imgs.length + 1) * LIWIDTH);
        $(".numbox").append(strNum).children().first().addClass("cur");
        str="";strNum="";
    }
    //页面加载完就有图片？？？？？？
    //window.onload=function(){
    //    //$(".rotate li").remove();
    //    //$(".numbox li").remove();
    //    rotate(imgs1,tabs1);
    //    console.log(1);
    //}
    //1：点击官网标签
    $(".cates a:first").click((e)=>{
        $(".rotate li").remove();
        $(".numbox li").remove();
        //点亮当前角标
        $(e.target).addClass("cur").siblings().removeClass("cur");
        e.preventDefault();
        rotate(imgs1,tabs1);
    });
    //2：点击合作标签
    $(".cates a:last").click((e)=>{
        $(".rotate li").remove();
        $(".numbox li").remove();
        //点亮当前角标
        $(e.target).addClass("cur").siblings().removeClass("cur");
        e.preventDefault();
        //console.log(imgs2);
        rotate(imgs2,tabs2);
    });


    //3：实现定时器切换图片
    play();
    function play() {
        timer = setInterval(()=> {
            moved++;
            $(".rotate").animate({
                left: -moved * LIWIDTH
            }, interval, ()=> {
                if (moved == 7) {
                    moved = 0;
                    $(".rotate").css("left", 0);
                }
                $(".numbox").children(":eq(" + moved + ")")
                    .addClass("cur")
                    .siblings().removeClass("cur");
            })
        }, WAIT);
    }
    //当鼠标进入.rotate时
    $(".rotate").hover(()=>{
            clearInterval(timer);
            timer=null;
        },()=>play()
    );

    //4：$(".numbox")单击绑定事件
    $(".numbox").on("click","li",e=>{
        var $tar=$(e.target);
        moved=$tar.index();
        $(".rotate").stop(true).animate({
            left: -moved * LIWIDTH
        },interval,()=>{
            $tar.addClass("cur")
                .siblings().removeClass("cur");
        })
    })


    //3)实现新闻标题和内容同步切换  冒泡
    $(".hotnews .newsbox .tabpart").on('click',".tabs li>a",function(){
        $(this).addClass("cur").parent().siblings().children().removeClass("cur");
        var $place=$(this).parent().index();//获取索引数组位置 0-4
        $(".listpart>.listbox").animate({
            left:-353*$place
        },200);
    })
    ////4)实现媒体，攻略
    $(".outwide .newsbox .tabpart").on('click',".tabs li>a",function(){
        $(this).addClass("cur").parent().siblings().children().removeClass("cur");
        var $place=$(this).parent().index();//获取索引数组位置 0-4
        $(".outwide .listbox").animate({
            left:-319*$place
        },200);
    });
    //攻略
    $(".strategy .newsbox .tabpart").on('click',".tabs li>a",function(){
        $(this).addClass("cur").parent().siblings().children().removeClass("cur");
        var $place=$(this).parent().index();//获取索引数组位置 0-4
        $(".strategy .listbox").animate({
            left:-319*$place
        },200);
    });


    //左右同时翻页
    $(".ulgtabs li a").click(function(){
        //标题被点亮状态
        $(this).addClass("cur")
            .parent().siblings().children().removeClass("cur");
        //内容栏切换
        var $role=$(".cotpart .mp-role");
        var place=$(this).parent().index()*2;
        var divs=$(".cotpart>div");

        $(divs.get(place)).css("right","0").next().css("left","0");

        for(var i=0;i<$role.length;i++){
            if($($role[i]).index()!==place){
                $($role[i]).css("right","-170px")
                    .next().css("left","-165px");
            }
        }
    })
    //横向手风琴
    $(".quanzi .qzother .qztt").click(function(){
        var tWdh=$(this).parent().attr("left");
        console.log(tWdh);
        $(this).parent().parent().css("width","800px");
        $(this).next().css("width","")
    })

})();