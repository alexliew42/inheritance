class Movement
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

class Car < Movement
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Movement 
  def ring_bell
    puts "Ring ring!"
  end
end

bicycle = Bike.new()
bicycle.accelerate
bicycle.ring_bell
p bicycle.speed
bicycle.turn("West")
p bicycle.direction

car = Car.new()
car.honk_horn
car.brake
p car.speed
p car.direction