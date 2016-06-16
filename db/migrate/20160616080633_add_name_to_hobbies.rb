class AddNameToHobbies < ActiveRecord::Migration
  def change
    add_column :hobbies, :name, :string
  end
end
