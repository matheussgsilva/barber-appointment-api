class Service < ApplicationRecord
  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :duration, presence: true
  
end
