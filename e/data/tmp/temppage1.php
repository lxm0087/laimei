<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>多维美雕隆鼻-南昌莱美美容整形医院</title>
<meta name="keywords" content="南昌莱美整形专家团队,南昌莱美美容医院专家,莱美国际医师部" />
<meta name="description" content="南昌整形美容医院,南昌莱美美容医院汇集国内外一流整形专家团队,全力打造最美的你." />
<link href="/skin/css/reset.css" rel="stylesheet" type="text/css" />
<script src="/skin/js/jquery-1.9.1.min.js"></script>
<script src="/skin/js/jquery.superslide.2.1.1.source.js"></script>
<script src="/skin/js/indexapp.js"></script>
<script type="text/javascript" src="/skin/js/roll.js"></script>
<link href="/skin/css/bizi.css" rel="stylesheet" type="text/css" />
<body>
<!-- header start -->
<!-- header start -->
<div class="header" id="header">
  <div class="topDateTell clearfix">
    <div class="pubW center clearfix">
      <div class="englishTags fl"><a href="javascript:void(0)" onClick="openZoosUrl();" target="_blank">在线咨询</a>|<a href="javascript:void(0)" onClick="openZoosUrl();" target="_blank">在线留言 </a></div>
      <span class="tellnumber fr">美丽热线 : 0791-86667777</span> <span class="openTime fr fonts">门诊时间 (无假日医院) 8:00-20:00</span> </div>
  </div>
  <div class="topLogo pubW center clearfix relative">
    <h1><a href="[!--news.url--]" title="南昌莱美美容医院"></a></h1>
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

<!-- content start-->
<div class="dw_banner"><a href="javascript:void(0)" onclick="openZoosUrl();return false;" target="_blank"></a></div>
<div class="dw_abouts"><img src="/skin/picture/meb_04.jpg" /></div>
<div class="dw_about">
  <img src="/skin/picture/meb_08.jpg" />
    <img src="/skin/picture/meb_09.jpg" />
    <img src="/skin/picture/meb_10.jpg" />
    <img src="/skin/picture/meb_11.jpg" />
</div>
<a href="javascript:void(0)" onclick="openZoosUrl();return false;" target="_blank">
<div class="dw_abouts"><img src="/skin/picture/meb_15.jpg" /></div></a>
<div class="dw_abouts"><img src="/skin/picture/meb_19.jpg" /></div>
<div class="dw_abouts"><img src="/skin/picture/meb_22.jpg" width="100%" /></div>
<div class="dw_abouts"><img src="/skin/picture/meb_25.jpg" /></div>
<div class="dw_yous">
  <div class="dw_yuw">
      <img src="/skin/picture/meb_02.jpg" />
        <img src="/skin/picture/meb_03.jpg" />
        <img src="/skin/picture/meb_05.jpg" />
        <img src="/skin/picture/meb_07.jpg" />
    </div>
    <div class="dw_drel">手术示意图</div>
    <div class="dw_syt">
      <img src="/skin/picture/meb_29.jpg" />
        <img src="/skin/picture/meb_30.jpg" />
        <img src="/skin/picture/meb_32.jpg" />
        <img src="/skin/picture/meb_34.jpg" />
        <img src="/skin/picture/meb_33.jpg" />
    </div>
</div>
<div class="dw_abouts"><img src="/skin/picture/meb_31.jpg" /></div>
<div style=" margin-left:auto; margin-right:auto; clear:both; width:1000px;">
  <table width="1000" border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#ddd">
  <tr style="  font-size:24px; color:#9c3232; text-align:center; line-height:30px;">
    <td bgcolor="#FFFFFF" style=" font-size:24px; font-weight:bold;">多维美雕隆鼻</td>
    <td bgcolor="#FFFFFF" style=" width:150px; font-size:24px; font-weight:bold;">VS</td>
    <td bgcolor="#FFFFFF" style=" font-size:24px; font-weight:bold;">传统隆鼻</td>
  </tr>
  <tr style=" font-size:24px; line-height:30px;">
    <td bgcolor="#FFFFFF" style=" text-indent:30px;">根据医学美容解剖学、艺术学、个人气质、从每个角度为求美者设计出**的鼻型，全面提升个人的气质。</td>
    <td bgcolor="#FFFFFF" style=" text-align:center;font-size:24px;font-weight:bold; color:#9c3232;">设计方案</td>
    <td bgcolor="#FFFFFF" style=" text-indent:30px;">以正面鼻背作为出发点，迁就假体，从不考虑侧面和抬头位的形态。</td>
  </tr>
  <tr style=" font-size:24px; line-height:30px;">
    <td bgcolor="#FFFFFF" style=" text-indent:30px;">依据黄金分割美学理念，将假体或自体组织分段进行手术，保证正面、侧面以及鼻孔的完美形态。</td>
    <td bgcolor="#FFFFFF" style=" text-align:center; font-size:24px;font-weight:bold;color:#9c3232;">手术方式</td>
    <td bgcolor="#FFFFFF" style=" text-indent:30px;">大动干戈，创伤较大，伤口出血较大。</td>
  </tr>
  <tr style=" font-size:24px; line-height:30px;">
    <td bgcolor="#FFFFFF" style=" text-indent:30px;">采用的是精品硅胶、膨体材料、自体软骨组织 注射等多种隆鼻方式</td>
    <td bgcolor="#FFFFFF" style=" text-align:center;font-size:24px;font-weight:bold; color:#9c3232;">选择材料</td>
    <td bgcolor="#FFFFFF" style=" text-indent:30px;">以假体为卖点，整个鼻根、鼻背、鼻尖都以假体支撑，初级的整形方式使大多数人出现术后问题</td>
  </tr>
  <tr style=" font-size:24px; line-height:30px;">
    <td bgcolor="#FFFFFF" style=" text-indent:30px;">立体感强，“鼻部整形、全脸设计”达到 五官自然、和谐、美观的效果</td>
    <td bgcolor="#FFFFFF" style=" text-align:center;font-size:24px; font-weight:bold;color:#9c3232;">术后效果</td>
    <td bgcolor="#FFFFFF" style=" text-indent:30px;">单纯鼻部垫高，忽视与脸型整体的协调性，假体容易顶出、透光，使鼻部显得僵硬不自然。</td>
  </tr>
