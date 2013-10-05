# Define a class

class Circle

# Constructor method

  def initialize(r)
    @radius = r
  end

# Accessor methods

  def printRadius
    @radius
  end
end

# Create an object

circle = Circle.new(10)

# Use accessor methods
r = circle.printRadius()

# Print output

puts "Perimeter of a circle is : #{2*3.1415926*r}"
puts "Area of a circle : #{3.1415926*r*r}"