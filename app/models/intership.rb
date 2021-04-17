class Intership < ApplicationRecord
  belongs_to :company

  validates :name, :start_at, :duration, :busyness, presence: true
end