</table>
</div>
<div class="dw_abouts"><img src="/skin/picture/meb_35.jpg" /></div>
<div class="dw_dj">
  <div class="dw_djcl">
      <div class="dw_diimg"><img src="/skin/picture/meb_39.jpg" /></div>
        <div class="dw_djxk">
          <div class="dw_djw">国际品质固体硅胶</div>
            <div class="dw_xxk">
              <div class="dw_djwe">优势特点</div>
                <p>固体硅胶的优点是价格低、重量轻、易雕刻、有一定可塑性，可高温消毒，且植入人体后性质稳定</p>
            </div>
            <a href="javascript:void(0)" onclick="openZoosUrl();return false;" target="_blank"><div class="dw_xxwj">详细问价</div></a>
            <a href="javascript:void(0)" onclick="openZoosUrl();return false;" target="_blank"><div class="dw_djzx">点击咨询</div></a>
        </div>
    </div>
  <hr style="height:1px;border:none;border-top:1px solid #000; width:100%; float:left;" />
    <div class="dw_djcl">
      <div class="dw_diimg"><img src="/skin/picture/meb_43.jpg" /></div>
        <div class="dw_djxk">
          <div class="dw_djw">顶级仿生膨体材料</div>
            <div class="dw_xxk">
              <div class="dw_djwe">优势特点</div>
                <p>仿生膨体材料植入人体后可以与人体融为一体，可塑性强，材料异常柔软，术后效果自然，不透光，手感真实。</p>
            </div>
            <a href="javascript:void(0)" onclick="openZoosUrl();return false;" target="_blank"><div class="dw_xxwj">详细问价</div></a>
            <a href="javascript:void(0)" onclick="openZoosUrl();return false;" target="_blank"><div class="dw_djzx">点击咨询</div></a>
        </div>
    </div>
  <hr style="height:1px;border:none;border-top:1px solid #000; width:100%; float:left;" />
    <div class="dw_djcl">
      <div class="dw_diimg"><img src="/skin/picture/meb_46.jpg" /></div>
        <div class="dw_djxk">
          <div class="dw_djw">瑞蓝2号</div>
            <div class="dw_xxk">
              <div class="dw_djwe">优势特点</div>
                <p>透明质酸为人体真皮组织成份之一，在隆鼻等微整形手术中非常热门，安全、快速、有效，被视为"午休美容"。</p>
            </div>
            <a href="javascript:void(0)" onclick="openZoosUrl();return false;" target="_blank"><div class="dw_xxwj">详细问价</div></a>
            <a href="javascript:void(0)" onclick="openZoosUrl();return false;" target="_blank"><div class="dw_djzx">点击咨询</div></a>
        </div>
    </div>
  <hr style="height:1px;border:none;border-top:1px solid #000; width:100%; float:left;" />
    <div class="dw_djcl">
      <div class="dw_diimg"><img src="/skin/picture/meb_48.jpg" /></div>
        <div class="dw_djxk">
          <div class="dw_djw">伊维兰</div>
            <div class="dw_xxk">
              <div class="dw_djwe">优势特点</div>
                <p>是一种新的填充隆鼻方法，伊维兰隆鼻与玻尿酸隆鼻有着异曲同工的功效，伊维兰持续的时间会更长一些。</p>
            </div>
            <a href="javascript:void(0)" onclick="openZoosUrl();return false;" target="_blank"><div class="dw_xxwj">详细问价</div></a>
            <a href="javascript:void(0)" onclick="openZoosUrl();return false;" target="_blank"><div class="dw_djzx">点击咨询</div></a>
        </div>
    </div>
  <hr style="height:1px;border:none;border-top:1px solid #000; width:100%; float:left;" />
</div>
<div class="dw_abouts"><a href="javascript:void(0)" onClick="openZoosUrl();" target="_blank"><img src="/skin/picture/meb_51.jpg" /></a></div>
<div class="dw_abouts"><img src="/skin/picture/meb_55.jpg" /></div>
<div class="dw_about">
  <img src="/skin/picture/meb_58.jpg" />
    <img src="/skin/picture/meb_59.jpg" />
    <img src="/skin/picture/meb_62.jpg" />
    <img src="/skin/picture/meb_63.jpg" />
</div>
<script language="javascript" type="text/javascript" src="js/efb7ec7cdb7a4faeb75d0ee3197a7a4f.js"></script>
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