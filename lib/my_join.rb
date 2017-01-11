# your code goes here

class Array

  def my_join(arg = '')
    string = ""
    last_index = self.length - 1 
    self.each_with_index do |thing, index|
      if index != last_index
        string += (thing.to_s + arg.to_s)
      else 
        string += thing.to_s
      end
    end
    string
  end


end