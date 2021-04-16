class Student < ApplicationRecord
  belongs_to :university

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true, email: true

  has_secure_password
end
