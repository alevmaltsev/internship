class Intership < ApplicationRecord
  belongs_to :company
  belongs_to :company_specialty, class_name: 'Company::Specialty'

  validates :name, :start_at, :duration, :busyness, presence: true
end
