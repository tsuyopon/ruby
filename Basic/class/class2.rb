# @@, @ differece
class Creature
  @@counter = 0
  def initialize(name)
    @name = name
    @@counter += 1
  end

  def self.count
    "You have #{@@counter} creatures."
  end
end

dog = Creature.new('hot')
alligator = Creature.new('thanks')
hippopotamus = Creature.new('idiot')

p Creature.count  # => "You have 3 creatures."
