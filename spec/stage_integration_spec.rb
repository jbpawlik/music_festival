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

describe('delete a stage', {:type => :feature}) do
  it('deletes an existing stage') do
    visit('/stages')
    click_on('Shrimp Mania')
    click_on('Edit stage')
    click_on('Delete Stage')
    expect(page).to have_no_content('Shrimp Mania')
  end
end