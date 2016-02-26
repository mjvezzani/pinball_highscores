class HighScore < ActiveRecord::Base
  belongs_to :pin, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
