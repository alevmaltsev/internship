class University < ApplicationRecord
  has_many :strudents, dependent: :destroy

  validates :name, presence: true
  validates :email, uniqueness: true, email: true

  has_secure_password
end
