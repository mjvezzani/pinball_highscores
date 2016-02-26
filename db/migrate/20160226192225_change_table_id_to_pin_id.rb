class ChangeTableIdToPinId < ActiveRecord::Migration
  def change
    rename_column :high_scores, :table_id, :pin_id
  end
end
