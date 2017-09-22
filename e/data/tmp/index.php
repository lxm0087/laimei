<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><!doctype html>
<html>
<head>
<link rel="shortout icon" href="http://www.nclaimei.com/skin/laimei2017/images/favicon.ico" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="renderer" content="webkit"/>
<meta http-equiv="X-UA-Comabsolutetible" content="IE=Edge,chrome=1" />
<meta name="format-detection" content="telephone=no"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-dns-prefetch-control" content="on" />
<title>南昌莱美整形美容医院_南昌莱美美容医院【官网】</title>
<meta name="keywords" content="南昌整形医院,南昌美容医院,南昌整容医院,南昌好的整形医院,南昌好的美容医院,南昌好的整容医院">
<meta name="description" content="[!--pagedesc--]。">
<link href="/skin/css/reset.css" rel="stylesheet"/>
<link href="/skin/css/style.css" rel="stylesheet"/>
<script type="text/javascript" src="/skin/js/jquery-1.9.1.min.js"></script>
<script src="/skin/js/jquery.superslide.2.1.1.source.js"></script>
<script src="/skin/js/expert.js"></script>
<script src="/skin/js/indexapp.js"></script>
<script src="/skin/js/wapskip.js" type="text/javascript"></script>
</head>
<body>
<!-- header start -->
<div class="header" id="header">
  <div class="topDateTell clearfix">
    <div class="pubW center clearfix">
      <div class="englishTags fl"><a href="javascript:void(0)" onClick="openZoosUrl();" target="_blank">在线咨询</a>|<a href="javascript:void(0)" onClick="openZoosUrl();" target="_blank">在线留言 </a></div>
      <span class="tellnumber fr">美丽热线 : 0791-86667777</span> <span class="openTime fr fonts">门诊时间 (无假日医院) 8:00-20:00</span> </div>
  </div>
  <div class="topLogo pubW center clearfix relative">
    <h1><a href="/" title="南昌莱美美容医院"></a></h1>
    <div class="topNav fr clearfix">
      <ul>
        <li><a href="<?=$class_r[47]['classpath']?>" target="_blank" title="关于莱美">关于莱美</a></li>
        <li><a href="<?=$class_r[48]['classpath']?>" target="_blank" title="医师团队">医师团队</a></li>
        <li><a href="<?=$class_r[49]['classpath']?>" target="_blank" title="医院环境">医院环境</a></li>
        <li><a href="<?=$class_r[50]['classpath']?>" target="_blank" title="医疗荣誉">医疗荣誉</a></li>
        <li><a href="/" target="_blank" title="美丽案例">美丽案例</a></li>
        <li><a href="<?=$class_r[53]['classpath']?>" target="_blank" title="来院路线">来院路线</a></li>
      </ul>
    </div>
    <div class="searchBox absolute">
        <div class="selectBox">
          <div class="switch switch1 clearfix">
            <div class="item item1 relative fl">
                      <!--<span class="itemNum" style="text-align:center; color:#fff; line-height:20px;z-index:66;position:absolute;top:-10px;left:122px;display:block;width: 22px;height: 20px;background:url('images/itemnum.png') no-repeat center;"></span>-->
              <form action="/e/search/index.php" method="post" onsubmit="if (this.search.value == ''){this.search.focus();return false;}" name="formsearch" id="formsearch">
                      <input type="hidden" name="show" value="title" />
                      <input type="hidden" name="tempid" value="1" />
                      <input type="hidden" name="tbname" value="news" />
                      <input name="keyboard" id="keyboard" class="btn-text fonts" type="text" size="22" maxlength="30" placeholder="查找您想要改变的部位" />
                      <ul></ul>
                  </div>
                  <div class="itemBtn fl relative">
                    <input type="submit" class="inputSub bt"  title="查找" value="查找" />
                    <i class="absolute"></i>
                  </div>
              </form>
          </div>
        </div>
        <div class="zhutiWripper">
          <ul class="clearfix">
          <?php
$bqno=0;
$ecms_bq_sql=sys_ReturnEcmsLoopBq(55,12,0,0,0,'classid desc');
if($ecms_bq_sql){
while($bqr=$empire->fetch($ecms_bq_sql)){
$bqsr=sys_ReturnEcmsLoopStext($bqr);
$bqno++;
?>
            <li>
              <a class="" href="<?=$bqr['titleurl']?>" target="_blank">
                <img src="<?=$bqr['titlepic']?>" width="58" height="58"/>
              </a>
              <span><?=$bqr['title']?></span>
            </li>
          <?php
}
}
?>
          </ul>
        </div>
    </div>
  </div>
