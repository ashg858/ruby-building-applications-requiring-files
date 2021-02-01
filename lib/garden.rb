# Something is missing here
require_relative '.plant.rb'

class Garden
  attr_accessor :name

  def initialize(name:)
    @name = name
  end

  def plants
    Plant.all.select do |plant|
      plant.garden == self
    end
  end
end

lawn = Garden.new(name: 'Front Lawn') #we can call Garden.new because is defined above

basil = Plant.new(name: 'Basil') #we can call Plant.new because Plant is defined above
basil.garden = lawn

cucumber = Plant.new(name: 'Cucumber')
cucumber.garden = lawn #we can associate a plant and a garden because both are defined above

p lawn.plants
