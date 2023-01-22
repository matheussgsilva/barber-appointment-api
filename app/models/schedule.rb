class Schedule < ApplicationRecord
  belongs_to :barber
  belongs_to :service
  belongs_to :user
end