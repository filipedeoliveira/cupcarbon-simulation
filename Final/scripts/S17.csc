loop
randb x 0 1

if($x == 1)
	set pref AC
else
	set pref AL
end

wait
read v
print $v

if(($pref == AC) && ($v == 1))
	led 13 2
	print "Avenida Central" 
	data d B SENSOR8 avCentral
	send $d 8
else
	led 13 1
	print "Avenida da Liberdade"  
end
 