require 'minitest/autorun'

class Magic
	def best_wizard
		"Berlin"
	end
end

class MagicTest < MiniTest::Test
	def setup
		@magic = Magic.new
	end

	def test_best_wizard
		assert_equal("Merlin", @magic.best_wizard, "It has to be MERLIN")
	end
end

