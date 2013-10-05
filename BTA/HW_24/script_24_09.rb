# Define a class

class Box

# Constructor method

  def initialize(w,h)
    @width = w
    @height = h
  end

# Accessor methods

  def printWidth
    @width
  end

  def printHeight
    @height
  end
end

# Create an object

box = Box.new(10, 20)

# Use accessor methods

x = box.printWidth()
y = box.printHeight()

# Print output

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"