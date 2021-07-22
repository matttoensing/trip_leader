require 'rails_helper'

RSpec.describe 'signup page' do
  describe 'user signup' do
    it 'can sign up by filling out forms' do
      visit new_user_registration_path

      fill_in 'user[username]', with: "BillyJoe"
      fill_in 'user[email]', with: 'Billyjoe@msn.com'
      fill_in 'user[password]', with: 'Password'
      fill_in 'user[password_confirmation]', with: 'Password'
      click_on 'commit'

      user = User.last

      expect(current_path).to eq("/users/#{user.id}")
      expect(user.username).to eq("BillyJoe")
      expect(user.email).to eq('billyjoe@msn.com')
    end

    it 'displays error messages if form not correctly filled out' do
      visit new_user_registration_path

      fill_in 'user[username]', with: "BillyJoe"
      fill_in 'user[password]', with: 'Password'
      fill_in 'user[password_confirmation]', with: 'Password'
      click_on 'commit'

      expect(page).to have_content("Email can't be blank")
    end

    it 'displays an error message when password fields are not the same' do
      visit new_user_registration_path

      fill_in 'user[username]', with: "BillyJoe"
      fill_in 'user[email]', with: 'Billyjoe@msn.com'
      fill_in 'user[password]', with: 'Passwrd'
      fill_in 'user[password_confirmation]', with: 'Password'
      click_on 'commit'

      expect(page).to have_content("Password confirmation doesn't match Password")
    end

    it 'displays an error when password is shorter than 6 characters' do
      visit new_user_registration_path

      fill_in 'user[username]', with: "BillyJoe"
      fill_in 'user[email]', with: 'Billyjoe@msn.com'
      fill_in 'user[password]', with: 'Pass'
      fill_in 'user[password_confirmation]', with: 'Pass'
      click_on 'commit'

      expect(page).to have_content("Password is too short (minimum is 6 characters)")
    end
  end
end
