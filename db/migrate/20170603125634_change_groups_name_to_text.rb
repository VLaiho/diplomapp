class ChangeGroupsNameToText < ActiveRecord::Migration[5.0]
  def change
  	change_column :groups, :name, :text
  end
end
