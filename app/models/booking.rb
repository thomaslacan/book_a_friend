class Booking < ApplicationRecord
  belongs_to :moment
  belongs_to :user

  validates :moment, presence: true
  validates :user, presence: true
end
