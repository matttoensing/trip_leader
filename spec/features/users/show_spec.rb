require 'rails_helper'

RSpec.describe "user show page" do
  describe 'contents' do
    it 'displays a link to start a new trip' do
      user = create(:user)

      visit "users/#{user.id}"

      expect(page).to have_link("New Trip")
    end

    it 'takes you to a new trip page when clicking on the link' do
      user = create(:user)

      visit "users/#{user.id}"
      click_on "New Trip"

      expect(current_path).to eq("/users/#{user.id}/trips/new")
    end
  end
end
