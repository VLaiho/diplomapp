class ChangePhoneNumberInStudentsTableToTextDataType < ActiveRecord::Migration[5.0]
  def change
  	change_column :students, :phone_number, :text
  end
end
