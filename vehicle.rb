class Vehicle
  attr_accessor :name
  attr_accessor :year
  attr_accessor :price

  def to_s
    "#{@year}: #{@name}: #{@price}"
  end
end

class Car < Vehicle
  def wheels
    puts 'has 4 wheels'
  end
end

class Bicycle < Vehicle
  def wheels
    puts 'has 2 wheels'
  end
end

car1 = Car.new
car2 = Car.new
bicycle = Bicycle.new

car1.name = "Porsche"
car1.year = 2012
bicycle.price = 23500

car2.name = "Volvo"
car2.year = 2014
car2.price = 22500

bicycle.name = 'Schwin 700c'
bicycle.year = 2019
bicycle.price = 299

puts "The #{car1.year} #{car1.name} costs #{car1.price}"
puts "The #{car2.year} #{car2.name} costs #{car2.price}"
puts "The #{bicycle.year} #{bicycle.name} costs #{bicycle.price}"

puts ''

p car1.to_s
p car2.to_s
p car1.wheels
p bicycle.to_s
p bicycle.wheels
