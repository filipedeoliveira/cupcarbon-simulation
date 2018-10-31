set lugTot 0
set flag 0
loop
wait
read a
wait
read b
rdata $a rateA lugA AvCentral
rdata $b rateB lugB StaCatarina tipoEst

plus lugTot $lugA $lugB 

if($lugTot > 5)
	set flag 1 
else
	set fag 0
end

send $flag 19

print $rateA $rateB 

if($rateA < $rateB)
	led 13 1
	data d B SENSOR11 sMargarida
	send $d 11 
else
	led 13 2
end

