set lugTot 0
set flag 0
loop
wait
read a
wait
read b
rdata $a rateA lugA parqueA
rdata $b rateB lugB parqueB

plus lugTot $lugA $lugB 

if($lugTot > 5)
	set flag 1 
else
	set fag 0
end

send $flag 3

print $rateA $rateB 

if($rateA > $rateB)
	led 13 1
	data d B SENSOR8 bparque
	send $d 8 
else
	led 13 2
	data d B SENSOR8 cinemaBP
	send $d 8
end
