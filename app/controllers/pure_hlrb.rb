class Boogeyman
  attr_writer :scare_factor
  def initialize (name, location)
    @name = name
    @location = location
    puts "Yes master"
  end
  def change_location (new_location)
    @location = new_location
    puts "I moved to #{new_location}"
    self.get_info
  end
  def change_name (newname)
      @name = newname
    puts "I shall be called #{newname} from on now"
      puts "I can scare up to #{@scare_factor} points"
    self.get_info
  end
  def get_info
    puts "I'm #{@name} in #{@location}"
  end

  def scare_factor
    return str (@scare_factor / 1000) + "fg"

  end

  def hiding_place
    @hiding_place
  end

  def scare_factor=(factor)
    @scare_factor=factor
  end

  def hiding_place=(place)
      @hiding_place=place
  end

end

monster1 = Boogeyman.new("Loopy Lou", "Albuquerque, NM")
 monster1.scare_factor=6000
monster1.change_location("Wayoming")
monster1.change_name("BeezleBee")