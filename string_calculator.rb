# add method for the string calculator
class StringCalculator
  def add(str)
    return 0 if str == ""
     str.chars.map(&:to_i).sum
  end
end


input_str = ""  # input = "" o/p = 0
input_str = "5" # input = "5" o/p = 5
input_str = "1,5" # input = "1,5" o/p = 6


s = StringCalculator.new
s.add(input_str)

