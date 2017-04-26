class Vehicle
  attr_reader :speed, :direction

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_reader :fuel, :make, :model

  def initialize(input_options)
    super()
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :weight, :type

  def initialize(beef_tomato)
    @speed = beef_tomato[:speed]
    super()
    @weight = beef_tomato[:weight]
    @type = beef_tomato[:type]
  end
  
  def ring_bell
    puts "Ring ring!"
  end
end


car = Car.new(
              fuel: 10,
              make: "Toyota",
              model: "Corrolla"
              )

bike = Bike.new(
                speed: 3000,
                type: "off road",
                weight: 27
                )

puts car.fuel
puts car.make
puts car.model

p bike.speed
p bike.weight
p bike.type







