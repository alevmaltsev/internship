class Company::Specialty < ApplicationRecord
  belongs_to :company

  validates :name, presence: true
end