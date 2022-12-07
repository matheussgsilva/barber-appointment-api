class Barber < ApplicationRecord
  belongs_to :services

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :service_id, presence: true
end
