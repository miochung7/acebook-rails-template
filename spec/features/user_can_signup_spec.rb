require 'rails_helper'

RSpec.feature "Signup", type: :feature do
  scenario "Can sign up" do
    visit "/signup"
    fill_in "user_first_name", with: "hello"
    fill_in "user_last_name", with: "hello"
    fill_in "user_username", with: "hello"
    fill_in "user_email", with: "hello"
    fill_in "user_password", with: "hello"
    fill_in "user_password_confirmation", with: "hello"
    click_button "Create User"
    expect(page).to have_content("Login")
  end
end

