class College < ApplicationRecord
    has_many :exams
    has_and_belongs_to_many :students
end
