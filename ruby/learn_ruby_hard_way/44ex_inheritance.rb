=begin
class Parent
  def implicit()
    puts "PARENT implicit()" 
  end
end

class Child < Parent
end

parent = Parent.new()
child = Child.new()

parent.implicit()
child.implicit()
=end
=begin
# Override explicitly
class Parent
  def override()
    puts "IMPLICIT in 'Parent"
  end
end

class Child < Parent
  def override()
    puts "IMPLICIT in 'Child'" 
  end
end

parent = Parent.new()
child = Child.new()

parent.override()
child.override()
=end

# ALTER before and/or after

class Parent
  def altered()
    puts "PARENT altered()" 
  end
end

class Child < Parent
  def altered() 
    puts "CHILD, before Parent is altered." 
    super()
    puts "CHILD, after Parent is altered."
  end
end

parent = Parent.new()
child = Child.new()

parent.altered()
child.altered()