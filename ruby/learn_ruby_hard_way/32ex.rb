the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

the_count.each do |number|
	puts "This is the count: #{number}."
end

fruits.each do |fruit|
  puts "A fruit of type #{fruit}."
end

change.each { |e| puts "I got #{e}." }

elements = []

(0..5).each do |n|
	elements.push(n)
end

elements.each { |element| puts "Element was: #{element}." }