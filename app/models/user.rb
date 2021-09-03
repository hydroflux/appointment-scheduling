class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    has_many :appointments
    has_many :coaches, through: :appointments
end
