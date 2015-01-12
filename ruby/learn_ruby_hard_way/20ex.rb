input_file = ARGV[0]

def read_a_file(file)
	file.read
end

def rewind_a_file(file)
	file.seek(0)
end

def print_a_line(line_number, file)
	puts "what line - #{line_number}, #{file.gets.chomp}."
end

current_file = File.open(input_file)
puts "Let's print the whole file:"
puts read_a_file(current_file)

puts "Let's rewind it..."
rewind_a_file(current_file)

puts "Let's print some lines..."
print_a_line(1, current_file)