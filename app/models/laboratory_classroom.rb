class LaboratoryClassroom < ApplicationRecord
  has_many :reservation_requests

  validates :name, uniqueness: true
  validates :name, presence: true
end
