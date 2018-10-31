set lugTot 0
loop
wait
read a
wait
read b
rdata $a rateA lugA parqueA
rdata $b rateB lugB parqueB

print $rateA $rateB 

if($rateA > $rateB)
	led 13 1
	print "Rua do Raio"
	data d B SENSOR8 ruaRaio
	send $d 64 
else
	led 13 2
	print "Campo da Vinha"
	data d B SENSOR8 camVinha
	send $d 64
end