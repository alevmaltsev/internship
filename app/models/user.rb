class User < ApplicationRecord
  validates :email, uniqueness: true, email: true

  has_secure_password
end
