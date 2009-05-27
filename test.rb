begin
	puts "wewt"
end

# a method
def my_new_method(name)
	puts "hey, " + name + ", this is my new method..."
end
my_new_method('Dave')

# split the string to get the array and loop the block
puts
myarray = %w{one two three four}
myarray.each {|element| print "[#{element}]"}

# Proc usage
puts
myproc = Proc.new {|animal| puts "I love #{animal}"}
myproc.call("dogs")

# more Proc usage
puts
def make_show_name(show)
	Proc.new {|host| puts "#{show} with #{host}"}
end

show1 = make_show_name("Timewarp")
show2 = make_show_name("How it's made")

show1.call("David Spindle")
show2.call("Lindsey Spindle")

# yield
def yieldme
	print "1. Enter method. "
	yield
	print "2. Exit method."
	puts
end
yieldme {print "2. Enter block. "}