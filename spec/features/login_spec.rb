require 'rails_helper'

RSpec.feature "Login - ", type: :feature do
  scenario "Redirected to login if not signed up" do
    visit "/"
    click_link "Log In"
    expect(current_path).to eq("/login")
  end

  scenario "A registered user can login" do
    visit "/"
    click_link "Log In"
    fill_in 'username', with: 'test7'
    fill_in 'password', with: 'test7@gmail.com'
    expect(page).to have_content("Profile")
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
