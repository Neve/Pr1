class SayController < ApplicationController
  def hello
  end

  def goodbye
  end

   def playtime
  @files = Dir.glob('*')
     return @files
   end



end
