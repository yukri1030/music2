class Top < ActiveRecord::Migration[5.2]
  def change
    create_table :top do |t|
      t.string      :name
      t.text        :text
      t.text        :image
      t.text        :imageurl
      t.integer     :user_id
      t.timestamps null: true
    end
  end
end
