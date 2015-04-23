require('rspec')
require('coin_combinations')

describe('Fixnum#coin_comb') do
  it('divides the number by 25 to get the number of quarters') do
    expect(75.coin_comb()).to(eq({'quarters'=>3, 'dimes'=>0, 'nickels' => 0, 'pennies' =>0}))
  end

  it('divides the number by 10 to get the number of dimes') do
    expect(20.coin_comb()).to(eq({'quarters' => 0, 'dimes' => 2, 'nickels' => 0, 'pennies' => 0}))
  end

  it('divides the number by 5 to get the number of nickels') do
    expect(5.coin_comb()).to(eq({'quarters' => 0, 'dimes' => 0, 'nickels' => 1, 'pennies' => 0}))
  end

  it('returns 1 penny if called on 1') do
    expect(1.coin_comb()).to(eq({'quarters' => 0, 'dimes' => 0, 'nickels' => 0, 'pennies' => 1}))
  end

  it('returns the optimal combination of coins') do
    expect(117.coin_comb()).to(eq({'quarters' => 4, 'dime'=> 1, 'nickel' => 7, 'pennies' => 2}))
  end
end
