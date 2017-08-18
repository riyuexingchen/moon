<?php
    require("init.php");
    @$u=$_REQUEST["uname"]or die('{"code":-2,"msg":"用户名是必须的"}');
    @$p=$_REQUEST["upwd"]or die('{"code":-3,"msg":"密码是必须的"}');

    $sql="SELECT*FROM mn_user WHERE uname='$u' AND upwd='$p'";
    $result=mysqli_query($conn,$sql);

    $row=mysqli_fetch_assoc($result);

    if($row!==NULL){
        $uid=$row['uid'];
        $output=["code"=>1,"msg"=>"登录成功","uid"=>$uid];
        echo json_encode($output);
    }else{
        echo '{"code":-1,"msg":"用户名或密码有误"}';
    }
?>