class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :moments
  has_many :bookings
  has_many :activities, through: :moments

  validates :username, presence: true, uniqueness: true
  validates :last_name, presence: true
  validates :first_name, presence: true

  mount_uploader :photo, PhotoUploader
end
