class Fixnum
  define_method(:coin_comb) do
    amount = self
    coin_types = ['quarters', 'dimes', 'nickels', 'pennies']
    coin_values = {'quarters' => 25, 'dimes' => 10, 'nickels' => 5, 'pennies' => 1}
    coin_counts = {'quarters' => 0, 'dimes' => 0, 'nickels' => 0, 'pennies' => 0}
    i = 0
    until amount.==(0)
      coin_type = coin_types.at(i)
      coin_value = coin_values.fetch(coin_type)
      number_of_coins = amount./(coin_value)
      coin_counts[coin_type] = number_of_coins
      amount = amount - number_of_coins.*(coin_value)
      i = i + 1
    end
    coin_counts
  end
end
