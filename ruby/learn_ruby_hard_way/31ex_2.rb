class ModernHuman
	attr_accessor :gender

	def initialize(gender)
		@gender = gender
	end

	def ===(partner_gender)
		if partner_gender == "male" || partner_gender == "female"
			gender != partner_gender
		end
	end
end

dd = ModernHuman.new("male")
jv = ModernHuman.new("female")

while true
	puts "Write a gender: male / female"
	partner_gender = gets.chomp

	case partner_gender
	when dd
		puts "Dario got married."
	when jv
		puts "Josipa got married."
	when 5
		puts "this will get run never"
	else		
		puts "what?"
	end
end