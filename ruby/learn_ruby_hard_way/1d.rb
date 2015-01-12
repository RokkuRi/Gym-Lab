class Try
	def inspect
		"Trying to inspect me, eh!?"
	end

	def to_s
		"See? 'to_s' is called."
	end
end

man = Try.new
# method 'p' calls instance method internally on the object passed to it.
p man
# 'puts' calls 'to_s' method internally.
puts man