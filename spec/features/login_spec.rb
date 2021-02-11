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
end
