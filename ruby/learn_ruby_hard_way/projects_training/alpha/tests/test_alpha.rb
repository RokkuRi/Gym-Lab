require './lib/alpha.rb'
require 'minitest/autorun'

class TestAlpha < MiniTest::Test

  def test_alpha_statement
    assert_equal(5, 1*5)
  end

  def test_alpha_invalid
    assert_equal(1, 1)
  end

  def test_alpha_best
    assert_equal(Alpha.me, nil)
  end

end
