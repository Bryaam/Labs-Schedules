class ReservationRequest < ApplicationRecord
  enum status: [:pending, :rejected, :accepted]

  belongs_to :user
  belongs_to :course
  belongs_to :laboratory_classroom

  validates :status, presence: true
  validates :estimated_date, presence: true
  validates :starting_time, presence: true
  validates :ending_time, presence: true
  validates :description, presence: true
  validates :person_in_charge, presence: true

  delegate :name, to: :laboratory_classroom, prefix: true
  delegate :name, to: :course, prefix: true

  def event_title
    "#{laboratory_classroom_name} | #{starting_time.strftime("%I:%M %p")} - #{ending_time.strftime("%I:%M %p")}"
  end
end
