class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :coach
  belongs_to :schedule
end
