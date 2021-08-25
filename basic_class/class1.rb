=begin
initializeは特別な名前のメソッドでnewした際に実行されます。
=end

class Creature
  # constructor
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

# define Person tha is derived from Creature.
class Person < Creature 
  def initialize(name,age)
    super(name)
    @age = age
  end

  def age
   @age
  end
end

me = Person.new('Charlie', 8)
p me.name   # => "Charlie"
p me.age    # => 8
