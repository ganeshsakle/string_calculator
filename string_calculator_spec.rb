require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns zero when string is empty" do
      expect(StringCalculator.add).to eq(0)
    end
  end
end