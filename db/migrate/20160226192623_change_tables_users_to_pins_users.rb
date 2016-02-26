class ChangeTablesUsersToPinsUsers < ActiveRecord::Migration
  def change
    rename_column(:tables_users, :table_id, :pin_id)
  end
end
