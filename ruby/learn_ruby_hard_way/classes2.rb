class Person
	@@people = []

	# CLASS METHODS
	class << self
		def people
	  	@@people
		end

		def add_person(person)
			@@people << person
		end
	end

	# INSTANCE METHODS
	attr_accessor :name

	def initialize(name)
		@name = name
		Person.add_person(self)
	end
end

Person.new("Dario")
p Person.people