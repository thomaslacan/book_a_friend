class Booking < ApplicationRecord
  belongs_to :moment_id
  belongs_to :user_id
end
