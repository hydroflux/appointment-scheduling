class Schedule < ApplicationRecord
  has_many :appointments
  belongs_to :coach
end
