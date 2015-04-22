require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("scrabble_score path", {:type => :feature}) do
  it("when user enters word program outputs the score") do
    visit('/')
    fill_in('scrabble_word', :with=> 'hello')
    click_button('Send')
    expect(page).to have_content(8)
  end
end
