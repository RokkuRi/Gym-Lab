class Monster
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def shouts_his_name
    "My name is #{name}!!"
  end

end
