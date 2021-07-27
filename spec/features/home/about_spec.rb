require 'rails_helper'

RSpec.describe 'about page' do
  describe 'contents' do
    it 'shows our mission statement' do
      visit '/home/about'

      expect(page).to have_content("About Us")
      expect(page).to have_content("Our Mission")
    end

    it 'has links to sign up page/login page/and trip reports' do
      visit '/home/about'

      expect(page).to have_link('Home')
      expect(page).to have_link('About Us')
      expect(page).to have_link('Signup')
      expect(page).to have_link('Login')
      expect(page).to have_link('Trip Reports')
    end
  end 
end
