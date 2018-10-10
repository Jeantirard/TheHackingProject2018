@corpus = "Howdy partner, sit down! How's it going?"
@dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

#Shakeaspeare
@dictoinary2 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

	# meto 1
#def get_file_as_string(filename)
#  data = ''
#  f = File.open(filename, "r") 
#  f.each_line do |line|
#    data += line
#  end
#  return data
#end
#@xml_data = (get_file_as_string 'test.txt').gsub!(/\n/, "")

file = File.open("test.txt", "rb")
p @contents = file.read.split.join(" ")

def jean_michel_data(corpus, dictionary)
	my_hash = {}
	motscorpus = corpus.downcase.split(/[^a-z]+/)#je prends juste les lettres, j'enleve les signes !.#
	dictionary.each do |x|
		motscorpus.each do |mot|
			if mot == x 
				if my_hash.has_key? x
					mot[x] +=1
				else
					my_hash[mot] = 1
				end
			end
		end
	end
	p my_hash
end
def perfurm
	jean_michel_data(@corpus, @dictionary)
		#meto 1
	#jean_michel_data(@contents, @dictionary)
end
perfurm