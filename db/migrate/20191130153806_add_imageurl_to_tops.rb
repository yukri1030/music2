class AddImageurlToTops < ActiveRecord::Migration[5.2]
  def change
    add_column :tops, :imageurl, :text
  end
end
