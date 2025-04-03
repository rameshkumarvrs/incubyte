
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

  end

end 