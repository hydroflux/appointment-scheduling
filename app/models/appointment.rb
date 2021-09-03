class Appointment < ApplicationRecord
  validates :weekday, presence: true
  validates :start_time
  validates :end_time

  belongs_to :user
  belongs_to :coach
  belongs_to :schedule
end
