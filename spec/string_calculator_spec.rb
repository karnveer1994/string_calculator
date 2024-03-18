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
end
