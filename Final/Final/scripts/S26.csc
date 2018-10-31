loop
set totbp 0
randb x 0 24
areadsensor v
if($v!=X)
rdata $v a b c d e
int c $c
int e $e

mult c $c 0.6
mult e $e 0.4
plus totbp $c $e 

if($x<8)
	plus totbp $totbp 1
end
if(($x>8) && ($x<16))
	plus totbp $totbp 5
end
if($x>24)
	plus totbp $totbp 8
end
data res $totbp $x SC Paralelo
send $res 21
end
delay 1000