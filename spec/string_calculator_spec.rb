require_relative '../string_calculator.rb'

RSpec.describe StringCalculator do
  let(:string_calculator) { StringCalculator.new }

  it "should return 0 when an empty string is given" do
    expect(string_calculator.add("")).to eq(0)
  end
end
