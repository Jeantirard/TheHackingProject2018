#write your code here
def echo(stri)
	if stri == "hello"
		return "hello"
	end
	if stri == "bye"
		return "bye"
	end
end
def shout(stri)
	stri.upcase #.upcase met les minuscules en majuscules
end

def repeat(stri, num = 2) #Quand on fait le repeat pour la premiere fois, il n'as pas besoin de l'argument "num" parce num vaut 2, pour les autres, num prend la valeur qu'on envois
  [stri].cycle(num).to_a.join(' ') #.cicle il fait une enumeration, to_a. convert un objet en array et avec join je supprime l'array et met un espace à la place
end
def start_of_word(stri,num) 
	stri[0..num - 1] #en Commence par 0,1,2,3
end
def first_word(stri)
	stri.split[0]
end
def titleize(stri)
  nocapi = ["the", "and", "end"] #(/(\w+)/) N'importe quel mot, nombre, _
  stri.capitalize.gsub(/(\w+)/) do |x| #https://ruby-doc.org/core-2.1.4/String.html
    nocapi.include?(x) ? x : x.capitalize
  end
end