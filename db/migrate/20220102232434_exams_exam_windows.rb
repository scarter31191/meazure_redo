class ExamsExamWindows < ActiveRecord::Migration[6.0]
  def change
    create_join_table :exams, :exam_windows do |t|
      t.index [:exam_id, :exam_window_id]
      t.index [:exam_window_id, :exam_id]
    end
  end
end
