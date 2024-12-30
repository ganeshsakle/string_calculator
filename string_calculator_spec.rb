require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns zero when string is empty" do
      "".extend(StringCalculator).add == 0
    end
  end

  context "single number" do
    it "Should return 0 for 0" do
      "0".extend(StringCalculator).add == 0
    end

    it "Should return 7 for 7" do
      "7".extend(StringCalculator).add == 7
    end

    it "Should return 35 for 35" do
      "35".extend(StringCalculator).add == 35
    end
  end
end