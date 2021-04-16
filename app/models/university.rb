class University < ApplicationRecord
  validates :name, presence: true
  validates :email, uniqueness: true, email: true

  has_secure_password
end
