//用户注册
//1:验证用户名是否已存在
//uname.onblur=function(){
//    var u=this.value;
//    $.ajax({
//        url:"/existsuname",
//
//    })
//
//}
$(function(){
        var a=0;
        //验证用户名和密码
        $("#uname") .blur(function(){
            var unamereg=/^[a-z0-9]{6,12}$/i;
            if(!unamereg.test($("#uname").val())){
                $("#unamex").html("用户名格式不正确请重填")
                    .prev().attr('src','imgs/err.png');
            }else {
                $("#unamex").html("")
                    .prev().attr('src','imgs/ok.png');
                a++;
            }
        });
        $("#upwd").blur(function(){
            var upwdreg=/^[a-z0-9]{6,12}$/i;
            if(!upwdreg.test($("#upwd").val())){
                $(".upwdx").html("密码格式不正确请重填")
                    .prev().attr('src','imgs/err.png');
            }else{
                $(".upwdx").html("")
                    .prev().attr('src','imgs/ok.png');
                a++;
            }
        });

        $("#upwd1").blur(function(){
            if($("#upwd").val()==$("#upwd1").val()){
                $(".upwd1x").html("")
                    .prev().attr('src','imgs/ok.png');
                a++;
            }else{
                $(".upwd1x").html("确认密码与密码不相同请重填")
                    .prev().attr('src','imgs/err.png');
                a--;
            }
        })
    $("#bt-register").click(function(){
        if(a==3) {
            var u = $("#uname").val();
            var p = $("#upwd").val();
            $.ajax({
                type: 'GET',
                url: 'data/register.php',
                data: {uname: u, upwd: p},
                success: function (data) {
                    if (data.code > 0) {
                        alert(data.msg);
                        location.href = "login.html";
                    }
                },
                error: function () {
                    alert("网络出现故障请稍候");
                }
            })
        }else{
            alert("您的输入信息有误！");
        }
    })
})