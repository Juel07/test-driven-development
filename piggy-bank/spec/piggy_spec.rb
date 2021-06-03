require "./lib/piggy_bank"

# coin = 1, 2, 5, 10
describe PiggyBank do
  piggy_bank = PiggyBank.new

  it "can put coins in piggy bank" do
    expect(piggy_bank.insert_money(2)).to eq(2)
  end

  it "can check for money in piggy bank" do
    # piggy_bank = PiggyBank.new
    expect(piggy_bank.check_money).to eq("cling")
  end

  it "can break piggy bank to get coins" do
    # piggy_bank = PiggyBank.new
    expect(piggy_bank.get_rich).to eq([2])
  end
end
