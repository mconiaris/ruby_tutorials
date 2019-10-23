# Sample Program
samp1 = "you are great."

puts samp1.capitalize

print "Hello Ruby!\n"



=begin
I'm going to try to put in
more than one line of
comments here and test it. 
=end

a, b, c, d = 5, 10, 15, 20
puts b


def display_strings(*args)
	args.each { |string|
		puts string
	}
end

puts "\nDisplay Strings Method:"
display_strings("Mike")
display_strings("Mike, Courtney")
display_strings(6, "Mike")