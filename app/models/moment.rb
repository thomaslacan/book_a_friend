class Moment < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  has_many :bookings

  validates :activity, presence: true
  validates :user, presence: true
  validates :time, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :level, presence: true, numericality: true, inclusion: {in: 1..5}
end
