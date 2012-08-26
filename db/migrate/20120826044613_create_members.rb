class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :twitter_name
      t.integer :turn
      t.integer :bot_id
      t.timestamps
    end
  end
end
