class Exam < ApplicationRecord
  belongs_to :college
  has_and_belongs_to_many :exam_windows
  has_and_belongs_to_many :students
  
  validates :name, presence: true
end
