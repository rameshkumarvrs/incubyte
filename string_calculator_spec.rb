
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe 'stringcalculator' do
    it "should return 0 for an empty string" do
       calc = StringCalculator.new
       expect(calc.add("")).to eq(0)
    end

    it "return the sum of single digit" do
      calc = StringCalculator.new
      expect(calc.add("5")).to eq(5)
    end 

    it "return the sum of digits of the string" do
      calc = StringCalculator.new
      expect(calc.add("1,5")).to eq(6)
    end 

    it "adds multiple numbers in string" do
      calc = StringCalculator.new
      expect(calc.add_multiple_numbers("10,20,30,40")).to eq(100)
    end  

    it "adds numbers seperated by new lines" do
      calc = StringCalculator.new
      expect(calc.add_method_for_newlines("1\n2\n3")).to eq(6)
    end  

    it "adds numbers seperated by spaces" do
      calc = StringCalculator.new
      expect(calc.add_method_for_newlines("1\n2 3")).to eq(6)
    end  

    it "added the cutom delimeter and sum " do
      calc = StringCalculator.new
      expect(calc.delimiter_str("//;\n1;2")). to eq(3)
    end  

  end

end 