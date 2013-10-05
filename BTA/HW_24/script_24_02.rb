# Define a class

class Triangle

# Constructor method

  def initialize(a,b,c)
    @cathet_one = a
    @cathet_two = b
    @hypotenuse = c

  end

# Accessor methods

  def printcathet_one
    @cathet_one
  end

  def printcathet_two
    @cathet_two
  end

  def printhypotenuse
    @hypotenuse
  end
end

# Create an object

triangle= Triangle.new(5.0,10.0,11.1803)

# Use accessor methods
a = triangle.printcathet_one()
b = triangle.printcathet_two()
c = triangle.printhypotenuse()

# Print output

puts "Perimeter of a right triangle : #{a+b+c}"
puts "Area of a right triangle : #{(a+b)/2}"