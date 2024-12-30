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

  context "Two digit number" do
    it "Should return 8 for 4,4" do
      "4,4".extend(StringCalculator).add == 8
    end

    it "Should return 57 for 50,7" do
      "50,7".extend(StringCalculator).add == 57
    end
  end

  context "Three digit number" do
    it "Should return 9 for 2,3,4" do
      "2,3,4".extend(StringCalculator).add == 9
    end

    it "Should return 557 for 50,7,500" do
      "50,7,500".extend(StringCalculator).add == 557
    end
  end

  context "digits with new line delimiter" do
    it "Should return 9 for 2\n" do
      "2\n7".extend(StringCalculator).add == 9
    end

    it "Should return 6 for //;\n1;2;3" do
      "//;\n1;2;3".extend(StringCalculator).add == 557
    end
  end
end