#experimenting with drawing ASCII art shapes using code.
puts "Welcome to shapes"
print "How big do you want your shape?"
shape_size = gets.chomp
print "outside letter: "
outside_letter = gets.chomp
print "inside letter: "
inside_letter = gets.chomp

height = shape_size.to_i
width = shape_size.to_i

def triangle(height, outside_letter, inside_letter)
  1.upto(height) do |row|
    print ' ' * (height - row)
    if row == 1
      puts "#{outside_letter * 2}"
    elsif row == height
      puts outside_letter * height * 2
    else
      middle = inside_letter * (row - 2)
      print "#{outside_letter}#{middle}#{inside_letter}"
      puts "#{inside_letter}#{middle}#{outside_letter}"
    end
  end
end

def rectangle(height, width, outside_letter, inside_letter)
  1.upto(height) do |row|
    if row == 1
      puts outside_letter * width
    elsif row == height
      puts outside_letter * width
    else
      middle = inside_letter * (width - 2)
      puts "#{outside_letter}#{middle}#{outside_letter}"
    end
  end
end
triangle(height, outside_letter, inside_letter)
rectangle(height, width * 2, outside_letter, inside_letter)
