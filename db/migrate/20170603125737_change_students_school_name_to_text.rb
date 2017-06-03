class ChangeStudentsSchoolNameToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :students, :school_name, :text
  end
end
