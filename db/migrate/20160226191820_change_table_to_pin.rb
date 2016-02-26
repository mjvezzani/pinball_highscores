class ChangeTableToPin < ActiveRecord::Migration
  def change
    rename_table :tables, :pins
  end
end
