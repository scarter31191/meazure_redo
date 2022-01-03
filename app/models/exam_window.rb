class ExamWindow < ApplicationRecord
    has_and_belongs_to_many :exams

    validates :start_time, :end_time, presence: true
end
