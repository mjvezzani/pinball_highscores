class ChangeTablesUsersToPinsUsers2 < ActiveRecord::Migration
  def change
    rename_table :tables_users, :pins_users
  end
end
