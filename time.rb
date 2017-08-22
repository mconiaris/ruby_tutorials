puts "This Time tutorial is based on Ruby version 2.4.1"
puts "\n"
puts "You can create a new instance of Time with ::new. This will use the current system time. ::now is an alias for this. You can also pass parts of the time to ::new such as year, month, minute, etc. When you want to construct a time this way you must pass at least a year. If you pass the year with nothing else time will default to January 1 of that year at 00:00:00 with the current system timezone."
t = Time.new
puts "\n"
puts "This is an eample of a time object being instantiated with \"Time.new\": " + t.to_s
t = Time.new(2017)         #=> 2017-01-01 00:00:00 -0500
puts "Time.new(2017) returns: " + Time.new(2017).to_s
Time.new(2002, 8)     #=> 2017-08-01 00:00:00 -0500
puts "Time.new(2002, 8) returns: " + Time.new(2002, 8).to_s
Time.new(2017, 8, 22) #=> 2017-08-22 00:00:00 -0500
puts "Time.new(2017, 8, 22) returns: " + Time.new(2017, 8, 22).to_s
Time.new(2017, 8, 22, 2, 2, 2, "+02:00") #=> 2002-10-31 02:02:02 +0200
puts "Time.new(2017, 8, 22, 2, 2, 2, \"+02:00\") returns: " + Time.new(2017, 8, 22, 2, 2, 2, "+02:00").to_s
puts "\n"
puts "You can also use gm, local and utc to infer GMT, local and UTC timezones instead of using the current system setting."
puts "Time.new(2017, 8, 22, 2, 2, 2, \"+03:00\") returns: " + Time.new(2017, 8, 22, 2, 2, 2, "+03:00").to_s
puts "Time.new(2017, 8, 22, 2, 2, 2) returns: " + Time.new(2017, 8, 22, 2, 2, 2).to_s
puts "\n"
puts "You can also create a new time using ::at which takes the number of seconds (or fraction of seconds) since the Unix Epoch."
t = Time.at(1503428952) #=> 1989-11-28 00:00:00 -0500
puts "Time.at(1503428952) returns: " + t.to_s
puts "\n"
puts "Working with an instance of Time"
puts "Once you have an instance of Time there is a multitude of things you can do with it. Below are some examples. For all of the following examples, we will work on the assumption that you have done the following: t = Time.new(2017, 8, 22, 3, 16, 0, \"+09:00\")"
t = Time.new(2017, 8, 22, 3, 16, 0, "+09:00")
puts "Was that a monday? (t.monday?)"
puts t.monday?
puts "What year was that again? (t.year)"
puts t.year
puts "Was it daylight savings at the time? (t.dst?)"
puts t.dst?
puts "What’s the day a year later? [t + (60*60*24*365)]"
puts t + (60*60*24*365)
puts "How many seconds was that since the Unix Epoch? (t.to_i)"
puts t.to_i
