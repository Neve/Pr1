class Base_class
  # To change this template use File | Settings | File Templates.

def self.main
  puts "hello" + " ruby version is " + `/usr/bin/ruby -v`

end
def arrays
  a = [ 1, 'cat', 3.14 ] # array with three elements
a[0]         # access the first element (1)
a[2] = nil # set the third element
            # array now [ 1, 'cat', nil ]
  ## for elements in a
   puts a
  ## end
end

def hashes
 inst_section = {
:cello => 'string',
:clarinet => 'woodwind',
:drum => 'percussion',
:oboe => 'woodwind',
:trumpet => 'brass',
:violin => 'string'
}
#  puts inst_section[:cello]

end
def self.greet

  radiation = 3001
  yield
  3.times { print "Ho! " }
  puts "Danger, Will Robinson" if radiation > 3000

end


 def self.find_all_unpaid
 self.where('paid = 0')
 end

 def total
 sum = 0
 line_items.each {|li| sum += li.total}
 end
 #  def initialize(name)
  # @name = name
   #end

#Base_class  end
end

class Greeter
  attr_accessor :name # create reader and writer methods
  attr_reader :greeting # create reader only
  attr_writer :age # create writer only

def initialize(name)
@name = name
end
def name
@name
end
def name=(new_name)
@name = new_name
end
end

g = Greeter.new("Barney")
puts g.name #=> Barney
g.name = "Betty"
puts g.name #=> Betty

b1 = Base_class.new
  b1.arrays

#main
#arrays
#hashes
Base_class.greet { Base_class.main }
