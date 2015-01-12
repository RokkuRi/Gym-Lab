 class Guy
 	def initialize(text)
 		@text = text
 	end

 	def read
 		puts @text
 	end
 end

 Guy.new("some text\nother text").read