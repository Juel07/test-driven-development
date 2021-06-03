# https://github.com/makersacademy/skills-workshops/blob/master/test_driven_development/TDD_process_piggy_bank.md

class PiggyBank
  def initialize
    @coins = []
  end

  def insert_money(coin)
    @coins << coin
    @coins.sum
  end

  def check_money
    @coins.sum >= 1 ? "cling" : "silence"
  end

  def get_rich
    @coins
  end
end

# piggy_bank = PiggyBank.new
# p piggy_bank.insert_money(5)  # => 5
# p piggy_bank.check_money  # => "cling"
# p piggy_bank.get_rich  # => [5]
