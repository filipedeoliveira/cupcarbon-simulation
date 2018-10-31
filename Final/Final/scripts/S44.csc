loop
randb x 0 1

if($x == 1)
	set pref 25Ab
else
	set pref AL
end

wait
read v
rdata $v totRate nlug nome 

if(($pref == 25Ab) && ($nlug  > 30))
	led 13 6
	print "Rua 25 de Abril" 
	data d B SENSOR11 r25Abril
	send $d 11
else
	led 13 1
	print "Avenida da Liberdade"  
end
 