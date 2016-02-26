class AddUserIdToHighScores < ActiveRecord::Migration
  def change
    add_column :high_scores, :user_id, :integer
  end
end
