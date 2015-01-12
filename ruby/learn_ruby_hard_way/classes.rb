module My1

	class <<self
		def a
			"MY1"
		end
	end

	# 2: meaning it looks for an instance method inside that module
	# 4: that means it goes to that module and looks for instance method inside that module
	def a
		"another a"
	end
end

module My2
	def a
		"MY2"
	end
end

module My3
	#
	def just_for_employee_class
		"just_for_employee_class"
	end
end

class Person
	include My2

	def initialize(name)
		@name = name
		@pet = nil
	end

	# 5: after that, it goes to a its superclass (parent class of its class) to see if the instance method is defined there
	#def a
	#	"from person"
	#end
end

class	Employee < Person
	# 4: than it goes to look for that instance method inside a module its class included
	extend My1
	include My1

	class <<self
		include My3

		#def a
		#	"a"
		#end
	end

	def initialize(name, salary)
		super(name)
		@salary = salary
	end

	# 3: than it looks for the method inside its own class that should define that instance method
end

e = Employee.new 1, 1

class << e
	# 2: than it looks for a method in the module it includes
	include My1

	# 1: first it looks for a method in its own Singleton class
end

puts Employee.just_for_employee_class
puts e.a