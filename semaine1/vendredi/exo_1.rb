
WELSH = Hash.new # 345,6 + 73.2 + 145.2.  == 564
WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.3

CALORIES = Hash.new
CALORIES["Lipides"] = 9
CALORIES["Glucides"] = 4
CALORIES["Protéines"] = 4

FRITES = Hash.new #135 + 164 + 13,6 == 312.6
FRITES["Lipides"]= 15
FRITES["Glucides"]= 41
FRITES["Protéines"]= 3.4

BIERE = Hash.new # 0 + 100 + 16 = 116
BIERE["Lipides"]= 0
BIERE["Glucides"]= 25
BIERE["Protéines"]= 4

MENU = Hash.new
MENU["WELSH"] = WELSH
MENU["FRITES"] = FRITES
MENU["BIERE"] = BIERE

PRIX = Hash.new
PRIX["WELSH"] = 15
PRIX["FRITES"] = 4
PRIX["BIERE"] = 5

def weight_watchers(hash1)
  result = 0
  hash1.each do |item,valeu|
    result = result + (hash1[item].to_f * CALORIES[item].to_f)
  end
  return result
end

def meal_weight_watchers(menu)
	result = 0
	menu.each do |item,valeu|
		result = result + weight_watchers(valeu)
	end
	return result
end

def  hashaffichage
	arrayprix = [PRIX] #encerramos el hash PRIX en una array llamada arrayprix
	arrayafiprix = ["PRIX"] #hacemos un array que tiene por dentro solo el dato PRIX
	my_hash = Hash[arrayafiprix.zip arrayprix] #combinar los dos array y volverlos en 1 solo hash
	MENU[""] = my_hash

	#la manera con .merge es super importante
	#hash3 = MENU.merge(my_hash) # menu merge las cosas que estan en my_hash
	#https://quizzpot.com/forum/questions/como-unir-dos-hash ici j'ai trouvé les informations
	return MENU
end

def meal_price
	suma = 0
	PRIX.each {|clave, valor| suma = suma + valor}
	return suma
end

def perform
	puts "Bonjour!!"
	gets
	puts "Ton Menu a #{meal_weight_watchers(MENU)} Calories!"
	puts "_" * 20 
	gets
	puts "WELSH #{weight_watchers(WELSH).to_i}!"
	puts "FRITES #{weight_watchers(FRITES)}!"
	puts "BIERE #{weight_watchers(BIERE).to_i}!"
	puts "_" * 20
	gets
	puts hashaffichage
	puts "_" * 20
	gets
	puts "Valeur total de ta commande #{meal_price} euros"
	puts "_" * 20
	gets
	puts "Bon appétit, Au revoir"
end
perform