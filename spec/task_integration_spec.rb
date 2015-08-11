require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('using the site', { :type => :feature }) do
  it('takes the user from the form to the tasks page') do
    visit('/')
    fill_in('description', :with => 'this is a new task')
    click_button('Add Task')
    expect(page).to have_content('Task saved successfully')
  end
end
