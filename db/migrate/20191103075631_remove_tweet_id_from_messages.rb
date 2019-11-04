class RemoveTweetIdFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :tweet_id, :integer
  end
end
