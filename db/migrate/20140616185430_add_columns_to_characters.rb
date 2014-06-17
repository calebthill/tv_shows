class AddColumnsToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :character_name, :string, null: false
    add_column :characters, :actor_name, :string, null: false
    add_column :characters, :description, :string
  end
end
