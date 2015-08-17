class User < ActiveRecord::Base
  belongs_to :booking
  has_many :rail_routes, through: :booking
  has_secure_password
  attr_accessible :email, :registration_date, :password, :password_confirmation, :is_admin
  validates :password, length: { minimum: 4 }, presence: true
  validates_uniqueness_of :email
end
