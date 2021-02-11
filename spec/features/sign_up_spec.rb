require 'rails_helper'

RSpec.feature "Sign up - ", type: :feature do
  scenario "User can sign up" do
    visit "/"
    click_link "Sign Up"
    expect(current_path).to eq("/signup")
  end
  

  scenario "User enters invalid email address" do
    visit "/signup"
    fill_in 'user_email', with: 'test.com'
    expect(page).to have_content('Please enter a valid email address')
  end


  scenario "User enters signup form" do
    
    visit "/signup"
    fill_in "user_first_name", with: "test"
    fill_in "user_last_name", with: "test"
    fill_in "user_username", with: "test7"
    fill_in "user_email", with: "test@gmail.com"
    fill_in "user_password", with: "test1"
    fill_in "user_password_confirmation", with: "test1"
    click_button"Create User"
    expect(current_path).to eq("/login")
end
    
  
end
