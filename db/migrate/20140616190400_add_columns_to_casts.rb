class AddColumnsToCasts < ActiveRecord::Migration
  def change
    add_column :casts, :television_show_id, :integer, null: false
    add_column :casts, :character_id, :integer, null: false
  end
end
