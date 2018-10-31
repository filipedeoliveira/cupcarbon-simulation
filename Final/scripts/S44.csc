loop
randb x 0 1

if($x == 1)
	set pref 25Ab
else
	set pref AL
end
print $x
wait
read v
rdata $v totRate nlug nome 

if(($pref == 25Ab) && ($nlug  > 25))
	led 13 1
	print "Rua 25 de Abril" 
	data d B SENSOR8 r25Abril
	send $d 8
else
	led 13 2
	print "Avenida da Liberdade"  
end
 