require './lib/ex47.rb'
require 'minitest/autorun'

class TestMonster < MiniTest::Test

  def setup
    @zangief = Monster.new('Zangief')
  end

  def test_monster_class
    assert_equal(@zangief.class, Monster)
  end

  def test_monster_shouts_his_name
    assert_equal(@zangief.shouts_his_name, "My name is Zangief!!")
  end

end
