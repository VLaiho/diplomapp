class ChangeStudentsPassportDataToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :students, :passport_data, :text
  end
end
