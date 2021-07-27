class Trip < ApplicationRecord
  validates :name, presence: true
  validates :river, presence: true
  validates :section, presence: true
  validates :grade, presence: true
  validates :starting_date, presence: true
  validates :end_date, presence: true

  belongs_to :user
end
