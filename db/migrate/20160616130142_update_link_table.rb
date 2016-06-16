class UpdateLinkTable < ActiveRecord::Migration
  def change
    remove_column :links, :hobby_id, :integer
    rename_table :links, :participates
  end
end
