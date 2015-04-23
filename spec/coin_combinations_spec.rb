require('rspec')
require('coin_combinations')

describe('Fixnum#coin_comb') do
  it('divides the number by 25 to get the number of quarters') do
    expect(75.coin_comb()).to(eq({'quarters'=>3, 'dimes'=>0, 'nickels' => 0, 'pennies' =>0}))
  end
end
