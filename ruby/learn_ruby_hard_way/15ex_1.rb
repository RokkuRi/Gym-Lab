p file = File.open("15ex_sample.txt")
# p file.methods.include? :close
print file.read
file.close
puts "cool"