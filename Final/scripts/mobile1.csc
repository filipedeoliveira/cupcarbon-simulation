loop
wait
read d
rdata $d x n r
print $x
led 13 9
if($x==B)
    print $n : $r
    set last B
    route $r
end
