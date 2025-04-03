# add method for the string calculator
class StringCalculator
  #step1
  def add(str)
    return 0 if str == ""
     str.chars.map(&:to_i).sum
  end

  # step2 Allow the add method to handle any amount of numbers.
  def add_multiple_numbers(str)
    str.split(',').map(&:to_i).sum
  end

  #step3 Method to handle newline between Numbers
  def add_method_for_newlines(str)
    str.split(/\s+|\n/).map(&:to_i).sum
  end

  #step4 delimiter, the beginning of the string will contain a separate line
  def delimiter_str(str)
      if str.start_with?("//")
        delimiter_val, numbers =  str.split("\n", 2)
        delimiter = delimiter_val[2..-1]
        #p delimiter
        #p delimiter_val
        #p numbers
      else
        delimiter = " "
      end  
     numbers.split(delimiter).map(&:to_i).sum
  end
end


#input_str = ""  # input = "" o/p = 0
#input_str = "5" # input = "5" o/p = 5
#input_str = "1,5" # input = "1,5" o/p = 6
#input_str = "10,20,30,40,100"
#input_str = "1\n2\n3" # input = "1\n2\n3" o/p = 6
input_str = "//;\n1;2"


s = StringCalculator.new
s.add(input_str)
s.add_multiple_numbers(input_str)
s.add_method_for_newlines(input_str)
p s.delimiter_str(input_str)

