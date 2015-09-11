

class User < ActiveRecord::Base
  attr_accessible :email, :registration_date, :password, :password_confirmation, :is_admin
  has_many :bookings
  has_secure_password
  validates :password, length: { minimum: 4 }, presence: true
  validates_uniqueness_of :email
end
