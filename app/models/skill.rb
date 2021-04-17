class Skill < ApplicationRecord
  has_many :student_skills, dependent: :destroy
  has_many :students, through: :skills

  validates :name, presence: true
end
