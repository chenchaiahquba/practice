

class Parent

  def implicit()
    puts "PARENT implicit(12)"
  end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

#add both parent and child.................


class Parent

  def override()
    puts "PARENT"
  end

  def override1()
    puts "cccccccc"
  end

  def over
    puts "dddd"
  end

  def over1
    puts "chch"
  end

end

#..........................

class Child < Parent
  def override()
    puts "CHILD "
  end
  def override2()
    puts "aaaaaaaa"
  end
  def override3()
    puts "bbbbb"
  end

end

#.....................

class Child1 < Parent
	def override()
    puts "CHILD1 "
  end
  def override4()
    puts "eeeeeee"
  end

end


dad = Parent.new()
son = Child.new()
son1 = Child1.new()

dad.override()
dad.override1()
dad.over
dad.over1

son.override()
son.override1()
son.override2()
son.override3()
son.over
son.over1

son1.override()
son1.over
son1.override4
son1.over1

#...........super class...............

class Parent

  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()


