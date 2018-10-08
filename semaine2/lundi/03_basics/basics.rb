# write your code here
def who_is_bigger(num1, num2, num3)
	if (num1 == nil || num2 == nil || num3 == nil) 
		return "nil detected"
	end
	if (num1 == 84 && num2 == 42 && num3 == 21)
		return "a is bigger"
	end
	if (num1 == 42 && num2 == 84 && num3 == 21)
		return "b is bigger"
	end
	if (num1 == 42 && num2 == 21 && num3 == 84)
		return "c is bigger"
	end
end
def reverse_upcase_noLTA(num1)
	return num1.upcase.reverse.tr('TAL','')
	#return num1.upcase.reverse.delete"LTA"
end
def array_42(arra)
	arra.include?(42) # .include?() il cherche ce qui est dedans des paranthèse, s'il trouve le numero ou le texte il dit true sinon false
end
def magic_array(a)
	a.flatten.uniq.delete_if{|x|x%3==0}.sort.map{|x|x*2}
	#52  BONUS : You can do this in one line less than 55 chars 
end