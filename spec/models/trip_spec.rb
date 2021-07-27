require 'rails_helper'

RSpec.describe Trip do
  describe 'relationships' do
    it { should belong_to(:user)}
  end

  describe  'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:river) }
    it { should validate_presence_of(:section) }
    it { should validate_presence_of(:grade) }
    it { should validate_presence_of(:starting_date) }
    it { should validate_presence_of(:end_date) }
  end
end
