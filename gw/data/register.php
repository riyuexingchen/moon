<?php
    require("init.php");
    @$u=$_REQUEST["uname"]or die('{"code":-2,"msg":"用户名是必须的"}');
    @$p=$_REQUEST["upwd"]or die('{"code":-3,"msg":"密码是必须的"}');

    $sql="INSERT INTO mn_user VALUES(null,'$u','$p')";
    $result=mysqli_query($conn,$sql);
    if($result!==NULL){
        echo '{"code":1,"msg":"注册成功"}';
    }else{
        echo '{"code":-1,"msg":"请重新注册"}';
    }
?>