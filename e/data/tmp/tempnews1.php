<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?=$grpagetitle?> - Powered by EmpireCMS</title>
<meta name="keywords" content="<?=$ecms_gr[keyboard]?>" />
<meta name="description" content="<?=$grpagetitle?>" />
<link href="/192.168.1.252/skin/default/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/192.168.1.252/skin/default/js/tabs.js"></script>
<script type="text/javascript" src="/192.168.1.252/e/data/js/ajax.js"></script>
</head>
<body class="showpage news">
<!-- header start -->
<div class="header" id="header">
  <div class="topDateTell clearfix">
    <div class="pubW center clearfix">
      <div class="englishTags fl"><a href="javascript:void(0)" onClick="openZoosUrl();" target="_blank">在线咨询</a>|<a href="javascript:void(0)" onClick="openZoosUrl();" target="_blank">在线留言 </a></div>
      <span class="tellnumber fr">美丽热线 : 0791-86667777</span> <span class="openTime fr fonts">门诊时间 (无假日医院) 8:00-20:00</span> </div>
  </div>
  <div class="topLogo pubW center clearfix relative">
    <h1><a href="/192.168.1.252/" title="南昌莱美美容医院"></a></h1>
    <div class="topNav fr clearfix">
      <ul>
        <li><a href="$class_r[47]['classpath']?>" target="_blank" title="关于莱美">关于莱美</a></li>
        <li><a href="$class_r[48]['classpath']?>" target="_blank" title="医师团队">医师团队</a></li>
        <li><a href="$class_r[49]['classpath']?>" target="_blank" title="医院环境">医院环境</a></li>
        <li><a href="$class_r[50]['classpath']?>" target="_blank" title="医疗荣誉">医疗荣誉</a></li>
        <li><a href="/" target="_blank" title="美丽案例">美丽案例</a></li>
        <li><a href="$class_r[53]['classpath']" target="_blank" title="来院路线">来院路线</a></li>
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
        <li class="subNav subNav<?php if( $bqno == 1 ){ echo 10;}elseif( $bqno == 9){ echo 8;}else{ echo 9;}?>"><a href=" <?=$bqr['classpath']?>"><i></i> <span data-txt="<?=$bqr['classname']?>"></span> </a>
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
        <li class="subNav subNav<?php if( $bqno == 7){ echo 7;}elseif( $bqno == 8 ){ echo 6;}elseif( $bqno == 10 ){ echo 12; }else{ echo $bqno-1;}?>"><a href="<?=$bqr['classpath']?>"><i></i> <span data-txt="<?=$bqr['classname']?>"></span></a>
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
                  <dt><a href="<?=$row['classpath']?>"><?=$row['classname']?></a></dt> 
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
$ecms_bq_sql=sys_ReturnEcmsLoopBq(56,10,0,1);
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
<table width="100%" border="0" cellspacing="10" cellpadding="0">
<tr valign="top">
<td class="main"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="position">
<tr>
<td>您当前的位置：<?=$grurl?></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">
<tr>
<td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="title_info">
<tr>
<td><h1><?=$ecms_gr[title]?></h1></td>
</tr>
<tr>
<td class="info_text">时间：<?=date('Y-m-d H:i:s',$ecms_gr[newstime])?>&nbsp;&nbsp;来源：<?=$docheckrep[1]?ReplaceBefrom($ecms_gr[befrom]):$ecms_gr[befrom]?>&nbsp;&nbsp;作者：<?=$docheckrep[2]?ReplaceWriter($ecms_gr[writer]):$ecms_gr[writer]?></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td id="text"><?=strstr($ecms_gr[newstext],'[!--empirenews.page--]')?'[!--newstext--]':$ecms_gr[newstext]?>
<p align="center" class="pageLink">[!--page.url--]</p></td>
</tr>
</table>
<table border="0" align="center" cellpadding="0" cellspacing="8">
<tr>
<td><table border="0" align="center" cellpadding="0" cellspacing="0" class="digg">
<tr>
<td class="diggnum" id="diggnum"><strong><script type="text/javascript" src="/192.168.1.252/e/public/ViewClick/?classid=<?=$ecms_gr[classid]?>&id=<?=$ecms_gr[id]?>&down=5"></script></strong></td>
</tr>
<tr>
<td class="diggit"><a href="JavaScript:makeRequest('/192.168.1.252/e/public/digg/?classid=<?=$ecms_gr[classid]?>&id=<?=$ecms_gr[id]?>&dotop=1&doajax=1&ajaxarea=diggnum','EchoReturnedText','GET','');">来顶一下</a></td>
</tr>
</table></td>
<td><table border="0" align="center" cellpadding="0" cellspacing="0" class="digg">
<tr>
<td valign="middle" class="diggnum"><strong><a href="/192.168.1.252/"><img src="/192.168.1.252/skin/default/images/back.gif" alt="返回首页" width="12" height="13" border="0" align="absmiddle" /></a></strong></td>
</tr>
<tr>
<td class="diggit"><a href="/192.168.1.252/">返回首页</a></td>
</tr>
</table></td>
</tr>
</table>
          </td>
