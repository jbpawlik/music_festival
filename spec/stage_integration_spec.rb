require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a new stage', {:type => :feature}) do
  it('creates a new stage') do
  visit('/stages')
  click_on('Add a new stage')
  fill_in('name', :with => 'Shrimp Mania')
  click_on('Add')
  expect(page).to have_content('Shrimp Mania')
  end
end