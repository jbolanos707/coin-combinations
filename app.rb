require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_comb') do
  coin_hash = params.fetch('cents').to_i().coin_comb()
  coin_types = ['quarters', 'dimes', 'nickels', 'pennies']
  coin_array = []
  coin_types.each() do |coin_type|
    coin_count = coin_hash.fetch(coin_type)
    next_string = coin_count.to_s().concat(' ').concat(coin_type)
    coin_array.push(next_string)
  end
  @change = coin_array.join(', ')
  erb(:coin_combinations)
end
