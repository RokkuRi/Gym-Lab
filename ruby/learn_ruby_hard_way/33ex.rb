def learn_while(increment, times)
	numbers = []
	i = 0

	while i < times
    puts "Up here \"i\" is: #{i}"
    numbers << i
    i += increment
    puts "Down here \"i\" is: #{i}"
    puts "Number now are:", numbers
    puts "-" * 5
  end
end

learn_while(2,10)