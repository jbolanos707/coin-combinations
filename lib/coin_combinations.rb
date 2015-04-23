class Fixnum
  define_method(:coin_comb) do
    number_of_quarters = self/25
    number_of_dimes = self/10
    number_of_nickels = self/5
    # self.%(25) is the remainder when self is divided by 25
    # self.%(25).eql?(0) is true when self is divible by 25, false otherwise
    if self.%(25).eql?(0)
      coin_count = {'quarters' => number_of_quarters, 'dimes' => 0, 'nickels'=> 0, 'pennies' => 0}
    elsif self.%(10).eql?(0)
      coin_count = {'quarters' => 0, 'dimes' => number_of_dimes, 'nickels'=> 0, 'pennies' => 0}
    elsif self.%(5).eql?(0)
      coin_count = {'quarters' => 0, 'dimes' => 0, 'nickels' => number_of_nickels, 'pennies' => 0}
    elsif self.eql?(1)
      coint_count = {'quarters' => 0, 'dimes'=> 0, 'nickels' => 0, 'pennies' => 1}
    end
  end
end
