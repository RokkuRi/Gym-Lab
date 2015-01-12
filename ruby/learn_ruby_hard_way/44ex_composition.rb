module Other

  def altered()
    puts "OTHER altered()"      
  end

  def override()
    puts "OTHER override()" 
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def best()
    puts "other best son" 
  end
end

module SonModule
  def best()
    puts "son module" 
  end 
end

class Child
  extend Other
  include Other

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    self.class.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

class << son
  include SonModule

 # def best()
 #   puts "best son"    
 # end 
end

son.best()

#son.implicit()
#son.override()
#son.altered()

#puts "#" * 10

#Child.altered()
#Child.override()
#Child.implicit()