</div>
<!-- end header -->
<!-- nav banner start -->
<div class="banner relative" id="banner"> <div class="menu absolute">
    <ul class="active">
     <?php
$bqno=0;
$ecms_bq_sql=sys_ReturnEcmsLoopBq("select classid,classname,classpath,classimg,bname from [!db.pre!]enewsclass where bclassid=0 order by myorder limit 11",11,24,0);
if($ecms_bq_sql){
while($bqr=$empire->fetch($ecms_bq_sql)){
$bqsr=sys_ReturnEcmsLoopStext($bqr);
$bqno++;
?>
      <?php if( $bqno == 1 || $bqno == 9 || $bqno == 11 ){ ?>
        <li class="subNav subNav<?php if( $bqno == 1 ){ echo 10;}elseif( $bqno == 9){ echo 8;}else{ echo 9;}?>"><a href="/<?=$bqr['classpath']?>"><i></i> <span data-txt="<?=$bqr['classname']?>"></span> </a>
          <div class="subMenu subMenu<?=$bqno?> clearfix">
            <div class="aside fl">
              <div class="subMenu-Logo subMenu-Logo<?=$bqno?>"> <i></i>
              <h6><?=$bqr['classname']?></h6>
              <p><?=$bqr['bname']?></p>
              </div>
            </div>
            <div class="bside fl">
              <div class="inner fl">
                <dl class="clearfix fl">
                  <dd class="clearfix">
                   <?php $sql = $empire->query("select title,titleurl,lastdotime,classid from {$dbtbpre}ecms_news where classid = '$bqr[classid]' order by id desc limit 6");while( $row = $empire -> fetch($sql) ){ ?>
                    <a href="<?=$row['titleurl']?>" target="_blank"><?=$row['title']?></a>
                   <?php } ?>
                  </dd> 
                </dl>
              </div>     
            </div>
            <div class="cside fr"> 
              <?php $sql = $empire -> query("select titlepic,classid from {$dbtbpre}ecms_news where classid = '$bqr[classid]' order by id desc limit 2");while( $row = $empire -> fetch( $sql ) ){?>
                  <img src="<?=$row['titlepic']?>" width="321" height="248"/> 
              <?php } ?>    
            </div>
          </div>
        </li>
      <?php } else { ?>
        <li class="subNav subNav<?php if( $bqno == 7){ echo 7;}elseif( $bqno == 8 ){ echo 6;}elseif( $bqno == 10 ){ echo 12; }else{ echo $bqno-1;}?>"><a href="/<?=$bqr['classpath']?>"><i></i> <span data-txt="<?=$bqr['classname']?>"></span></a>
          <div class="subMenu subMenu<?=$bqno?> clearfix">
            <div class="aside fl">
              <div class="subMenu-Logo subMenu-Logo<?=$bqno?>"> <i></i>
                <h6><?=$bqr['classname']?></h6>
                <p><?=$bqr['bname']?></p>
              </div>
            </div>
            <div class="bside fl">
              <div class="inner fl">
              <?php $sql = $empire -> query("select classid,classname,classpath,bclassid from {$dbtbpre}enewsclass where bclassid = '$bqr[classid]' order by myorder limit 6"); while( $row = $empire -> fetch( $sql ) ){ ?>
                <dl class="clearfix fl">
                  <dt><a href="/<?=$row['classpath']?>"><?=$row['classname']?></a></dt> 
                  <?php $sql2 = $empire -> query("select title,titleurl,classid from {$dbtbpre}ecms_news where classid= '$row[classid]' order by lastdotime desc limit 6");while( $row2 = $empire ->fetch($sql2) ){ ?>
                    <dd class="clearfix">
                       <a href="<?=$row2['titleurl']?>" target="_blank"><?=$row2['title']?></a>
                    </dd> 
                  <?php } ?>  
                </dl>
                <?php } ?>
              </div>     
            </div>
            <div class="cside fr"> 
              <?php $sql3 = ("select classimg from {$dbtbpre}enewsclass where classid= '$bqr[classid]' order by myorder desc ");$row3 = $empire -> fetch1($sql3); ?>
                <img src="<?php echo $row3['classimg'];?>" width="321" height="248"/>
            </div>
          </div>
        </li>
      <?php } ?>
       <?php
}
}
?>  
    </ul>
