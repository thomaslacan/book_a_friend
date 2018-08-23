class Moment < ApplicationRecord
  belongs_to :user

  has_many :bookings

  validates :activity, presence: true
  validates :user, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :level, presence: true

  geocoded_by :location
   after_validation :geocode, if: :will_save_change_to_location?

   include PgSearch
   pg_search_scope :search_by_activity_and_location,
     against: [ :activity, :location, :category ],
     using: {
       tsearch: { prefix: true }
     }
end
