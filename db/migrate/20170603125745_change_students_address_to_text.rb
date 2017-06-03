class ChangeStudentsAddressToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :students, :address, :text
  end
end