</div>
  <div class="bannerSlide relative" id="bannerSlide"><a href="javascript:void(0)" class="preBtn absolute bt"><i></i></a> <a href="javascript:void(0)" class="nextBtn absolute bt"><i></i></a>
  <div class="focus absolute"></div>

  <div class="slideBox">
    <ul>
   <?php
$bqno=0;
$ecms_bq_sql=sys_ReturnEcmsLoopBq(56,10,0,1,0,'id');
if($ecms_bq_sql){
while($bqr=$empire->fetch($ecms_bq_sql)){
$bqsr=sys_ReturnEcmsLoopStext($bqr);
$bqno++;
?>
    <li><a href="<?=$bqr['titleurl']?>" target="_blank"><img src="<?=$bqr['titlepic']?>" width="1920" height="600"/></a></li>
   <?php
}
}
?>
    </ul>
  </div>
  </div>
</div>
<!-- content start -->
<div class="content" id="content">
  <div class="stageContainer pubW center">
    <div class="stage1 clearfix">       
      <div class="stage2-width stage1_a fl ">
        <div class="alltitle absolute"></div>
        <div class="stage1Title clearfix" style="position: absolute;z-index: 10;right: 20px;top: 55px;">
          <div class="preNext fr clearfix"> <a href="javascript:void(0)" class="preBtn fl"><i></i></a> <a href="javascript:void(0)" class="nextBtn fr"><i></i></a> </div>
        </div>
        <div class="stage1_anliBox">
          <div class="anliBox"><a href="javascript:void(0)" onClick="openZoosUrl();" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/fde9c83dabda3df03029ae69b6597bbd.jpg" width="687" height="328"/></a>
          </div>
          <div class="anliBox"><a href="javascript:void(0)" onClick="openZoosUrl();" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/fedd332a502bd6653e558b5095d98deb.jpg" width="687" height="328"/></a>
          </div>
          <div class="anliBox"><a href="javascript:void(0)" onClick="openZoosUrl();" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zxhd/2017-09-01/a83f8f6c116ce46f9fec355af5460e53.jpg" width="687" height="328"/></a>
          </div>
        </div>
      </div>

      <div class="stage1-width stage1_b fr"style="height: 385px;">
        <div class="alltitle absolute"></div>
        <div class="activityBox"> 
        <a href="/s/201709/" target="_blank"><img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/lmdt/2017-09-01/75ca24d0695917e2f21e4a4282f9c2d1.jpg" width="380" height="150"/></a></div>
        <div class="stage1Title clearfix"> 
        <a href="http://www.nclaimei.com/gylm/mtbd/2017-08-18/428.html" target="_blank">·腋臭的治疗</a><span class="fonts ">2017-08-18</span></div>
        <div class="stage1Title clearfix"> 
        <a href="http://www.nclaimei.com/gylm/mtbd/2017-08-12/426.html" target="_blank">·漂唇手术的设计原则是什么...</a><span class="fonts ">2017-08-12</span></div>
        <div class="stage1Title clearfix"> 
        <a href="http://www.nclaimei.com/gylm/mtbd/2017-08-08/424.html" target="_blank">·双眼皮的宽窄度是怎么衡量的呢？　...</a><span class="fonts ">2017-08-08</span></div>
        <div class="stage1Title clearfix"> 
        <a href="http://www.nclaimei.com/gylm/mtbd/2017-08-04/423.html" target="_blank">·超声刀美容适合年龄</a><span class="fonts ">2017-08-04</span></div>
        <div class="stage1Title clearfix"> 
        <a href="http://www.nclaimei.com/gylm/mtbd/2017-07-30/417.html" target="_blank">·双下巴吸脂多久可以恢复</a><span class="fonts ">2017-07-30</span></div>
        <a class="more absolute" href="http://www.nclaimei.com/gylm/mtbd" target="_blank">更多>></a>
      </div>
    </div>
      
    <div class="stage4 clearfix relative">
        <div class="rogect absolute">
        <div class="alltitle absolute"></div>
            <a class="more" href="http://www.nclaimei.com/zhuanti" target="_blank">+更多项目</a> 
        </div>
      <div class="stage3-width stage1_c fl">
          <h1 class="absolute">整形美容</h1>
        <div class="expertSlide relative">
          <div class="slideBox">
                    <a href="/s/BreastImplanta/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/zxmr/2016-12-09/0fb26fe9ee5cff8ef74b2401d4c0464b.png" width="250" height="330"/></a>
                    <a href="/s/CarvedEyese/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/zxmr/2016-12-02/42c491fb4b3b92d5ae2542d6494b4239.jpg" width="250" height="330"/></a>
                    <a href="/s/SdlLiposuctiona/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/zxmr/2016-12-09/a611d000900df4d00106fac8d6562a81.png" width="250" height="330"/></a>
                    <a href="/s/Rhinoplastyc/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/zxmr/2016-12-09/797fdedabe6a2d67a9f3535b33c3b2e6.png" width="250" height="330"/></a>
                 </div>
          <div class="focus absolute clearfix"></div>
        </div>
      </div>
      <div class="stage3-width stage1_c fl">
          <h1 class="absolute">皮肤美容</h1>
        <div class="expertSlide relative">
          <div class="slideBox">
                    <a href="/s/HairRemoval/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/pfmr/2016-12-02/e4bcbf5d8ed5c32872aaa597b9041ad1.jpg" width="250" height="330"/></a>
                    <a href="/s/GlxfAcneTreatmenta/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/pfmr/2016-12-09/65acd18a94cb20bf3534eb5dbcd0ca5e.png" width="250" height="330"/></a>
                    <a href="/s/OPTKingStyleb/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/pfmr/2016-12-09/66176e999058279fcc33f306bc139156.png" width="250" height="330"/></a>
                    <a href="/s/FreckleRemovingb/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/pfmr/2016-12-09/03297c89fa16513b2e7f40186712796d.png" width="250" height="330"/></a>
                 </div>
          <div class="focus absolute clearfix"></div>
        </div>
      </div>
      <div class="stage3-width stage1_c fl">
          <h1 class="absolute">微整形</h1>
        <div class="expertSlide relative">
          <div class="slideBox">
                    <a href="/s/FaceLiftNeedlea/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/vzx/2016-12-09/34a6dfc5c7f32b6648b8bf7f84d1a4c0.png" width="250" height="330"/></a>
                    <a href="/s/FaceLiftNeedled/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/vzx/2016-12-09/4b7fcc5c8388c8f8356ef29e32762fac.png" width="250" height="330"/></a>
                    <a href="/s/BotoxKreotoxina/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/vzx/2016-12-09/1ba22b0058ddaea832c2c33f13e285dc.png" width="250" height="330"/></a>
                 </div>
          <div class="focus absolute clearfix"></div>
        </div>
      </div>
      <div class="stage3-width stage1_c fl">
          <h1 class="absolute">口腔美容</h1>
        <div class="expertSlide relative">
          <div class="slideBox">
                    <a href="/s/DentalCorrection/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/ycjz/2016-12-28/cb9e9eb8704cfdbb6e7673a54333a774.png" width="250" height="330"/></a>
                    <a href="/s/Teethas/index.html" target="_blank"><img class="lazyLoading" data-url="/d/file/xmzx/ycjz/2016-12-09/a46e4ca138d855a9fda8b63461d56e03.png" width="250" height="330"/></a>
                 </div>
          <div class="focus absolute clearfix"></div>
        </div>
      </div>
    </div>
    <div class="stage2 clearfix">
        <div class="alltitle"></div>
      <div class="stage_a fl relative">
       <a href="javascript:void(0)" class="preBtn absolute bt"><i></i></a> <a href="javascript:void(0)" class="nextBtn absolute bt"><i></i></a>
        <div class="slideBox">
          <div class="slide relative"><a href="/gylm/zjtd" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/yszh/2017-05-27/ec1a69b25b038e4c521883525d32d7d2.png" width="822" height="479" alt="整形美容医疗团队" /></a>
            <div class="innerWrapper absolute">
              <h5 class="fonts">整形美容医疗团队</h5>
              <p class="fonts">由数十名临床经验资深医生组成,技术精湛、服务周到根据顾客的个人特点定制合适自然的整形美容方案。</p>
            </div>
          </div>
          <div class="slide relative"><a href="/gylm/zjtd" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/yszh/2017-02-28/80d8edb5cd922f34fc513b266499b772.png" width="822" height="479" alt="皮肤美容医疗团队" /></a>
            <div class="innerWrapper absolute">
              <h5 class="fonts">皮肤美容医疗团队</h5>
              <p class="fonts">由皮肤科主任为代表的美肤团队对于嫩肤、祛痘、祛斑等常见皮肤问题"治疗"有道,迄今已为无数女性带来美丽新生。</p>
            </div>
          </div>
          <div class="slide relative"><a href="/gylm/zjtd" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yszh/2017-01-14/bfc78e76a584838dc7d6fc1305af0d9c.jpg" width="822" height="479" alt="微整形医疗团队" /></a>
            <div class="innerWrapper absolute">
              <h5 class="fonts">微整形医疗团队</h5>
              <p class="fonts">汇集众多资深微整形医生,始终坚持“效果、自然、健康”的原则,以及人性化的美容理念,采用多层定点注射方法！</p>
            </div>
          </div>
          <div class="slide relative"><a href="/gylm/zjtd" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yszh/2016-12-29/a95d1b69058b0ba4170cde5dc7fd3153.png" width="822" height="479" alt="口腔美容团队" /></a>
            <div class="innerWrapper absolute">
              <h5 class="fonts">口腔美容团队</h5>
              <p class="fonts">汇聚国内外资深口腔医生,在业界荣享盛誉,微创美学修复,深厚的口腔美学功底,深受众多顾客的赞誉。</p>
            </div>
          </div>
          <div class="slide relative"><a href="/gylm/zjtd" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/yszh/2017-03-21/63818a66f0b7bd47717eea863e6853b2.png" width="822" height="479" alt="毛发移植医疗团队" /></a>
            <div class="innerWrapper absolute">
              <h5 class="fonts">毛发移植医疗团队</h5>
              <p class="fonts">专业植发手术团队！</p>
            </div>
          </div>
          <div class="slide relative"><a href="/gylm/zjtd" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yszh/2016-12-29/9c3605fda5a9e21dae53cb2b213d676d.png" width="822" height="479" alt="特邀医生医疗团队" /></a>
            <div class="innerWrapper absolute">
              <h5 class="fonts">特邀医生医疗团队</h5>
              <p class="fonts">邀请整形美容知名医生亲临南昌莱美为求美者服务,享受国际整形技艺。</p>
            </div>
          </div>
         

        </div>
      </div>
      <div class="stage_b fr">
        <div class="focus clearfix relative">
          <div class="active_bg absolute"></div>
          <span class="active"><em class="fonts fonts1">查询医生</em></span> <span><em class="fonts fonts2">专家团队</em></span> </div>
        <div class="slides">
          <div class="slide slide1">
            <div class="inner center"> 
              <h6 class="fonts">按项目找专家</h6>
              <div class="itemExperts clearfix">
    <a class="fonts bt zhengxing" href="/gylm/zjtd" target="_blank" title="整形美容">整形美容</a> 
    <a class="fonts bt pifu" href="/gylm/zjtd" target="_blank" title="皮肤美容">皮肤美容</a> 
    <a class="fonts bt weizhengxing" href="/gylm/zjtd" target="_blank" title="微整形">微整形</a> 
    <a class="fonts bt kouqiang" href="/gylm/zjtd" target="_blank" title="口腔美容">口腔美容</a> 
    <a class="fonts bt maofa" href="/gylm/zjtd" target="_blank" title="毛发移植">毛发移植</a> 
    <a class="fonts bt teyao" href="/gylm/zjtd" target="_blank" title="特邀医生">特邀医生</a> 
 
              </div>
            </div>
          </div>
          <div class="slide slide2">
            <div class="doctorsBox relative">
              <div class="doctorsWrapper">
                <li> <a href="http://www.nclaimei.com/gylm/zjtd/2016-12-02/247.html" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/d73815ad0abd98fd51f88024a2bf6028.png" width="100" height="125"/>
                  <p class="fonts">覃耀锋</p>
                  </a>
                  <div class="addInfo"> <a href="http://www.nclaimei.com/gylm/zjtd/2016-12-02/247.html" target="_blank"><img src="picture/d73815ad0abd98fd51f88024a2bf6028.png" width="100" height="125"/></a>
                    <div class="addInfoList">
                      <h5 class="fonts">覃耀锋</h5>
                      <p class="fonts">擅长项目：五官精细化整形、360°水动力螺旋吸脂、注射微整形等</p>
                    </div>
                  </div>
                </li>
                <li> <a href="http://www.nclaimei.com/gylm/zjtd/2017-02-28/366.html" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zjtd/2017-02-28/7f6d3b78c210d1f95c39df5f80b1223f.png" width="100" height="125"/>
                  <p class="fonts">刘波涛</p>
                  </a>
                  <div class="addInfo"> <a href="http://www.nclaimei.com/gylm/zjtd/2017-02-28/366.html" target="_blank"><img src="picture/7f6d3b78c210d1f95c39df5f80b1223f.png" width="100" height="125"/></a>
                    <div class="addInfoList">
                      <h5 class="fonts">刘波涛</h5>
                      <p class="fonts">擅长项目：双核光祛斑、OPT王者风范美肤、皮肤修复等</p>
                    </div>
                  </div>
                </li>
                <li> <a href="http://www.nclaimei.com/gylm/zjtd/2016-12-02/244.html" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/df46eba0bc90697d266705efbed101ca.png" width="100" height="125"/>
                  <p class="fonts">冯宇明</p>
                  </a>
                  <div class="addInfo"> <a href="http://www.nclaimei.com/gylm/zjtd/2016-12-02/244.html" target="_blank"><img src="picture/df46eba0bc90697d266705efbed101ca.png" width="100" height="125"/></a>
                    <div class="addInfoList">
                      <h5 class="fonts">冯宇明</h5>
                      <p class="fonts">擅长项目：面部年轻化、嫩肤美白、水光注射等</p>
                    </div>
                  </div>
                </li>
                <li> <a href="http://www.nclaimei.com/gylm/zjtd/2017-05-31/395.html" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zjtd/2017-05-31/5fda68130a65149ec9b31ddb2c492c46.png" width="100" height="125"/>
                  <p class="fonts">龚衍寿</p>
                  </a>
                  <div class="addInfo"> <a href="http://www.nclaimei.com/gylm/zjtd/2017-05-31/395.html" target="_blank"><img src="picture/5fda68130a65149ec9b31ddb2c492c46.png" width="100" height="125"/></a>
                    <div class="addInfoList">
                      <h5 class="fonts">龚衍寿</h5>
                      <p class="fonts">擅长项目：无痛溶脂减肥、双眼皮、面部线雕年轻化等</p>
                    </div>
                  </div>
                </li>
                <li> <a href="http://www.nclaimei.com/gylm/zjtd/2017-04-16/381.html" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zjtd/2017-04-16/3c27e29ba3cf829e80662b06d3d4de2c.png" width="100" height="125"/>
                  <p class="fonts">廖洪跃</p>
                  </a>
                  <div class="addInfo"> <a href="http://www.nclaimei.com/gylm/zjtd/2017-04-16/381.html" target="_blank"><img src="picture/3c27e29ba3cf829e80662b06d3d4de2c.png" width="100" height="125"/></a>
                    <div class="addInfoList">
                      <h5 class="fonts">廖洪跃</h5>
                      <p class="fonts">擅长项目：各种眼部美容手术、上睑下垂矫正术、眼袋祛除等</p>
                    </div>
                  </div>
                </li>
                <li> <a href="http://www.nclaimei.com/gylm/zjtd/2017-04-26/385.html" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zjtd/2017-04-26/9d21f05dfc3378bbc513fee55f9f8e3a.png" width="100" height="125"/>
                  <p class="fonts">罗琳</p>
                  </a>
                  <div class="addInfo"> <a href="http://www.nclaimei.com/gylm/zjtd/2017-04-26/385.html" target="_blank"><img src="picture/9d21f05dfc3378bbc513fee55f9f8e3a.png" width="100" height="125"/></a>
                    <div class="addInfoList">
                      <h5 class="fonts">罗琳</h5>
                      <p class="fonts">擅长项目：精细化五官整形、鼻部整形、面部除皱术等</p>
                    </div>
                  </div>
                </li>
                <li> <a href="http://www.nclaimei.com/gylm/zjtd/2017-01-01/298.html" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zjtd/2017-01-01/9a703b037261d797f3219b7731ffaa9f.jpg" width="100" height="125"/>
                  <p class="fonts">秦晓峰</p>
                  </a>
                  <div class="addInfo"> <a href="http://www.nclaimei.com/gylm/zjtd/2017-01-01/298.html" target="_blank"><img src="picture/9a703b037261d797f3219b7731ffaa9f.jpg" width="100" height="125"/></a>
                    <div class="addInfoList">
                      <h5 class="fonts">秦晓峰</h5>
                      <p class="fonts">擅长项目:面部精细整形、烧伤整形修复、形体雕塑吸脂；等</p>
                    </div>
                  </div>
                </li>
                <li> <a href="http://www.nclaimei.com/gylm/zjtd/2016-12-02/246.html" target="_blank"> <img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/zjtd/2016-12-02/349b8988f950b83c5a6bd5c1040ed4a6.png" width="100" height="125"/>
                  <p class="fonts">郭小楼</p>
                  </a>
                  <div class="addInfo"> <a href="http://www.nclaimei.com/gylm/zjtd/2016-12-02/246.html" target="_blank"><img src="picture/349b8988f950b83c5a6bd5c1040ed4a6.png" width="100" height="125"/></a>
                    <div class="addInfoList">
                      <h5 class="fonts">郭小楼</h5>
                      <p class="fonts">擅长项目：美容冠修复、无托槽隐形矫正、皓齿美白等</p>
                    </div>
                  </div>
                </li>

            </div>
              <!--<div class="preNextBtn absolute"><a href="javascript:void(0)" class="preBtn fl"><i></i></a><a href="javascript:void(0)" class="nextBtn fr"><i></i></a></div>-->
              <div class="overlayer absolute"></div>
              <div class="popInfo absolute"> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="stage3 clearfix">
      <div class="stage3_width stage3_a  relative">
        <div class="alltitle absolute"></div>
        <div class="stage1Title clearfix absolute">
          <div class="preNext  clearfix absolute"> 
          <a href="javascript:void(0)" class="preBtn "><i></i></a> 
          <a href="javascript:void(0)" class="nextBtn "><i></i></a> 
          </div>
        </div>
        <div class="stage3Box">
          <div class="slides">
          <a href="/s/pimiao/index.html"><img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/2fadb6bdd942e78ebbbe966565f9c732.jpg" width="1200" height="769"/></a> 
          </div>
          <div class="slides">
          <a href="/s/Hair/index.html"><img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/f00da24694787e3fac3f957bc3d1018e.jpg" width="1200" height="769"/></a> 
          </div>
          <div class="slides">
          <a href="/s/CarvedEyesc/index.html"><img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/57ebf5884cd6c3e6d58b8a928041fa2c.jpg" width="1200" height="769"/></a> 
          </div>
          <div class="slides">
          <a href="/s/csd/index.html"><img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/446854eac4245a18e3a6deef0d709111.jpg" width="1200" height="769"/></a> 
          </div>
          <div class="slides">
          <a href="/s/Hair/index.html"><img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/ba5a93dfd7cb973a2b2e6a13c08092ed.jpg" width="1200" height="769"/></a> 
          </div>
          <div class="slides">
          <a href="/s/Jsm/index.html"><img class="lazyLoading" data-url="http://www.nclaimei.com/d/file/gylm/mlal/2017-05-03/c1de86780b087673043fab82651bce0e.jpg" width="1200" height="769"/></a> 
          </div>
        </div>
      </div>
    </div>
    <div class="xslc">
      <div class="xslc_focus clearfix">
        <div class="txt" style="background:url(images/biaoti.png) no-repeat -1157px -0px;"></div>
        <div class="txt" style="background:url(images/biaoti.png) no-repeat -1442px -0px;"></div>
        <div class="txt" style="background:url(images/biaoti.png) no-repeat -1745px -0px;"></div>
      </div>
      <div class="slideBox">
        <div class="slides">
          <div class="slide slide1 clearfix">
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yyhj/2016-12-29/88146cb896297b8d959ce5198aa30c2f.jpg" width="239" height="185"/>
              <p>医院外景</p>
              </a> </div>
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yyhj/2016-12-29/2714691bb63cfaab9e73017630ad2a63.jpg" width="239" height="185"/>
              <p>外科病房</p>
              </a> </div>
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yyhj/2016-12-29/567acc31ca63d20ecf0a717645ad1afe.jpg" width="239" height="185"/>
              <p>导医台</p>
              </a> </div>
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yyhj/2016-12-29/4c7a7a8a2f4f5442c7303165842798ba.jpg" width="239" height="185"/>
              <p>医院大厅</p>
              </a> </div>
          </div>
          <div class="slide slide2 clearfix">
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/jdsb/2016-12-28/191279171db89391a66907b642a4368e.jpg" width="239" height="185"/>
              <p style="text-align: center;font-size: 30px;line-height: 63px;">王者风范</p>
              </a> </div>
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/jdsb/2016-12-28/8013d5cdc862f56515289eed649a9b37.jpg" width="239" height="185"/>
              <p style="text-align: center;font-size: 30px;line-height: 63px;">深蓝射频</p>
              </a> </div>
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/jdsb/2016-12-28/209f5d7706a478085ecbec859885ca11.jpg" width="239" height="185"/>
              <p style="text-align: center;font-size: 30px;line-height: 63px;">超声刀</p>
              </a> </div>
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/jdsb/2016-12-28/6b72901730af782b7d74fcd6d2a0ff52.jpg" width="239" height="185"/>
              <p style="text-align: center;font-size: 30px;line-height: 63px;">莱茜尔脱毛仪</p>
              </a> </div>
       
          </div>
          <div class="slide slide6 clearfix">
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yyry/2017-01-02/fe7a94e110eafde2271c32dc75c589e6.png" width="239" height="185"/>
              <p>韩国汉城整形医院技术合作</p>
              </a> 
            </div>
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yyry/2017-01-02/4725665ca5834bf2a4ee96934b06a3ba.png" width="239" height="185"/>
              <p>中美合作激光美容技术交流</p>
              </a> 
            </div>
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yyry/2017-01-02/1dd1169b1c7b02a009728e35bb1b0e67.png" width="239" height="185"/>
              <p>美国曼托假体授权指定使用</p>
              </a> 
            </div>
            <div class="info relative fl"> <a href="javascript:;" target="_blank"> <img class="lazyLoading" data-url="/d/file/gylm/yyry/2017-01-02/13a5f297f7b93d99189b437c5f26fdeb.png" width="239" height="185"/>
              <p>美国科医人激光中国临床培</p>
              </a> 
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end content -->
<div class="footer">
  <div class="pubW center clearfix">
	<div class="footerNav">
		<div class="footer_logo fl"></div>
		<i></i>
		<div class="footer_address fl">
			<div class="footer_text center">
				<h1>医院地址</h1>
				<p>南昌市抚河抚河南路261号（上林春天花园北门）</p>
				<p>免费热线：0791-86667777</p>
				<p>乘车路线：20路、25路、218路、33路到建设路西口</p>
			</div>
		</div>
		<i></i>
		<div class="footer_qrcode fl"></div>
	</div>
		<p>网站内容申明：本网站信息仅供参考，不能作为诊疗及医疗依据本网站商标及图片权属本医院所有，未经授权请勿复制及转载！部分图片来源于网络且图文无关，若侵犯了您的权益请及时联系。<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fb6c8806730042053a0e3f0786c2872ce' type='text/javascript'%3E%3C/script%3E"));
</script></p>
  </div>
</div>
<div class="copyright">
	<div class="splitline"></div>
	<p>Copyright @ 南昌莱美美容医院 All rights reserved 赣ICP备10201680号</p>
</div>
<!-- end footer -->
<script language="javascript" src="js/kst.js"></script>
<div id="ScrollTop">Top</div>
<script>
	window.onload = function () {
    var top = document.getElementById("ScrollTop");
    //滚动一屏幕时显示回到顶部
    window.onscroll = function () {
        var currentPosition = document.documentElement.scrollTop || document.body.scrollTop;
        currentPosition > window.screen.availHeight ? top.style.display = "block" : top.style.display = "none";
    };
    top.onclick = GoTop;// 注意不要括号
    function GoTop() {
        var timer = setInterval(function () {
    var currentPosition = document.documentElement.scrollTop || document.body.scrollTop;
            currentPosition -= 100;
            if (currentPosition > 0) {
                window.scrollTo(0, currentPosition);
            }
            else {
                window.scrollTo(0, 0);
                clearInterval(timer);
            }
        }, 30);
    }
}
</script>
</body>
</html>