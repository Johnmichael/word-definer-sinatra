require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Create, Update, and Delete', {:type => :feature}) do
  it('Processes user input and creates the word or phrase') do
    visit('/')
    fill_in('name', :with => 'Code Review')
    fill_in('definition', :with => 'The thing with the objectives')
    click_button('Add Word')
    expect(page).to have_content('Code Review')
  end

  it('Updates the definition') do
    visit('/1')
    click_button('Update')
    fill_in('definition', :with => 'An exercise covering this weeks (and prior) lessons and concepts.')
    click_button('Confirm')
    visit('/1')
    expect(page).to have_content('An exercise covering this weeks (and prior) lessons and concepts.')
  end

  it('Deletes the user input and returns home') do
    visit('/1')
    click_button('Delete')
    expect(page).to have_no_content('Code Review')
  end
end
