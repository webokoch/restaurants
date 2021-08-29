class Restaurant < ApplicationRecord
  validates :name, presence: true, uniquness: true
  validates :type, presence: true,
  validates :description, presence: true,
  validates :location, presence: true,
end
