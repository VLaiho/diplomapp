class ChangeNameInStudentToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :students, :name, :text 
  end
end
