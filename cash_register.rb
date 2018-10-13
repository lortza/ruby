# Goals:
# - create array of coin values from an input number (57 --> [25, 25, 5, 1, 1])
# - calculate change for a purchase given
# - provide pick list in english of the qty of each denomination to give the customer in change

class CashRegister
  MONIES = {
    'pennies': 0.01,
    'nickels': 0.05,
    'dimes': 0.10,
    'quarters': 0.25,
    'one dollar bills': 1.00,
    'five dollar bills': 5.00,
    'ten dollar bills': 10.00,
    'twenty dollar bills': 20.00
  }

  def initialize
    @denominations = MONIES.values.sort.reverse
  end

  def make_purchase(item_cost:, amt_paid:)
    make_change(amt_paid - item_cost)
  end

  def make_change(input)
    balance = input
    change = []
    @denominations.each do |denomination|
      until balance == 0 || balance < denomination
        change << denomination
        balance = (balance - denomination).round(2)
      end
    end
    pick_list(change)
  end

  private

  def pick_list(change)
    list = change.each_with_object(Hash.new(0)) { |denom,list| list[MONIES.key(denom)] += 1 }
    to_english(list)
  end

  def to_english(list)
    p "Please distribute:"
    list.each do |denom, qty|
      p "#{qty} #{denom}"
    end
  end

end

register = CashRegister.new
register.make_change(64.03)
register.make_purchase(item_cost: 7.39, amt_paid: 20.00)
