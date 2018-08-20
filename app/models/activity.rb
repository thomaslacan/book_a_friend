class Activity < ApplicationRecord
  has_many :moments
  validates :name, presence: true
  validates :category, presence: true, inclusion: {in: ["Sport", "Culture", "Nature", "Entertainment", "Food", "Others"]}
end
