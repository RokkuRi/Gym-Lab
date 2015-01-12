filename = ARGV[0]
file = File.open(filename, 'w')
file.truncate(0)
file.close
puts "Contects of the file #{filename}, deleted."