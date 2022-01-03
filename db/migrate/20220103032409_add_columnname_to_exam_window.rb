class AddColumnnameToExamWindow < ActiveRecord::Migration[6.0]
  def change
    add_column :exam_windows, :end_time, :datetime
  end
end
