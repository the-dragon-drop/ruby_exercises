
class Sheep
  @@count = 0
  def initialize(input_options)
    @name = input_options[:name] 
    @@count += 1 
  end

  def self.count
    puts @@count
  end

  def name
    puts @name
  end

  def bleet
    puts "bahhh"
  end

  def self.grass
    puts "yum"
  end
end

Sheep.count

bob = Sheep.new(name: "bob")
sue = Sheep.new(name: "sue")

Sheep.count

bob.bleet
Sheep.grass

bob.name
sue.name

