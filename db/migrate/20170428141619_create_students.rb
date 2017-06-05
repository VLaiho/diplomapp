class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.text  :name
      t.text  :birth_date
      t.text  :school_name
      t.text  :address
      t.text  :passport_data
      t.text  :phone_number
      t.integer  :group_id, index: true
      t.timestamps
    end
  end
end
