class ExamsStudents < ActiveRecord::Migration[6.0]
  def change
    create_join_table :exams, :students do |t|
      t.index [:exam_id, :student_id]
      t.index [:student_id, :exam_id]
    end
  end
end
