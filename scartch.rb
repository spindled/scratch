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
end

monster1 = Boogeyman.new("Mister Creepy", "New York, NY")
monster1.change_location("Wyoming")
monster1.change_name("Beezlebub")

# Change a class on the fly... wow dangerous!
class String
  def writesize
    puts self.size
  end
end

size_writer = "Tell me my size!"
size_writer.writesize