//功能点三:完成图文加载功能
//事件盒子3:轮播图
$(function(){
    //广告图片数组
    //显示文字和图片
    var $ulCon=$(".rotate_content"),
        LIWIDTH=312,
        $ulNum=$(".rotate_number"),
        moved=0,
        interval=500,
        WAIT=3000+interval,
        timer=null;
    var str="",strNum="";

    //3.1：轮播图
    $.ajax({
        type:'GET',
        url:'data/gx.php',
        success:function(data){
            var navbarPhoto=data.navbarPhoto;
            var levelGift=data.levelGift;
            var lineList=data.lineList;
            var giftlistOne=data.giftlistOne;
            var giftlistTwo=data.giftlistTwo;
            var gifttable=data.gifttable;
            var sevUnits=data.sevUnits;

            //1:填充轮播图条目
            for(var i=0;i<navbarPhoto.length;i++){
                var obj=navbarPhoto[i];
                str+=`<li><img src="${obj.img}" alt="${obj.title}"/></li>`;
                strNum+=`<li></li>`;
            }
            str+=`<li><img src="${navbarPhoto[0].img}" alt=""/></li>`;
            $ulCon.append(str)
                .css("width",(navbarPhoto.length+1)*LIWIDTH);
            $ulNum.append(strNum)
                .children().first().addClass("hover");

            //2:中一等级突破礼盒
            var html="";
            for(var i=0;i<levelGift.length;i++){
                var obj=levelGift[i];
                html+=`
                    <li class="ls">
                        <div class="glist">
                            <table><tbody>
                                ${obj.ldetail}
                            </tbody></table>
                        </div>
                    </li>
                `;
            }
            $(".levelgift").html(html);

            //#中二 lineList
            var mdltwo="";
            for(var i=0;i<lineList.length;i++){
                var obj=lineList[i];
                mdltwo+=`
                    <li class="ls"><b>${obj.eone}</b><em>${obj.etwo}</em><em>${obj.ethree}</em><em>${obj.efour}</em><em class="money">${obj.efive}</em><em>${obj.esix}</em></li>
                `;
            }
            $(".linelist").html(mdltwo);
            //01中三等级突破礼*8 giftlistOne
            var mdlthreeleft="";
            for(var i=0;i<giftlistOne.length;i++){
                var obj=giftlistOne[i];
                mdlthreeleft+=`
                    <tr>
                        <td>${obj.tdone}</td>
                        <td>${obj.tdtwo}</td>
                        <td>${obj.tdthree}</td>
                        <td>${obj.tdfour}</td>
                        <td>${obj.tdfive}</td>
                    </tr>
                `;
            }
            $(".innerleft ").html(mdlthreeleft);

            var mdlthreeright="";
            for(var i=0;i<giftlistTwo.length;i++){
                var obj=giftlistTwo[i];
                mdlthreeright+=`
                   <tr>
                          <td>${obj.tdone}</td>
                          <td>${obj.tdtwo}</td>
                          <td>${obj.tdthree}</td>
                          <td>${obj.tdfour}</td>
                          <td>${obj.tdfive}</td>
                          <td>${obj.tdsix}</td>
                   </tr>
                `;
            }
            $(".innerright").html(mdlthreeright);
            //01中四等级突破礼*8 gifttable
            var mdlfourleft="";
            var mdlfourright="";
            for(var i=0;i<gifttable.length-10;i++){
                var obj=gifttable[i];
                mdlfourleft+=`
                   <tr>
                          <td>${obj.tdone}</td>
                          <td>${obj.tdtwo}</td>
                          <td>${obj.tdthree}</td>
                   </tr>
                `;
            }
            for(var i=10;i<gifttable.length;i++){
                var obj=gifttable[i];
                mdlfourright+=`
                   <tr>
                          <td>${obj.tdone}</td>
                          <td>${obj.tdtwo}</td>
                          <td>${obj.tdthree}</td>
                   </tr>
                `;
            }
            $(".mdlfourleft").html(mdlfourleft);
            $(".mdlfourright").html(mdlfourright);

            //3:八荒门派
            var unit="";
            var ufd=$(".unit .unit_ufd");
            for(var i=0;i<sevUnits.length;i++){
                var obj=sevUnits[i];
                unit=`
                    <h3>
                        ${obj.shead}
                        <em class="pa spr-2 tag"></em>
                    </h3>
                    <p class="mp-tw">${obj.sshot}</p>
                    <p class="mp-yw">${obj.slong}</p>
                    <p class="mp-level">
                                <b>操作难度</b>
                                <i class="has"></i>
                                <i class="has"></i>
                                <i class="has"></i>
                                <i class="nos"></i>
                                <i class="nos"></i>
                            </p>
                            <p class="more">
                                <a class="morer" href="#" target="_blank">查看更多<i>+</i></a>
                            </p>
                            <div class="mp-role"></div>
                `;
                $(ufd[i]).html(unit);
            }

}
})

//启动周期性定时器
    function play(){
        timer=setInterval(()=>{
            moved++;
            $ulCon.animate({
                left:-moved*LIWIDTH
            },interval,()=>{
                if(moved==4){
                    moved=0;
                    $ulCon.css("left",0);
                }
                //将$ulNum下第moved个li设为hover
                $ulNum.children(":eq("+moved+")")
                    .addClass("hover")
                    .siblings().removeClass("hover");
            })
        },WAIT);
    }
    play();
    //当鼠标进入bnsbox时
    $(".bnsbox").hover(
        ()=>{
            clearInterval(timer);
            timer=null;
        },
        ()=>play()
    );
    ////$ulNum单击绑定事件
    $ulNum.on("click","li",e=>{
        var $tar=$(e.target);
        moved=$tar.index();
        $ulCon.stop(true).animate({
            left:-moved*LIWIDTH
        },interval,()=>{
            $tar.addClass("hover")
                .siblings().removeClass("hover");
        })
    })
});

