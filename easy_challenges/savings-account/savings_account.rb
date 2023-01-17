# frozen_string_literal: true

module SavingsAccount
  def self.interest_rate(balance)
    case balance
    when balance.negative?
      3.213
    when (0...1000)
      0.5
    when (1000...5000)
      1.621
    when (5000...)
      2.475
    end
  end

  def self.annual_balance_update(balance)
    balance + (balance * interest_rate(balance) / 100)
  end
  # annual_balance_update(200.75)

  def self.years_before_desired_balance(current_balance, desired_balance)
    # first = desired_balance/current_balance
    # second = 1 + (interest_rate(current_balance)/100)
    # fir=Math.log(first)
    # sec=Math.log(second)
    # p  (fir/sec).ceil
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    p years
  end

  years_before_desired_balance(200.75, 214.88)
end
