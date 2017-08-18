/**
 * Created by Administrator on 2017/8/10.
 */
$(function(){
    //用户登录功能
    var a=0;
    $("#uname").blur(function(){
        var unamereg=/^[a-z0-9]{6,12}$/i;
        console.log($("#uname").val());
        if(!unamereg.test($("#uname").val())){
            $(".unamex").html("用户名格式不正确请重填")
                .prev().attr('src','imgs/err.png');
            a--;
        }else {
            $(".unamex").html("")
                .prev().attr('src','imgs/ok.png');
            a++;
        }
    });
    $("#upwd").blur(function(){
        var upwdreg=/^[a-z0-9]{6,12}$/i;
        if(!upwdreg.test($("#upwd").val())){
            $(".upwdx").html("密码格式不正确请重填")
                .prev().attr('src','imgs/err.png');
            a--;
        }else{
            $(".upwdx").html("")
                .prev().attr('src','imgs/ok.png');
            a++;
        }
    });
    $("#bt-login").click(function(){
        var u=$("#uname").val();
        var p=$("#upwd").val();
        if(a==2) {
            $.ajax({
                type: 'POST',
                url: 'data/login.php',
                data: {uname: u, upwd: p},
                success: function (data) {
                    var rs = parseInt(data.code);
                    if (rs < 0) {
                        alert("用户名或密码有误");
                    } else {
                        //保存到本地数据
                        sessionStorage.setItem("loginUname", u);
                        sessionStorage.setItem("loginUid", data.uid);
                        console.log(123);
                        location.href = "gw.html";
                    }
                },
                error: function () {
                    alert("响应消息有误！请检查网络");
                }
            })
        }
    })
});