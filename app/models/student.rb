class Student < ApplicationRecord
    has_and_belongs_to_many :colleges

    validates :first_name, :last_name, :phone_number, :password_digest, presence: true
    validates :username, presence: true, uniqueness: true
end
