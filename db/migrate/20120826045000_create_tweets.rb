class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :message
      t.string :week
      t.integer :bot_id
      t.timestamps
    end
  end
end
