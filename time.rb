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
puts "\n"
puts "You can also do standard functions like compare two times."
t1 = Time.new(2010)
puts "t1 = Time.new(2010)"
t2 = Time.new(2011)
puts "t2 = Time.new(2011)"
puts "t1 == t2 is " + (t1 == t2).to_s #=> false
puts "t1 == t1 is " + (t1 == t1).to_s #=> true
puts "t1 <  t2 is " + (t1 <  t2).to_s #=> true
puts "t1 >  t2 is " + (t1 >  t2).to_s #=> false
puts "Time.new(2010,10,31).between?(t1, t2) is " + Time.new(2010,10,31).between?(t1, t2).to_s #=> true
puts "\n"
puts "Public Class Methods"
puts "\n"
puts "at(time) → time"
puts "Creates a new Time object with the value given by time, the given number of seconds_with_frac, or seconds and microseconds_with_frac since the Epoch. seconds_with_frac and microseconds_with_frac can be an Integer, Float, Rational, or other Numeric. non-portable feature allows the offset to be negative on some systems. If a numeric argument is given, the result is in local time."
puts "Time.at(0) returns: " + Time.at(0).to_s
puts "Time.at(Time.at(0)) returns: " + Time.at(Time.at(0)).to_s
puts "Time.at(946702800) returns: " + Time.at(946702800).to_s
puts "Time.at(-284061600) returns: " + Time.at(-284061600).to_s
puts "\n"
puts "at(seconds_with_frac) → time"
puts "Time.at(946684800.2).usec returns: " + Time.at(946684800.2).usec.to_s
puts "\n"
puts "at(seconds, microseconds_with_frac) → time"
puts "Time.at(946684800, 123456.789).nsec returns: " + Time.at(946684800, 123456.789).nsec.to_s
puts "\n"
puts "gm(year) → time"
puts "Creates a Time object based on given values, interpreted as UTC (GMT). The year must be specified. Other values default to the minimum value for that field (and may be nil or omitted). Months may be specified by numbers from 1 to 12, or by the three-letter English month names. Hours are specified on a 24-hour clock (0..23). Raises an ArgumentError if any values are out of range. Will also accept ten arguments in the order output by #to_a."
puts "Time.gm(2017) returns: " + Time.gm(2017).to_s
puts "gm(year, month) → time"
puts "Time.gm(2017, 8) returns: " + Time.gm(2017, 8).to_s
puts "gm(year, month, day) → time"
puts "Time.gm(2017, 8, 24) returns: " + Time.gm(2017, 8, 24).to_s
puts "gm(year, month, day, hour) → time"
puts "Time.gm(2017, 8, 24, 11) " + Time.gm(2017, 8, 24, 11).to_s
puts "gm(year, month, day, hour, min) → time"
puts "Time.gm(2017, 8, 24, 11, 3) returns: " + Time.gm(2017, 8, 24, 11, 3).to_s
puts "sec_with_frac and usec_with_frac can have a fractional part."
puts "gm(year, month, day, hour, min, sec_with_frac) → time"
puts "Time.gm(2017, 8, 24, 11, 6, 22.3) returns: " + Time.gm(2017, 8, 24, 11, 6, 22.3).to_s

puts "gm(sec, min, hour, day, month, year, dummy, dummy, dummy, dummy) → time"
puts "Time.gm(35, 12, 11, 24, 8, 2017, dummy, dummy, dummy, dummy) returns: " + Time.gm(35, 12, 11, 24, 8, 2017, nil, nil, nil, nil).to_s