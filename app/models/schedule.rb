class Schedule < ApplicationRecord
  belongs_to :coach
  has_many :appointments
end
