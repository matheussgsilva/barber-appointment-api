class User < ApplicationRecord
  devise :database_authenticatable, :validatable
  has_many :schedules
  has_many :barbers, through: :schedules

  def set_api_token
    update(api_token: SecureRandom.hex(13))
  end

end
