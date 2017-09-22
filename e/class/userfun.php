<?php
//---------------------------用户自定义标签函数文件
//当前位置导航 
function user_linknav($classid) 
{ 
global $empire,$dbtbpre; 
$query="select classname,bclassid,classpath from {$dbtbpre}enewsclass where classid=".$classid; 
$sql=$empire->query($query); 
//echo "首 页"; 
while($r=$empire->fetch($sql)) 
{ 
findparent($r[bclassid]); 
echo "".$r[classname].""; 
} 
} 
//当前位置导航，递归查询父栏目 
function findparent($classid) 
{ 
global $empire,$dbtbpre; 
$query="select classname,bclassid,classpath from {$dbtbpre}enewsclass where classid=".$classid; 
$sql=$empire->query($query); 
while($r=$empire->fetch($sql)) 
{ 
findparent($r[bclassid]); 
echo " > ".$r[classname].""; 
} 
} 
?>