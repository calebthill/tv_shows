class DropCastsDb < ActiveRecord::Migration
  def change
    drop_table :casts
  end
end
