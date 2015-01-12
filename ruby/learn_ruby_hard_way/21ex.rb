def add(a, b)
	puts "ADDING #{a} & #{b}."
	r = a + b
  puts r
  return r
end

def subtract(a, b)
	puts "SUBTRACTING #{a} & #{b}."
	r = a - b
	puts r
	return r
end

def multiply(a, b)
	puts "MULTIPLYING #{a} & #{b}."
	r = a * b
	puts r
	return r
end

def divide(a, b)
	puts "DIVIDING #{a} & #{b}."
	r = a / b
	puts r
	return r
end
 
puts "Let's add 10 and 20..."
add(10, 20)

puts "Let's subtract 10 from 20..."
subtract(20, 10)

puts "Let's multiply 20 and 10..."
multiply(10, 20)

puts "Let's divide 20 with 10..."
divide(20, 10)

puts "Let's do some math with functions:"

height = 180
weight = 79
age = 29
iq = 60

puts "Age: #{age}\nWeight: #{weight}\nHeight: #{height}\nIQ: #{iq}"

puts "Here's the puzzle..."

# FORMULA >> f1(a1, a1=f2(a2, a2=f3(a3, a3=f4(a4, a4))))
# MANUALLY >> 180 + (79 - (29 * (60 - 60))) => 230
what = add(height, subtract(weight, multiply(age, divide(60, iq))))

puts "That becomes: #{what}. Can you do it by hand?"