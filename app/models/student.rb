class Student < ApplicationRecord
  belongs_to :university
  has_many :student_skills, dependent: :destroy
  has_many :skills, through: :skills

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true, email: true

  has_secure_password
end
