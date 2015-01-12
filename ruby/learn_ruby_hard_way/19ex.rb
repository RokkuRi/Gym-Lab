def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} of cheese."
	puts "And you have #{boxes_of_crackers} of crackers."
	puts "Man that's enough for a party."
	puts "Get a blanker\n"
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our scripts:"
amount_of_cheese = 20
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can do math inside too..."
cheese_and_crackers(30+15, 10+20)

puts "And we can combine the two,variables and math:"
cheese_and_crackers(amount_of_crackers + 10, amount_of_cheese + 15{})