class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
