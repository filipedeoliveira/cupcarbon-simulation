loop
set totbp 0
randb x 0 24
set flag $x
areadsensor v
if($v!=X)
rdata $v a b c d e
int c $c
int e $e


mult c $c 0.3
div c $c 300

mult e $e 0.4
div e $e 50

mult x $x 0.3
div x $x 24

plus aux $c $e
plus totbp $aux $x
print $totbp

data res $totbp $flag SC Paralelo

send $res 21
end
delay 1000