//**手风琴//<!--div.container>ul.units> li.unit-info shendao> div.unit sdt 、>div.cotpart-->
//div.cotpart>h3,p*4,div
$(function(){
    $(".units li").each(function(){
        var fd=$(this).find(".unit_fd");
        if(fd.is(":hidden")){
            //若折叠，width改为560
            $(this).width(560);
        }else{
            $(this).width(63);
        }
    });
    $(".units li").click(function(){
        //var li_index=$(this).index();
        //若li为this对象:
        $(this).animate({width:560},200);
        $(this).find(".unit_ufd").show();
        $(this).find(".unit_fd").hide();
        //若li不是当前this对象:
        $(this).siblings().animate({width:63},200);
        $(this).siblings().find(".unit_ufd").hide();
        $(this).siblings().find(".unit_fd").show();
    });
})

//**电梯导航条
$(()=>{
    var $lis=$(".affix>ul>.blk"),//441
        $hs=$("#wrapper .elvt");
    //console.log("$h2="+$hs);//$h2=[object Object]
    //1：为每个li绑定鼠标点击事件
    $lis.click(function(){
        var $li=$(this);
        console.log("$li.index()="+$li.index());//返回这个元素在同辈中的索引位置 0 1 2
        var $h=$($hs.get($li.index()-2));
        //2：当前h2元素到顶部的距离
        var offsetTop=$h.offset().top;
        //3:需要滚动的高度
        var scrollTop=offsetTop-innerHeight/2;
        //4：用动画实现页面滚动
        $("body").animate({
            scrollTop:scrollTop+250
        },200);
    })
    //返回顶部
    $(".totp").click(function(){
        $("body").animate({
            scrollTop:innerHeight-800
        },200)
    })
});
//head>.hvideo视频播放模态框
$(".hvideo").click(function(){
    $(".masklayer").show();
    $(".layerdt").show();
    $(".exitlayer").click(function(){
        $(".masklayer").hide();
        $(".layerdt").hide();
    });
});

//下载客户端模态框
$(".spr-dwn").click(function(){ovl();return;});
$(".downNav .dndlbut").click(function(){ovl();return;});
//事件盒子：2
$(".eventsbox .boxes:odd").click(function(){ovl();return;});

function ovl(){
    $(".overlay").show();
    $("#eventlayer").show();
    //中1显示
    $(".tabs a").click(function(){
        $(this).addClass("cur").siblings().removeClass("cur");
        var $place=$(this).index();//索引位置数
        var mtabt=$(".tabc .tabt").get($place);
        $(mtabt).show();
        $(mtabt).siblings().hide();
    });
    //退出
    $(".exitlayer").click(function(){
        $(".overlay").hide();
        $("#eventlayer").hide();
    });
}
//事件盒子1:点击页面出现模态框
$(".eventsbox .boxes:first").click(function(){
    $(".overlay").show();
    $("#giftlayer").show();
    //退出
    $(".exitlayer").click(function(){
        $(".overlay").hide();
        $("#giftlayer").hide();
    });
    //给标题绑定点击事件
    $(".tabs a").click(function(){

        //当前标题点亮，其余熄灭
        $(this).addClass("cur").siblings().removeClass("cur");

        //获取索引位置数//0 1 2 3
        var $place=$(this).index();
        //取得第$place个匹配的元素
        //console.log($($(".tabc .tabt").get($place+2)));
        $($(".tabc .tabt").get($place+2)).show()
            .siblings().hide();

        if($place==0){
            $(".levelgift .ls").hover(
                function(){
                    $(this).children(".glist").show();
                },
                function(){
                    $(this).children(".glist").hide();
                }
            );
        }
    });
});
