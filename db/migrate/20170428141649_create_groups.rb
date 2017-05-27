class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table  :groups do |t|
    	t.string  :name
    	t.integer :course_id, index: true
      t.timestamps
    end
  end
end
