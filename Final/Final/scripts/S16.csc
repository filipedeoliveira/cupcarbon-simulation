loop
set tot 0
randb x 0 30
areadsensor v
if($v!=X)
rdata $v a b c d e
int c $c
int e $e

mult c $c 0.6
mult e $e 0.4

plus tot $c $e 


if($x<10)
	plus tot $tot 1
end
if(($x>10) && ($x<20))
	plus tot $tot 5
end
if($x>20)
	plus tot $tot 8
end
data res $tot $x CN
send $res 15
end
delay 1000