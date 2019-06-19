class Vehicle
  attr_reader :name, :year, :price
  attr_writer :name, :year, :price

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

c1 = Car.new
c2 = Car.new
c3 = Bicycle.new

c1.name = "Porsche"
c1.year = 2012
c1.price = 23500

c2.name = "Volvo"
c2.year = 2014
c2.price = 22500

c3.name = 'Schwin 700c'
c3.year = 2019
c3.price = 299

puts "The #{c1.year} #{c1.name} costs #{c1.price}"
puts "The #{c2.year} #{c2.name} costs #{c2.price}"
puts "The #{c3.year} #{c3.name} costs #{c3.price}"

puts ''

p c1.to_s
p c2.to_s
p c1.wheels
p c3.to_s
p c3.wheels
