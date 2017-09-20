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
puts "The special methods first and last will return the first and last elements of an array, respectively."
puts "arr.first returns: " + arr.first.to_s
puts "arr.last returns: " + arr.last.to_s
puts "To return the first n elements of an array, use take"
puts "arr.take(3) returns: " + arr.take(3).to_s
puts "drop does the opposite of take, by returning the elements after n elements have been dropped:"
puts "arr.drop(3) returns: " + arr.drop(3).to_s
puts "\n"
puts "Obtaining Information about an Array"
puts "Arrays keep track of their own length at all times. To query an array about the number of elements it contains, use length, count or size."
puts "browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']"
browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']
puts "browsers.length returns: " + browsers.length.to_s
puts "browsers.count returns: " + browsers.count.to_s
puts "To check whether an array contains any elements at all"
puts "browsers.empty? returns: " + browsers.empty?.to_s
puts "To check whether a particular item is included in the array"
puts "browsers.include?('Konqueror') returns: " + browsers.include?('Konqueror').to_s
puts "browsers.include?('Firefox') returns: " + browsers.include?('Firefox').to_s
puts "\n"
puts "Adding Items to Arrays"
arr = [1, 2, 3, 4]
puts "arr = [1, 2, 3, 4]"
arr.push(5)
puts "arr.push(5) adds an item to the array."
puts "arr.last now returns: " + arr.last.to_s
puts "unshift will add a new item to the beginning of an array."
arr.unshift(0)
puts "arr.unshift(0) adds 0 to the beginning of the array."
puts "arr.first now returns: " + arr.first.to_s
puts "With insert you can add a new element to an array at any position."
arr.insert(3, 'apple')
puts "arr.insert(3, 'apple')"
puts "arr[3] now returns: " + arr[3]
puts "Using the insert method, you can also insert multiple values at once:"
arr.insert(3, 'orange', 'pear', 'grapefruit')
puts "arr.insert(3, 'orange', 'pear', 'grapefruit')"
print "arr now includes: " + arr.to_s + "\n"
puts "\n"
arr =  [1, 2, 3, 4, 5, 6]
print "Created a new array that includes: " + arr.to_s + "\n"
puts "The method pop removes the last element in an array and returns it:"
arr.pop
print "arr.pop returns: " + arr.to_s + "\n"
puts "To retrieve and at the same time remove the first item, use shift:"
arr.shift
print "arr.shift returns: " + arr.to_s + "\n"
puts "To delete an element at a particular index:"
arr.delete_at(2)
print "arr.delete_at(2) returns: " + arr.to_s + "\n"
