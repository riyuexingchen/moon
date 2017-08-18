/**
 * Created by Administrator on 2017/8/13.
 */
//功能点一:异步加载页头与页尾
$(function(){
    //功能点二:完成登录功能 login.js
    $("#header").load("data/header.php",function(){
        //读取本地数据
        var uname=sessionStorage.getItem("loginUname");
        var uid=sessionStorage.getItem("loginUid");

        if(uname!=null){
            $("a.hrgi").attr("href","javascript:;").html("您好，欢迎"+uname);
            $("a.hlgi").attr("href","#").html("注销");
            //实现注销
            $(".hlgi").on("click",function(){
                sessionStorage.clear();
                $(".hrgi").html("用户登录");
                $(".hlgi").html("注册");
                location.reload();
            })
        }
    });
    $("#footer").load("data/footer.php");
});