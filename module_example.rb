module VehicleActions
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

class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  include VehicleActions
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  include VehicleActions
  def ring_bell
    puts "Ring ring!"
  end
end


car = Car.new
bike = Bike.new

p car
car.turn('south')
p car
p bike











