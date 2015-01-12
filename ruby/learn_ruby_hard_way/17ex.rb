from_file, to_file = ARGV

puts "Copying from file #{from_file}, to #{to_file}."
output_file = File.open(to_file, 'w')
output_file.write(File.open(from_file).read)
output_file.close
puts "Done."