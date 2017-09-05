puts "This Array tutorial is based on Ruby version 2.4.1"
puts "To create an array, you can use this syntax: \n\"ary = [1, 'two', 3.0] #=> [1, 'two', 3.0]\""
ary = [1, "two", 3.0] #=> [1, "two", 3.0]
puts ary
puts "\n"
puts "An array can also be created by explicitly calling ::new with zero, one (the initial size of the Array) or two arguments (the initial size and a default object)."
puts "ary = Array.new    #=> []"
puts "Array.new(3)       #=> [nil, nil, nil]"
puts "Array.new(3, true) #=> [true, true, true]"
puts "\n"
puts "To create an array with separate objects a block can be passed instead. This method is safe to use with mutable objects such as hashes, strings or other arrays:"
puts "Array.new(4) { Hash.new }  #=> [{}, {}, {}, {}]"
puts "Array.new(4) {|i| i.to_s } #=> [\"0\", \"1\", \"2\", \"3\"]"
puts "\n"
puts "This is also a quick way to build up multi-dimensional arrays:"
puts "empty_table = Array.new(3) { Array.new(3) }"
puts "#=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]"
puts "\n"
puts "An array can also be created by using the Array() method, provided by Kernel, which tries to call to_ary, then to_a on its argument."
puts "Array({:a => \"a\", :b => \"b\"}) #=> [[:a, \"a\"], [:b, \"b\"]]"
ary = Array({:a => "a", :b => "b"}) #=> [[:a, "a"], [:b, "b"]]
print ary.to_s + "\n"
puts ary[0]
puts "\n"
puts "Elements in an array can be retrieved using the #[] " +
	"method. It can take a single integer argument (a " +
	"numeric index), a pair of arguments (start and length) " +
	"or a range. Negative indices start counting from the end, " +
	"with -1 being the last element."
arr = [1, 2, 3, 4, 5, 6]
print "arr" + arr.to_s + "\n"
puts "arr[2] returns: " + arr[2].to_s
puts "arr[-3] returns: " + arr[-3].to_s
puts "arr[2, 3] returns: " + arr[2, 3].to_s
puts "arr[1..4] returns: " + arr[1..4].to_s
puts "arr[1..-3] returns: " + arr[1..-3].to_s
puts "Another way to access a particular array element is by using the at method"
puts "arr.at(0) returns: " + arr.at(0).to_s
puts "To raise an error for indices outside of the array bounds or else to provide a default value when that happens, you can use fetch."
puts "arr.fetch(100, \"oops\") returns: " + arr.fetch(100, "oops")
puts "\n"