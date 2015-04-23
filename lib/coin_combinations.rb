class Fixnum
  define_method(:coin_comb) do
    amount = self
    number_of_quarters = amount./(25)
    amount = amount - number_of_quarters.*(25)
    number_of_dimes = amount./(10)
    amount = amount - number_of_dimes.*(10)
    number_of_nickels = amount./(5)
    amount = amount - number_of_nickels.*(5)
    number_of_pennies = amount
    coin_count = {'quarters' => number_of_quarters, 'dimes'=> number_of_dimes,
       'nickels' => number_of_nickels, 'pennies' => number_of_pennies}
  end
end
