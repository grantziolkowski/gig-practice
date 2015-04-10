class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true
  validates :name, presence: true
  validates :password_digest, presence: true
  has_many :gigs
  has_many :practice_schedules
end
