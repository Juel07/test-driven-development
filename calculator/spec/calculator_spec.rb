require "./lib/calculator.rb"

describe Calculator do
  calculator = Calculator.new

  it "can sum two numbers" do
    expect(calculator.sum(1, 1)).to eq(2)
  end
  it "can subtract two numbers" do
    expect(calculator.subtract(1, 1)).to eq(0)
  end
  it "can multiply two numbers" do
    expect(calculator.multiply(2, 2)).to eq(4)
  end
  it "can divide two numbers" do
    expect(calculator.divide(4, 2)).to eq(2)
  end
end
