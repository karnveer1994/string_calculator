require_relative '../string_calculator.rb'

RSpec.describe StringCalculator do
  let(:string_calculator) { StringCalculator.new }

  it "should return 0 when an empty string is given" do
    expect(string_calculator.add("")).to eq(0)
  end

  it "should return the same number when a single digit string is given" do
    expect(string_calculator.add("1")).to eq(1)
  end

  it "should return the sum of digits when two digits are given separated by comma" do
    expect(string_calculator.add("1,5")).to eq(6)
  end

  it "should return the sum of digits when multiple digits are given separated by comma" do
    expect(string_calculator.add("1,5,6,3")).to eq(15)
  end

  it "should return the sum of digits contains new lines between numbers in string" do
    expect(string_calculator.add("1\n2,3")).to eq(6)
  end

  it "should return the invalid input contains new lines at the end in string" do
    expect(string_calculator.add("1,\n")).to eq("Invalid Input")
  end

  it "should return the sum of digits when a delimiter is given in string" do
    expect(string_calculator.add("//;\n1;2")).to eq(3)
  end

  it "should return the negative numbers not allowed when a negative number is given in string" do
    expect(string_calculator.add("1,-5, -3")).to eq("Negative Numbers not allowed -5,-3")
  end
end
