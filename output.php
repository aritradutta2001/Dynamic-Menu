<html>
<head>
<title>Output</title>
<style>
.btn 
{
	border-radius:10px;
	cursor:pointer;
}
</style>
</head>
<body>
<center><h1><u>Output Page</u></h1></center>
<?php
include 'connection.php';
$sql="select * from menu_table";
$res=mysqli_query($con,$sql);
$arr=[];
while($row=mysqli_fetch_assoc($res))
{
	$arr[$row['id']]['name']=$row['name'];
	$arr[$row['id']]['parent_id']=$row['parent_id'];
}

$html='';
function viewData($arr,$parent,$level=0,$prelevel= -1){
	global $html;
	foreach($arr as $id=>$data)
	{
		if($parent==$data['parent_id'])
		{
			if($level>$prelevel)
			{
				$html.='<ul>';	
			}
			if($level==$prelevel)
			{
				$html.='</li>';
			}
			$html.='<li>'.$data['name'];
			if($level>$prelevel)
			{
				$prelevel=$level;
			}
			$level++;
			viewData($arr,$id,$level,$prelevel);
			$level--;
		}
	}
	if($level==$prelevel)
	{
		$html.='</li></ul>';
	}
	return $html;
}
echo viewData($arr,0);
?>
<marquee>Made By Aritra Dutta</marquee>
<a href="index.html"><input type ="button" value="BACK" class ="btn"></a>
</body>
</html>

  
            