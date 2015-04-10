class User < ActiveRecord::Base
  has_secure_password
  has_many :gigs
  has_many :practice_schedules
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  def authentic?(input_password)
    user && user.authenticate(input_password)
  end

end
