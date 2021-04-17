class Company < ApplicationRecord
  has_many :specialties, dependent: :destroy

  validates :name, presence: true
  validates :email, uniqueness: true, email: true

  has_secure_password
end
