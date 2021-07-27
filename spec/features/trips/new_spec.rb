require 'rails_helper'

RSpec.describe 'new trip page' do
  describe 'form' do
    it 'has a form to fill out a new trip' do
      user = create(:user)

      visit "users/#{user.id}/trips/new"

      fill_in 'name', with: 'WW Halloween Trip'
      fill_in 'river', with: 'Colorado River'
      fill_in 'section', with: "WestWater"
      fill_in 'grade', with: 4
      fill_in 'trip[starting_date]', with: "30/10/2021"
      fill_in 'trip[end_date]', with: "02/11/2021"
      click_on 'Submit'

      trip = Trip.last

      expect(trip.name).to eq('WW Halloween Trip')
      expect(trip.river).to eq('Colorado River')
      expect(trip.section).to eq("WestWater")
      expect(trip.grade).to eq("4")
      expect(trip.starting_date).to eq(Date.new(2021, 10, 30))
      expect(trip.end_date).to eq(Date.new(2021, 11, 02))
    end
  end
end
