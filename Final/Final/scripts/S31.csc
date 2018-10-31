loop
wait
read v
rdata $v totRate nlug nome 

if($nlug  > 0)
	led 13 6
	print "Campo da Vinha" 
	data d B SENSOR11 camVinha
	send $d 11
else
	led 13 1
	print "Sem opcao"  
end
 