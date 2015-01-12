class A
	def one(points)
		puts "#{points} in A."
	end
end

class B < A
	attr_accessor :points

	def initialize
		@points = 0
	end

	def one(arg)
		return if arg == "0"

		return super(points) if @points == 5 

		puts "#{points} in B."
		@points += 1
		one(arg)
	end
end

b = B.new
b.one("0")
b.one("1")