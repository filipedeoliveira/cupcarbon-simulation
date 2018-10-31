loop
randb x 0 1

if($x == 1)
	set pref BP
else
	set pref CN
end

wait
read v
print $v

if(($pref == BP) && ($v == 1))
	led 13 2
	print "Braga Parque" 
else
	led 13 1
	print "Av JoaoXI" 
	data d B SENSOR8 avJoaoXI
	send $d 8 
end
 