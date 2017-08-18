<?php
    require("init.php");

    #获取轮播广告条目*14  mn_rotate_photo
    $sql="SELECT*FROM mn_rotate_photo";
    $result=mysqli_query($conn,$sql);
    $rotatePhoto=mysqli_fetch_all($result,MYSQLI_ASSOC);

    #新闻*4*8
    $sql="SELECT*FROM mn_newsbox";
    $result=mysqli_query($conn,$sql);
    $newsBox=mysqli_fetch_all($result,MYSQLI_ASSOC);

    #角色介绍*8
    $sql="SELECT*FROM mn_sevroles";
    $result=mysqli_query($conn,$sql);
    $sevRoles=mysqli_fetch_all($result,MYSQLI_ASSOC);

    #媒体*4*8
    $sql="SELECT*FROM mn_mediabox";
    $result=mysqli_query($conn,$sql);
    $mediaBox=mysqli_fetch_all($result,MYSQLI_ASSOC);

    #攻略*4*8
    $sql="SELECT*FROM mn_strategybox";
    $result=mysqli_query($conn,$sql);
    $strategyBox=mysqli_fetch_all($result,MYSQLI_ASSOC);

    $output=[
        'rotatePhoto'=>$rotatePhoto,
        'newsBox'=>$newsBox,
        'sevRoles'=>$sevRoles,
        'mediaBox'=>$mediaBox,
        'strategyBox'=>$strategyBox
    ];
    echo json_encode($output);
?>