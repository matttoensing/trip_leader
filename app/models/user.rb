class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true
  validates :username, uniqueness: true, if: -> { self.username.present? }
  validates :email, presence: true
  validates :password, presence: true

  has_many :trips
end
