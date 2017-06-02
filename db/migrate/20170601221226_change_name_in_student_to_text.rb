class ChangeNameInStudentToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :students, :name, :text 
  	change_column :students, :birth_date, :text
  	change_column :students, :school_name, :text
  	change_column :students, :address, :text
  	change_column :students, :passport_data, :text
  end
end
