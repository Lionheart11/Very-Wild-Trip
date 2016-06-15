class ChangeColumnName < ActiveRecord::Migration
  def change
  rename_column :participants, :hobbies_list_id, :hobbies_id
  end
end
