class Barber < ApplicationRecord
  has_and_belongs_to_many :services
  has_many :schedules
  has_many :users, through: :schedules

  validates :name, presence: true
  validates :name, uniqueness: true
end
