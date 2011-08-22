class SayController < ApplicationController
  def hello
  end

  def goodbye
  end

  def playtime
  @files = Dir.glob('*')
     return @files
  end

  def method1 (string)
   result = "Строка сгенерированная методом + #{string.capitalize}"  +string

    return result
   end

end
