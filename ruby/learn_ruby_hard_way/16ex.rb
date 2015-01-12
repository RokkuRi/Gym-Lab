filename = ARGV[0]

puts "Were going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "Line 1: "
target.write $stdin.gets
print "Line 2: "
target.write $stdin.gets
print "Line 3: "
target.write $stdin.gets

puts "And finally, we close it."
target.close