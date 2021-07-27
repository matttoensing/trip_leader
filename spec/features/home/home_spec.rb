require 'rails_helper'

RSpec.describe 'home page' do
  describe 'page contents' do
    it 'has links to sign up page/login page/and trip reports' do
      visit '/'

      expect(page).to have_link('Home')
      expect(page).to have_link('About Us')
      expect(page).to have_link('Signup')
      expect(page).to have_link('Login')
      expect(page).to have_link('Trip Reports')
    end
  end
end
