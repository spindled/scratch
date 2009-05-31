class Boogeyman < Object
  def initialize(name, location)
    @name = name
    @location = location
    puts "Yes, master?"
  end
  
  def change_location(newlocation)
    @location = newlocation
    puts "I moved to #{newlocation}"
    self.get_info
  end
  
  def change_name(newname)
    @name = newname
    puts "I shall be called #{newname} from now on!"
    self.get_info
  end
  
  def get_info
    puts "I am #{@name} in #{@location}"
  end
  
  # This returns the instance variable since it is the last thing
  # in the method.  This is the "getter" for name
  def name
    @name
  end
  
  # The "setter" for name
  def name=(name)
    @name = name
  end
  
  # Here we let Ruby take care of the getters/setters
  attr_reader :fancyname
  attr_writer :fancyname
end

monster1 = Boogeyman.new("Mister Creepy", "New York, NY")
monster1.change_location("Wyoming")
monster1.change_name("Beezlebub")
monster1.name = "Changeling"
puts monster1.name
monster1.fancyname = "Foo"
puts monster1.fancyname

# Change a class on the fly... wow dangerous!
class String
  def writesize
    puts self.size
  end
end

size_writer = "Tell me my size!"
size_writer.writesize