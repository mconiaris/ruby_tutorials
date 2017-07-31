puts "This Math tutorial is based on Ruby version 2.4.1"

puts "cbrt(x) returns the cube root of x."
puts "Math.cbrt(9) = " + Math.cbrt(9).to_s
c = Math.cbrt(9).class.to_s
puts Math.cbrt(9).to_s + " is a " + c + "."
print "\n\n"
puts "exp(x) returns  e**x."
puts "exp(4) = " + Math.exp(4).to_s
c = Math.exp(4).class.to_s
puts Math.exp(4).to_s + " is a " + c + "."
print "\n\n"
puts "sqrt(x) returns  the non-negative square root of x."
puts "sqrt(4) = " + Math.sqrt(4).to_s
c = Math.sqrt(4).class.to_s
puts Math.sqrt(4).to_s + " is a " + c + "."
