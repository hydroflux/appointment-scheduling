class Coach < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :schedules
  has_many :appointments, through: :schedules
  has_many :users, through: :appointments # not sure about this one
end
