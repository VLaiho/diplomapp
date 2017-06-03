class ChangeStudentsBirthDateToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :students, :birth_date, :text
  end
end
