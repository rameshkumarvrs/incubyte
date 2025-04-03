# add method for the string calculator
class StringCalculator
  class NegativeNumberError < StandardError; end

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
      else
        delimiter = " "
      end  
     values = numbers.split(delimiter).map(&:to_i).sum
  end

  #step5 calling add with negativenumber

  def add_num(str)
     str = str.split(',').map(&:to_i)
     
      # Check for negative numbers and raise an error if any are found
    negative_numbers = str.select { |num| num < 0 }
    if negative_numbers.any?
      raise NegativeNumberError, "Negative numbers not allowed: #{negative_numbers.join(', ')}"
    end

    # Return the sum of the numbers
    str.sum


  end

end


input_str_add = ""  # input = "" o/p = 0
input_str_add_single_number_string = "5" # input = "5" o/p = 5
input_str_add_multiple_number_string = "1,5" # input = "1,5" o/p = 6
#input_str = "10,20,30,40,100"
input_str_add_method_for_newlines = "1\n2\n3" # input = "1\n2\n3" o/p = 6
input_str_delimiter_str = "//;\n1;2" # input = "//;\n1;2" o/p = 3
input = "1,-2,-3,-4" # input = "1,-2,-3,-4" o/p = Negative numbers not allowed: -2, -3, -4


s = StringCalculator.new
s.add(input_str_add)
s.add_multiple_numbers(input_str_add_multiple_number_string)
s.add_method_for_newlines(input_str_add_method_for_newlines)
s.delimiter_str(input_str_delimiter_str)


 begin
  s = StringCalculator.new
  result = s.add_num(input)
rescue StringCalculator::NegativeNumberError => e
  puts e.message  # => "Negative numbers not allowed: -3"
end






