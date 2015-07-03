require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit users_path
    click_on 'Add a new coder'
    fill_in 'Name', :with => 'John'
    fill_in 'Short description', :with => 'me'
    fill_in 'Long description', :with => 'awesome coder'
    fill_in 'Title', :with => 'full-stack dev'
    fill_in 'App role', :with => 'admin'
    fill_in 'Phone', :with => '1234567'
    fill_in 'Email', :with => 'a@a.a'
    fill_in 'Code url', :with => 'a.com'
    fill_in 'Hosted url', :with => 'b.com'
    click_on 'Create User'
    expect(page).to have_content 'Portfolios'
  end

  it "gives error when no name is entered" do
    visit new_user_path
    click_on 'Create User'
    expect(page).to have_content 'errors'
  end
end
