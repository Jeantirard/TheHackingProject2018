#write your code here

#def time_string(time)
#	hora = time/3600
#	minu = time%3600/60
#	segu = time%60
#	find = "#{hora}:#{minu}:#{segu}" 
#end

def time_string(time) #l'utc de france est +1, donc, pour ne pas le prendre en compte, on fait un .utc
Time.at(time).utc.strftime("%H:%M:%S") #.strftime pour l'afficher
end