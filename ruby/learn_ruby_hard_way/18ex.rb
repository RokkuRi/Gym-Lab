def print_args(*args)
	arg1, arg2 = args
	puts "Arg1: #{arg1} and arg2: #{arg2}."
end

def print_two_again(arg1, arg2)
	puts "Arg1: #{arg1} and arg2: #{arg2}."
end

def print_one(arg1)
	puts "arg1: #{arg1}."
end

def print_two()
	puts "I got nothin'."
end

print_args("Dario", "Daic")
print_two_again("Dario", "Daic")
print_one("Dario")
print_two()