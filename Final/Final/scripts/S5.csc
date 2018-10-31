loop
set totbp 0
randb x 0 90
areadsensor v
if($v!=X)
rdata $v a b c d e
int c $c
int e $e
mult c $c 0.6
mult e $e 0.4
plus totbp $c $e 

if($x<30)
	plus totbp $totbp 1
end
if(($x>30) && ($x<60))
	plus totbp $totbp 5
end
if($x>60)
	plus totbp $totbp 8
end
data res $totbp $x BP
send $res 4
end
delay 1000