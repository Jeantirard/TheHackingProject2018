#write your code here
def add(num1,num2)
	return num1 + num2
end
def subtract(num1,num2)
	return num1 - num2
end
def sum(num1)
	return num1.sum
end
def multiply(num1,num2)
	return num1 * num2
end
def power(num1,num2)
	return num1 ** num2
end
def factorial(num1)
  if num1 <= 1
    1
  else
    num1 * factorial( num1 - 1 ) #utilisation de la recursivité
  end
end