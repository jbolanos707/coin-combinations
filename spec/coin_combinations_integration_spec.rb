require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combinations path', {:type => :feature}) do
  it('processes user entry and returns change description') do
    visit('/')
    fill_in('cents', :with => 123)
    click_button('Give me change!')
    expect(page).to have_content('4 quarters, 2 dimes, 0 nickels, 3 pennies')
  end
end
