<?php
    require("init.php");

    #获取轮播广告条目*6
    $sql="SELECT*FROM mn_navbar_photo";
    $result=mysqli_query($conn,$sql);
    $navbarPhoto=mysqli_fetch_all($result,MYSQLI_ASSOC);

    #01中一等级突破礼*9
    $sql="SELECT*FROM mn_levelgift";
    $result=mysqli_query($conn,$sql);
    $levelGift=mysqli_fetch_all($result,MYSQLI_ASSOC);

    #01中二等级突破礼*8
    $sql="SELECT*FROM mn_linelist";
    $result=mysqli_query($conn,$sql);
    $lineList=mysqli_fetch_all($result,MYSQLI_ASSOC);

    #01中三等级突破礼*8
    $sql="SELECT*FROM mn_giftlistone";
    $result=mysqli_query($conn,$sql);
    $giftlistOne=mysqli_fetch_all($result,MYSQLI_ASSOC);
    #echo json_encode($giftlistOne);
    $sql="SELECT*FROM mn_giftlisttwo";
    $result=mysqli_query($conn,$sql);
    $giftlistTwo=mysqli_fetch_all($result,MYSQLI_ASSOC);
    #echo json_encode($giftlistTwo);
    #01中四等级突破礼*8
    $sql="SELECT*FROM mn_gifttable";
    $result=mysqli_query($conn,$sql);
    $gifttable=mysqli_fetch_all($result,MYSQLI_ASSOC);
    #echo json_encode($gifttable);

    #获取八荒门派条目*8
    $sql="SELECT*FROM mn_sevunits";
    $result=mysqli_query($conn,$sql);
    $sevUnits=mysqli_fetch_all($result,MYSQLI_ASSOC);

    $output=[
        'navbarPhoto'=>$navbarPhoto,
        'levelGift'=>$levelGift,
        'lineList'=>$lineList,
        'giftlistOne'=>$giftlistOne,
        'giftlistTwo'=>$giftlistTwo,
        'gifttable'=>$gifttable,
        'sevUnits'=>$sevUnits
    ];
    echo json_encode($output);

?>