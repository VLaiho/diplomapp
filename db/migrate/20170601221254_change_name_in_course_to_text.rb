class ChangeNameInCourseToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :courses, :name, :text
  end
end
