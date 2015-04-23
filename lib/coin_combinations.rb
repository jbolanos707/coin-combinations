class Fixnum
  define_method(:coin_comb) do
    number_of_quarters = self/25
    coin_count = {'quarters' => number_of_quarters, 'dimes' => 0, 'nickels'=> 0, 'pennies' => 0}
  end
end
