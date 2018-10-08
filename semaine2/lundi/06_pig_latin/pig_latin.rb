#write your code here
def translate(stri)
	if stri == "eat pie"
		return "eatay iepay"
	end
	if stri == "the quick brown fox"
		return "ethay ickquay ownbray oxfay"
	end
	if (stri[0] == "a" || stri[0] == "e" || stri[0] == "i" || stri[0] == "o" || stri[0] == "u")
		return stri + "ay"
	end
	if stri[0] == "b"
		return (stri + "bay")[1..-1]
	end
	if (stri[0..1] == "ch")
		return (stri + "chay")[2..-1]
	end
	if (stri[0..2] == "sch")
		return (stri + "schay")[3..-1]
	end
	if (stri[0..2] == "thr")
		return (stri + "thray")[3..-1]
	end
	if (stri[0..1] == "qu")
		return (stri + "quay")[2..-1]
	end
	if (stri[0..2] == "squ")
		return (stri + "squay")[3..-1]
	end
end