</tr>
</table>
<script>
		  function CheckPl(obj)
		  {
		  if(obj.saytext.value=="")
		  {
		  alert("您没什么话要说吗？");
		  obj.saytext.focus();
		  return false;
		  }
		  return true;
		  }
		  </script><form action="/192.168.1.252/e/pl/doaction.php" method="post" name="saypl" id="saypl" onsubmit="return CheckPl(document.saypl)">
<table width="100%" border="0" cellpadding="0" cellspacing="0" id="plpost">

<tr>
<td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="title">
<tr>
<td><strong>发表评论</strong></td>
<td align="right"><a href="/192.168.1.252/e/pl/?classid=<?=$ecms_gr[classid]?>&amp;id=<?=$ecms_gr[id]?>">共有<span><script type="text/javascript" src="/192.168.1.252/e/public/ViewClick/?classid=<?=$ecms_gr[classid]?>&id=<?=$ecms_gr[id]?>&down=2"></script></span>条评论</a></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="10" cellpadding="0">
<tr>
<td><table width="100%" border="0" cellpadding="0" cellspacing="2">
<tr>
<td width="56%" align="left">用户名:
<input name="username" type="text" class="inputText" id="username" value="" size="16" /></td>
<td width="44%" align="left">密码:
<input name="password" type="password" class="inputText" id="password" value="" size="16" /></td>
</tr>
<tr>
<td align="left">验证码:
<input name="key" type="text" class="inputText" size="10" />
<img src="/192.168.1.252/e/ShowKey/?v=pl" align="absmiddle" name="plKeyImg" id="plKeyImg" onclick="plKeyImg.src='/192.168.1.252/e/ShowKey/?v=pl&t='+Math.random()" title="看不清楚,点击刷新" /> </td>
<td align="left"><input name="nomember" type="checkbox" id="nomember" value="1" checked="checked" />
匿名发表</td>
</tr>
</table>
<textarea name="saytext" rows="6" id="saytext"></textarea><input name="imageField" type="image" src="/192.168.1.252/e/data/images/postpl.gif"/>
<input name="id" type="hidden" id="id" value="<?=$ecms_gr[id]?>" />
<input name="classid" type="hidden" id="classid" value="<?=$ecms_gr[classid]?>" />
<input name="enews" type="hidden" id="enews" value="AddPl" />
<input name="repid" type="hidden" id="repid" value="0" />
<input type="hidden" name="ecmsfrom" value="<?=$grtitleurl?>"></td>
</tr>
</table>
</td>
</tr>
</table></form>
</td>
<td class="sider"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="title">
<tr>
<td><strong>推荐资讯</strong></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="8" cellpadding="0" class="box">
<tr>
<td><? @sys_GetClassNewsPic('news',2,4,128,90,1,20,20);?>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="title margin_top">
<tr>
<td><strong>相关文章</strong></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">
<tr>
<td><ul>
<?=GetKeyboard($ecms_gr[keyboard],$ecms_gr[keyid],$ecms_gr[classid],$ecms_gr[id],$class_r[$ecms_gr[classid]][link_num])?>
</ul></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="title margin_top">
<tr>
<td><strong>栏目更新</strong></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">
<tr>
<td><ul>
              <script src='/192.168.1.252/d/js/class/class<?=$ecms_gr[classid]?>_newnews.js'></script></ul></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="title margin_top">
<tr>
<td><strong>栏目热门</strong></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="box">
<tr>
<td><ul>
              <script src='/192.168.1.252/d/js/class/class<?=$ecms_gr[classid]?>_hotnews.js'></script></ul></td>
</tr>
</table></td>
</tr>
</table>
   <div class="footer">
     <div class="footer-text">
       <p>版权所有：西湖区华翎健身中心</p>
       <p>技术支持：南昌创企网络科技有限公司  ICP证：赣ICP备16012003号</p>
       <p>Copyright ? 2010 - 2015 phpMyWind.com All Rights Reserved </p>
     </div>
   </div>
   <div style="padding-top:60px;"></div>

   <div class="footer-nav flex">
     <div class="flex-item blue">
       <a href="tel:10086"><div class="flex-item-inside">
         <svg class="dianhua" aria-hidden="true">
           <use xlink:href="#icon-gerenzhongxin_kefudianhuaicon"></use>
         </svg>
         <p class="dinahuazixun">电话咨询</p>
       </div></a>
     </div>
     <div class="flex-item qing">
       <a href="index.html"><div class="flex-item-inside2">
         <svg class="shouye" aria-hidden="true">
           <use xlink:href="#icon-shouye"></use>
         </svg>
         <p>首页</p>
       </div></a>
     </div>
     <div class="flex-item orenge">
       <a href="javascript:scrollTo(0,0);"><div class="flex-item-inside3">
         <svg class="huiding" aria-hidden="true">
           <use xlink:href="#icon-fanhuidingbu"></use>
         </svg>
         <p>返回顶部</p>
       </div></a>
     </div>
   </div>
 </div><!-- container-bg end -->
 <script type="text/javascript">

 </script>
    <script src='js/lun.js'></script>
    <script src='js/pub.js'></script>
  </body>
</html>
<?='<script src="'.$public_r[newsurl].'e/public/onclick/?enews=donews&classid='.$ecms_gr[classid].'&id='.$ecms_gr[id].'"></script>'?>
</body>
</html>