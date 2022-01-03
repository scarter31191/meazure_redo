class Student < ApplicationRecord
    has_and_belongs_to_many :colleges
    has_and_belongs_to_many :exams
    

    validates :first_name, :last_name, :password_digest, presence: true
    validates :phone_number, presence: true, length: { maximum: 11 }
    validates :username, presence: true, uniqueness: true
end
