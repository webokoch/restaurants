class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, presence: true, uniqueness: true
  validates :food, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :location, presence: true
end
