class Company::Specialty < ApplicationRecord
  belongs_to :company
  has_many :interships, dependent: :destroy

  validates :name, presence: true
end
