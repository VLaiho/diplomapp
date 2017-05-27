class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string  :name
      t.string  :birth_date
      t.string  :school_name
      t.string  :address
      t.string  :passport_data
      t.string  :phone_number, :limit => 10
      t.integer  :group_id, index: true
      t.timestamps
    end
  end
end
